#!/usr/bin/env node
/**
 * 4軸目の極コード D→H、および末尾が D の8タイプコードを H に一括変更する。
 * node scripts/migrate-axis-d-to-h.js --apply   （適用）
 * node scripts/migrate-axis-d-to-h.js           （ドライラン件数のみ）
 */
'use strict';

const fs = require('fs');
const path = require('path');

const ROOT = path.join(__dirname, '..');

/** 末尾 D のタイプのみ。長いコードから置換しないと衝突は起きない */
const CODE_CHAIN = [
  ['GPVH', 'GPVH'],
  ['GPMH', 'GPMH'],
  ['GFVH', 'GFVH'],
  ['GFMH', 'GFMH'],
  ['SPVH', 'SPVH'],
  ['SPMH', 'SPMH'],
  ['SFVH', 'SFVH'],
  ['SFMH', 'SFMH'],
];

const SKIP_DIRS = new Set(['node_modules', '.git', '.vercel']);

function migrateString(s) {
  let out = s;
  for (const [from, to] of CODE_CHAIN) {
    out = out.split(from).join(to);
  }
  return out;
}

function walkFiles(dir, out) {
  let names;
  try {
    names = fs.readdirSync(dir);
  } catch {
    return;
  }
  for (const n of names) {
    const full = path.join(dir, n);
    let st;
    try {
      st = fs.statSync(full);
    } catch {
      continue;
    }
    if (st.isDirectory()) {
      if (SKIP_DIRS.has(n)) continue;
      walkFiles(full, out);
      continue;
    }
    const ext = path.extname(n).toLowerCase();
    if (/\.(js|html|md|json|css|svg|txt)$/.test(ext) || ext === '') {
      out.push(full);
    }
  }
}

function main() {
  const apply = process.argv.includes('--apply');
  const allFiles = [];
  walkFiles(ROOT, allFiles);

  let changed = 0;
  for (const fp of allFiles) {
    if (fp.includes(`${path.sep}node_modules${path.sep}`)) continue;
    let raw;
    try {
      raw = fs.readFileSync(fp, 'utf8');
    } catch {
      continue;
    }
    const next = migrateString(raw);
    if (next !== raw) {
      changed += 1;
      if (apply) fs.writeFileSync(fp, next, 'utf8');
    }
  }

  // BOSS Markdown ファイル名のリネーム（*_vs_その他15タイプ.md の先頭4文字）
  const docsDir = path.join(ROOT, 'ドキュメント', '05_1対15比較図');
  let renames = 0;
  if (fs.existsSync(docsDir) && apply) {
    const files = fs.readdirSync(docsDir);
    for (const f of files) {
      if (!/_vs_その他15タイプ\.md$/i.test(f)) continue;
      const prefix = f.slice(0, 4);
      const hit = CODE_CHAIN.find(([a]) => a === prefix);
      if (!hit) continue;
      const newName = hit[1] + f.slice(4);
      const fromPath = path.join(docsDir, f);
      const toPath = path.join(docsDir, newName);
      if (fromPath !== toPath) {
        fs.renameSync(fromPath, toPath);
        renames += 1;
      }
    }
  }

  console.log(apply ? 'APPLY:' : 'DRY RUN (use --apply):');
  console.log(`  Files with code migrations: ${changed}`);
  if (apply) console.log(`  Markdown boss files renamed: ${renames}`);
}

main();
