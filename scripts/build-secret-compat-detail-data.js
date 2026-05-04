#!/usr/bin/env node
/**
 * Parses 05_1対15比較図/{BOSS}_*_vs_その他15タイプ.md → window.SECRET_COMPAT_PAIR_DETAIL
 * Usage:
 *   node scripts/build-secret-compat-detail-data.js --all [--write]
 *   node scripts/build-secret-compat-detail-data.js --boss=SFMC [--write]
 */
'use strict';

const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');
const DOCS_DIR = path.join(ROOT, 'ドキュメント', '05_1対15比較図');
const OUT_FILE = path.join(ROOT, 'fittness_type-main', 'secret-compat-detail-data.js');

const BOSS_ORDER = [
  'SFMC', 'SFMH', 'SFVC', 'SFVH', 'SPMC', 'SPMH', 'SPVC', 'SPVH',
  'GFMC', 'GFMH', 'GFVC', 'GFVH', 'GPMC', 'GPMH', 'GPVC', 'GPVH',
];

const VS_HEADER_RE = /^## vs \[([A-Z]{4})\]\s*[^\r\n]*(?:\r?\n|$)/gm;
const SUB_HEADER_RE = /^### (.+)\s*$/gm;

/** @typedef {{ t: 'p'|'ul'|'ol'|'pre'|'q', text?: string, items?: string[], lines?: string[] }} Block */

/** @returns {Record<string,string>} bossCode → absolute path */
function discoverBossFiles() {
  let names = [];
  try {
    names = fs.readdirSync(DOCS_DIR).filter((f) => /_vs_その他15タイプ\.md$/i.test(f));
  } catch (e) {
    console.error('Cannot read docs dir:', DOCS_DIR, e.message);
    process.exit(1);
  }
  const map = {};
  for (const f of names) {
    const m = f.match(/^([A-Z]{4})_/);
    if (!m) continue;
    map[m[1]] = path.join(DOCS_DIR, f);
  }
  return map;
}

/**
 * @param {string} body
 * @returns {Block[]}
 */
function parseBodyToBlocks(body) {
  const lines = body.replace(/\r\n/g, '\n').replace(/^\uFEFF/, '').split('\n');
  /** @type {Block[]} */
  const blocks = [];
  /** @type {string[]} */
  let paragraph = [];

  function flushP() {
    const t = paragraph.join('\n').trim();
    if (t) blocks.push({ t: 'p', text: t });
    paragraph = [];
  }

  let i = 0;
  while (i < lines.length) {
    const line = lines[i];
    const t = line.trim();

    if (!t) {
      flushP();
      i += 1;
      continue;
    }

    if (/^\|.+\|$/.test(t)) {
      flushP();
      /** @type {string[]} */
      const rows = [];
      while (i < lines.length && /^\|.+\|$/.test(lines[i].trim())) {
        rows.push(lines[i].trim());
        i += 1;
      }
      if (rows.length) blocks.push({ t: 'pre', text: rows.join('\n') });
      continue;
    }

    if (t.startsWith('>')) {
      flushP();
      /** @type {string[]} */
      const ql = [];
      while (i < lines.length && lines[i].trim().startsWith('>')) {
        ql.push(lines[i].trim().replace(/^>\s?/, '').trim());
        i += 1;
      }
      blocks.push({ t: 'q', lines: ql });
      continue;
    }

    if (/^\d+\.\s/.test(t)) {
      flushP();
      /** @type {string[]} */
      const items = [];
      while (i < lines.length) {
        const lt = lines[i].trim();
        if (/^\d+\.\s/.test(lt)) {
          items.push(lt.replace(/^\d+\.\s+/, '').trim());
          i += 1;
        } else if (!lt) {
          i += 1;
        } else break;
      }
      if (items.length) blocks.push({ t: 'ol', items });
      continue;
    }

    if (/^[-*]\s/.test(t)) {
      flushP();
      /** @type {string[]} */
      const items = [];
      while (i < lines.length) {
        const lt = lines[i].trim();
        if (/^[-*]\s/.test(lt)) {
          items.push(lt.replace(/^[-*]\s+/, '').trim());
          i += 1;
        } else if (!lt) {
          i += 1;
        } else break;
      }
      if (items.length) blocks.push({ t: 'ul', items });
      continue;
    }

    if (/^(---+|\*\*\*+)\s*$/.test(t)) {
      flushP();
      i += 1;
      continue;
    }

    paragraph.push(line);
    i += 1;
  }
  flushP();
  return blocks;
}

