/**
 * Prints SQL (UTF-8) for seeding exercise_* tables — use with Supabase SQL editor or MCP execute_sql.
 * Usage: node scripts/generate-exercise-seed-sql.mjs > supabase/seed_exercise_content.sql
 */
import fs from 'fs';
import path from 'path';
import vm from 'vm';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MAIN = path.join(__dirname, '..', 'fittness_type-main');

function loadWindowScript(filePath) {
  const ctx = vm.createContext({ window: {}, console });
  vm.runInContext(fs.readFileSync(filePath, 'utf8'), ctx);
  return ctx.window;
}

function safeArr(x) {
  return Array.isArray(x) ? x : [];
}

function dollarJsonb(obj) {
  const j = JSON.stringify(obj);
  const tag = 'j' + Math.random().toString(36).slice(2, 10);
  return '$' + tag + '$' + j + '$' + tag + '$::jsonb';
}

function normalizeAnimalCode(raw) {
  const c = String(raw || '')
    .trim()
    .toUpperCase();
  if (c.length === 4 && c[3] === 'H') return c.slice(0, 3) + 'D';
  return c;
}

function sqlText(s) {
  if (s == null) return 'NULL';
  return "'" + String(s).replace(/'/g, "''") + "'";
}

const wTypes = loadWindowScript(path.join(MAIN, 'types-data.js'));
const wSecret = loadWindowScript(path.join(MAIN, 'secret-compat-detail-data.js'));
const wData = loadWindowScript(path.join(MAIN, 'data.js'));

const TYPES = wTypes.EXERCISE_V2_TYPES;
const ORDER = wData.EXERCISE_V2_TYPE_ORDER;
const LABELS = wData.EXERCISE_V2_OPTION_LABELS;
const QUESTIONS = wData.EXERCISE_V2_QUESTIONS;
const DETAIL = wSecret.SECRET_COMPAT_PAIR_DETAIL;

const lines = [];
for (let i = 0; i < ORDER.length; i += 1) {
  const code = ORDER[i];
  const t = TYPES[code];
  lines.push(
    `INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES (${sqlText(code)}, ${sqlText(t.type_name)}, ${i + 1}) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;`,
  );
}
lines.push('');

for (const code of ORDER) {
  const t = TYPES[code];
  const good0 = safeArr(t.compatible_types && t.compatible_types.good)[0] || {};
  const bad0 = safeArr(t.compatible_types && t.compatible_types.bad)[0] || {};
  lines.push(`INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    ${sqlText(code)}, ${sqlText(t.tagline || null)}, ${dollarJsonb(safeArr(t.catchphrases))},
    ${sqlText(t.concept_title || null)}, ${sqlText(t.concept || null)},
    ${sqlText(t.continuation_title || null)}, ${sqlText(t.continuation_text || null)},
    ${sqlText(good0.code || null)}, ${sqlText(good0.reason || null)},
    ${sqlText(bad0.code || null)}, ${sqlText(bad0.reason || null)}
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;`);
}
lines.push('');

for (const code of ORDER) {
  const t = TYPES[code];
  lines.push(`INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    ${sqlText(code)},
    ${sqlText(t.suit_title || null)}, ${sqlText(t.suit_text || null)},
    ${sqlText(t.unsuited_title || null)}, ${sqlText(t.unsuited_text || null)},
    ${dollarJsonb(safeArr(t.suit_plans))}, ${dollarJsonb(safeArr(t.unsuited_plans))}
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;`);
}
lines.push('');

function blocksFromSection(sec) {
  if (!sec || !sec.blocks) return [];
  return sec.blocks;
}

for (const fromCodeRaw of Object.keys(DETAIL)) {
  const fromCode = normalizeAnimalCode(fromCodeRaw);
  const peers = DETAIL[fromCodeRaw];
  for (const toCodeRaw of Object.keys(peers)) {
    const toCode = normalizeAnimalCode(toCodeRaw);
    if (fromCode === toCode) continue;
    const peer = peers[toCodeRaw];
    const sec = peer && peer.sections;
    const extra = peer && peer.extraSections;
    lines.push(`INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      ${sqlText(fromCode)}, ${sqlText(toCode)},
      ${dollarJsonb(blocksFromSection(sec && sec.highlight))},
      ${dollarJsonb(blocksFromSection(sec && sec.enjoyTips))},
      ${dollarJsonb(blocksFromSection(sec && sec.caution))},
      ${dollarJsonb(Array.isArray(extra) ? extra : [])}
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;`);
  }
}
lines.push('');

for (const q of QUESTIONS) {
  const pol =
    typeof q.polarity === 'string'
      ? q.polarity.trim().charAt(0)
      : String(q.polarity || '').trim().charAt(0);
  lines.push(
    `INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (${q.orderIndex}, ${q.axis}, ${sqlText(pol)}, ${sqlText(q.text)}) ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;`,
  );
}
lines.push('');

lines.push(
  `INSERT INTO public.exercise_app_settings (setting_key, setting_value) VALUES ('option_labels', ${dollarJsonb(LABELS)}) ON CONFLICT (setting_key) DO UPDATE SET setting_value = EXCLUDED.setting_value;`,
);

console.log(lines.join('\n'));
