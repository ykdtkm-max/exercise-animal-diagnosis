/**
 * Seed exercise diagnosis content tables from static JS (`types-data.js`, `data.js`,
 * `secret-compat-detail-data.js`, `chars-data.js` の `AXIS_INFO`).
 *
 * Requires: SUPABASE_URL, and either SUPABASE_SERVICE_ROLE_KEY (recommended) or
 * SUPABASE_ANON_KEY — the latter only works if RLS allows writes (e.g. temporary seed policies).
 *
 *   npm install
 *   cp .env.example .env   # fill in keys
 *   npm run seed:exercise:dry    # sanity check without network
 *   npm run seed:exercise
 */
import fs from 'fs';
import path from 'path';
import vm from 'vm';
import { createClient } from '@supabase/supabase-js';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = path.resolve(__dirname, '..');
const MAIN_DIR = path.join(REPO_ROOT, 'fittness_type-main');

const TYPES_PATH = path.join(MAIN_DIR, 'types-data.js');
const SECRET_PATH = path.join(MAIN_DIR, 'secret-compat-detail-data.js');
const DATA_PATH = path.join(MAIN_DIR, 'data.js');
const CHARS_PATH = path.join(MAIN_DIR, 'chars-data.js');

function loadWindowScript(filePath) {
  const ctx = vm.createContext({ window: {}, console });
  vm.runInContext(fs.readFileSync(filePath, 'utf8'), ctx);
  return ctx.window;
}

function safeArr(x) {
  return Array.isArray(x) ? x : [];
}

function blocksFromSection(sec) {
  if (!sec || !sec.blocks) return [];
  return sec.blocks;
}

function extraFromPeer(peer) {
  const ex = peer && peer.extraSections;
  if (ex == null) return [];
  return Array.isArray(ex) ? ex : [];
}

/** Markdown 側の歴史的誤記: コード末尾が H のものを D に揃える (例: GFMH→GFMD) */
function normalizeAnimalCode(raw) {
  const c = String(raw || '')
    .trim()
    .toUpperCase();
  if (c.length === 4 && c[3] === 'H') return c.slice(0, 3) + 'D';
  return c;
}

async function main() {
  const dry = process.argv.includes('--dry-run');
  const url = process.env.SUPABASE_URL || '';
  const apiKey =
    process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.SUPABASE_ANON_KEY || '';

  const wTypes = loadWindowScript(TYPES_PATH);
  const wSecret = loadWindowScript(SECRET_PATH);
  const wData = loadWindowScript(DATA_PATH);
  const wChars = loadWindowScript(CHARS_PATH);

  const TYPES = wTypes.EXERCISE_V2_TYPES;
  const ORDER = wData.EXERCISE_V2_TYPE_ORDER;
  const LABELS = wData.EXERCISE_V2_OPTION_LABELS;
  const QUESTIONS = wData.EXERCISE_V2_QUESTIONS;
  const DETAIL = wSecret.SECRET_COMPAT_PAIR_DETAIL;
  const AXIS_INFO = wChars.AXIS_INFO;

  if (!TYPES || !ORDER || !QUESTIONS || !DETAIL || !LABELS) {
    throw new Error('Failed to parse exercise static data (missing globals).');
  }
  if (!AXIS_INFO || !Array.isArray(AXIS_INFO) || !AXIS_INFO.length) {
    throw new Error('Failed to parse chars-data.js (AXIS_INFO).');
  }

  /** @type {import('@supabase/supabase-js').SupabaseClient} */
  let supabase = null;
  if (!dry) {
    if (!url || !apiKey) {
      console.error(
        'Set SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY or SUPABASE_ANON_KEY (or pass --dry-run).',
      );
      process.exit(1);
    }
    supabase = createClient(url, apiKey, {
      auth: { persistSession: false, autoRefreshToken: false },
    });
  }

  const animals = ORDER.map((code, i) => ({
    code,
    type_name: TYPES[code].type_name,
    sort_order: i + 1,
  }));

  const profiles = ORDER.map((code) => {
    const t = TYPES[code];
    const good0 = safeArr(t.compatible_types && t.compatible_types.good)[0] || {};
    const bad0 = safeArr(t.compatible_types && t.compatible_types.bad)[0] || {};
    return {
      animal_code: code,
      tagline: t.tagline || null,
      catchphrases: safeArr(t.catchphrases),
      concept_title: t.concept_title || null,
      concept_body: t.concept || null,
      continuation_title: t.continuation_title || null,
      continuation_body: t.continuation_text || null,
      compat_pill_good_code: good0.code || null,
      compat_pill_good_reason: good0.reason || null,
      compat_pill_bad_code: bad0.code || null,
      compat_pill_bad_reason: bad0.reason || null,
    };
  });

  const motionGuides = ORDER.map((code) => {
    const t = TYPES[code];
    return {
      animal_code: code,
      suit_summary_title: t.suit_title || null,
      suit_summary_body: t.suit_text || null,
      unsuited_summary_title: t.unsuited_title || null,
      unsuited_summary_body: t.unsuited_text || null,
      suit_plans: safeArr(t.suit_plans),
      unsuited_plans: safeArr(t.unsuited_plans),
    };
  });

  /** @type {object[]} */
  const compatRows = [];
  for (const fromCodeRaw of Object.keys(DETAIL)) {
    const fromCode = normalizeAnimalCode(fromCodeRaw);
    const peers = DETAIL[fromCodeRaw];
    for (const toCodeRaw of Object.keys(peers)) {
      const toCode = normalizeAnimalCode(toCodeRaw);
      if (fromCode === toCode) continue;
      const peer = peers[toCodeRaw];
      const sec = peer && peer.sections;
      compatRows.push({
        from_animal_code: fromCode,
        to_animal_code: toCode,
        compat_explanation_blocks: blocksFromSection(sec && sec.highlight),
        enjoy_tips_blocks: blocksFromSection(sec && sec.enjoyTips),
        friction_blocks: blocksFromSection(sec && sec.caution),
        extra_sections: extraFromPeer(peer),
      });
    }
  }

  const questionRows = QUESTIONS.map((q) => ({
    order_index: q.orderIndex,
    axis: q.axis,
    polarity: q.polarity,
    question_text: q.text,
  }));

  const settingsRows = [
    { setting_key: 'option_labels', setting_value: LABELS },
    { setting_key: 'axis_info', setting_value: AXIS_INFO },
  ];

  console.log('Dry run:', dry);
  console.log('Counts — animals:', animals.length, 'profiles:', profiles.length, 'motion:', motionGuides.length, 'compat_pairs:', compatRows.length, 'questions:', questionRows.length);

  if (dry) process.exit(0);

  async function flush(name, rows, conflict) {
    const batch = 150;
    for (let i = 0; i < rows.length; i += batch) {
      const chunk = rows.slice(i, i + batch);
      const { error } = await supabase.from(name).upsert(chunk, {
        onConflict: conflict,
        ignoreDuplicates: false,
      });
      if (error) throw new Error(`${name} upsert: ${error.message}`);
    }
  }

  await flush('exercise_animals', animals, 'code');
  await flush('exercise_animal_profiles', profiles, 'animal_code');
  await flush('exercise_animal_motion_guides', motionGuides, 'animal_code');
  await flush('exercise_animal_compat_pairs', compatRows, 'from_animal_code,to_animal_code');
  await flush('exercise_questions', questionRows, 'order_index');
  await flush('exercise_app_settings', settingsRows, 'setting_key');

  console.log('Seed finished OK.');
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