/**
 * @param {string} raw
 * @returns {string|null} canonical section key or null → extraSections
 */
function classifyHeading(raw) {
  const t = raw.trim();
  if (/軸の一致/.test(t)) return 'axisMatch';
  if (/軸の相違/.test(t)) return 'axisDiff';
  if (/ハミング/.test(t)) return 'hamming';
  if (/D3\s*相性/.test(t) || /公式コンテンツ/.test(t)) return 'd3Official';
  
  // 新しいA案の見出し
  if (/相性解説/.test(t)) return 'highlight';
  if (/一緒に楽しむコツ/.test(t)) return 'enjoyTips';
  if (/摩擦ポイント/.test(t)) return 'caution';
  // 04 is removed

  // 従来のフォールバック見出し
  if (/目的/.test(t) && (/持ち方/.test(t) || /ポイント/.test(t))) return 'purpose';
  if (/誘う|誘い方|声のかけ/.test(t)) return 'invite';
  if (/運動プラン/.test(t) || /\(\s*5つ\s*\)/.test(t)) return 'plans';
  if (/タイプ差/.test(t) || /ポイントと解説/.test(t) || /から見た/.test(t)) return 'typeInsight';
  if (/衝突しやすい|衝突.*ポイント/.test(t) || (/衝突/.test(t) && /二人/.test(t))) return 'togetherBad';
  if (/楽しめる/.test(t)) return 'togetherGood';
  return null;
}

/** @typedef {{ heading: string, blocks: Block[] }} ParsedSection */

/**
 * Pair body excluding outer ## divider lines
 * @param {string} pairBody
 * @returns {{ sections: Partial<Record<string, ParsedSection[]>>, extras: ParsedSection[] }}
 */
function parsePairSubsections(pairBody) {
  const matches = [...pairBody.matchAll(SUB_HEADER_RE)];
  /** @type {Partial<Record<string, ParsedSection[]>>} */
  const sections = {};
  /** @type {ParsedSection[]} */
  const extras = [];

  for (let idx = 0; idx < matches.length; idx += 1) {
    const m = matches[idx];
    const title = String(m[1]).trim();
    const start = Number(m.index) + m[0].length;
    const end = idx + 1 < matches.length ? Number(matches[idx + 1].index) : pairBody.length;
    const raw = pairBody.slice(start, end).trim();
    const blocks = parseBodyToBlocks(raw.replace(/\s*---+\s*$/, '').trim());

    const canon = classifyHeading(title);
    const sectionObj = { heading: title, blocks };
    if (canon == null) {
      extras.push(sectionObj);
      continue;
    }
    if (!sections[canon]) sections[canon] = [];
    sections[canon].push(sectionObj);
  }

  return { sections: sections, extras: extras };
}

/**
 * Merge duplicate canon sections into one ParsedSection list of blocks flatten
 * @param {Partial<Record<string, ParsedSection[]>>} sections
 */
function mergeSectionsForOutput(sections) {
  /** @type {Partial<Record<string, { headings: string[], blocks: Block[] }>>} */
  const out = {};
  for (const canon of Object.keys(sections)) {
    const parts = sections[canon];
    if (!parts || !parts.length) continue;
    const headings = [];
    /** @type {Block[]} */
    const blocks = [];
    for (const p of parts) {
      headings.push(p.heading);
      blocks.push(...p.blocks);
    }
    out[canon] = { headings: headings, blocks: blocks };
  }
  return out;
}

/**
 * Parse one markdown file → map otherCode → pair detail
 * @param {string} md
 * @param {string} bossExpected
 */
function parseBossMarkdown(md, bossExpected) {
  VS_HEADER_RE.lastIndex = 0;
  const heads = [...md.matchAll(VS_HEADER_RE)];
  if (!heads.length) return { boss: bossExpected, peers: {}, missing: [], errors: [`no ## vs blocks for ${bossExpected}`] };

  /** @type {Record<string, any>} */
  const peers = {};
  /** @type {string[]} */
  const missing = [];

  /** @type {string[]} */
  const errors = [];

  for (let i = 0; i < heads.length; i += 1) {
    const h = heads[i];
    const otherCode = h[1];
    const headerLen = String(h[0]).length;
    const startBody = Number(h.index) + headerLen;
    const endBody = i + 1 < heads.length ? Number(heads[i + 1].index) : md.length;
    const body = md.slice(startBody, endBody);

    let parsedPair;
    try {
      const { sections: secMap, extras } = parsePairSubsections(body);
      const merged = mergeSectionsForOutput(secMap);
      peers[otherCode] = {
        otherCode,
        bossCode: bossExpected,
        sections: merged,
        extraSections: extras,
      };
      parsedPair = peers[otherCode];
    } catch (e) {
      errors.push(`${bossExpected} × ${otherCode}: ${/** @type {Error} */(e).message}`);
      continue;
    }

    if (parsedPair && bossExpected !== otherCode) {
      if (!(parsedPair.sections.typeInsight || parsedPair.sections.highlight) || !parsedPair.sections.axisMatch)
        missing.push(`${bossExpected}×${otherCode}: thin sections`);
    }
  }

  return { boss: bossExpected, peers, missing, errors };
}

function normalizeDetailMap(prev, nextBossKey, peers) {
  const base = typeof prev === 'object' && prev ? { ...prev } : {};
  base[nextBossKey] = peers;
  return base;
}

function loadExistingGenerated() {
  try {
    const src = fs.readFileSync(OUT_FILE, 'utf8');
    const m = src.match(/window\.SECRET_COMPAT_PAIR_DETAIL\s*=\s*(\{[\s\S]*?\});?\s*(?:\/\/|$)/);
    // Fall back looser parse
    if (!m) {
      const at = src.indexOf('window.SECRET_COMPAT_PAIR_DETAIL');
      if (at < 0) return null;
      const brace = src.indexOf('{', at);
      if (brace < 0) return null;
      // naive balance find
      let depth = 0;
      let end = -1;
      for (let i = brace; i < src.length; i += 1) {
        const c = src[i];
        if (c === '{') depth += 1;
        else if (c === '}') {
          depth -= 1;
          if (depth === 0) {
            end = i + 1;
            break;
          }
        }
      }
      if (end < 0) return null;
      return Function('"use strict"; return (' + src.slice(brace, end) + ');')();
    }
    return Function('"use strict"; return (' + m[1] + ');')();
  } catch {
    return null;
  }
}

function emitJsFile(detail) {
  const banner =
    '/* eslint-disable */\n' +
    '/**\n' +
    ' * AUTO-GENERATED by scripts/build-secret-compat-detail-data.js — do not edit by hand.\n' +
    ' * Regenerate: node scripts/build-secret-compat-detail-data.js --all --write\n' +
    ' */\n';
  const json = JSON.stringify(detail, null, 0);
  return banner + 'window.SECRET_COMPAT_PAIR_DETAIL = ' + json + ';\n';
}

function main() {
  const argv = process.argv.slice(2);
  const wantAll = argv.includes('--all');
  const wantWrite = argv.includes('--write');
  const bossArg = argv.find((a) => a.startsWith('--boss='));
  const bossOnly = bossArg ? bossArg.slice('--boss='.length).toUpperCase() : null;

  if (!wantAll && !bossOnly) {
    console.error('Usage: node scripts/build-secret-compat-detail-data.js [--all|--boss=CODE] [--write]');
    process.exit(1);
  }

  const fileMap = discoverBossFiles();
  /** @type {string[]} */
  const bosses = wantAll
    ? BOSS_ORDER.slice()
    : [bossOnly].filter(Boolean);

  for (const b of bosses) {
    if (!BOSS_ORDER.includes(b)) {
      console.error('Unknown boss code:', b);
      process.exit(1);
    }
    if (!fileMap[b]) {
      console.error('Missing markdown for boss', b, 'in', DOCS_DIR);
      process.exit(1);
    }
  }

  let merged = wantAll ? {} : loadExistingGenerated() || {};

  for (const boss of bosses) {
    const md = fs.readFileSync(fileMap[boss], 'utf8');
    const { peers, errors, missing } = parseBossMarkdown(md, boss);
    if (errors.length) {
      console.error('Parse errors:', errors);
      process.exit(1);
    }
    const expectedOthers = BOSS_ORDER.filter((c) => c !== boss);
    for (const oc of expectedOthers) {
      if (!peers[oc]) console.warn('WARN missing pair', boss, '×', oc);
    }
    if (missing.length) console.warn('WARN thin sections count', missing.length, 'for', boss);
    merged = normalizeDetailMap(merged, boss, peers);
  }

  const out = emitJsFile(merged);
  if (wantWrite) {
    fs.writeFileSync(OUT_FILE, out, 'utf8');
    console.log('Wrote', OUT_FILE, 'bytes', Buffer.byteLength(out, 'utf8'));
  } else {
    process.stdout.write(out);
  }
}

main();
