cat << 'EOF' > unify-tone.js
const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');

const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
if (!match) {
  console.error('Could not find EXERCISE_V2_TYPES in types-data.js');
  process.exit(1);
}

let data = JSON.parse(match[1]);

function replaceTone(text) {
  if (!text) return text;
  let t = text;
  
  // Specific common phrases
  t = t.replace(/最適です/g, '最適だ');
  t = t.replace(/活動です/g, '活動だ');
  t = t.replace(/重要です/g, '重要だ');
  t = t.replace(/必要です/g, '必要だ');
  t = t.replace(/NGです/g, 'NGだ');
  t = t.replace(/特徴です/g, '特徴だ');
  t = t.replace(/傾向です/g, '傾向だ');
  t = t.replace(/前提です/g, '前提だ');
  t = t.replace(/環境です/g, '環境だ');
  t = t.replace(/イベントです/g, 'イベントだ');
  t = t.replace(/競技です/g, '競技だ');
  t = t.replace(/スポーツです/g, 'スポーツだ');
  t = t.replace(/スタイルです/g, 'スタイルだ');
  t = t.replace(/時間です/g, '時間だ');
  t = t.replace(/状態です/g, '状態だ');
  t = t.replace(/関係です/g, '関係だ');
  t = t.replace(/行動です/g, '行動だ');
  t = t.replace(/遊びです/g, '遊びだ');
  t = t.replace(/運動です/g, '運動だ');
  t = t.replace(/トレーニングです/g, 'トレーニングだ');
  t = t.replace(/フィットネスです/g, 'フィットネスだ');
  t = t.replace(/プログラムです/g, 'プログラムだ');
  t = t.replace(/レッスンです/g, 'レッスンだ');
  t = t.replace(/クラスです/g, 'クラスだ');
  t = t.replace(/ワークアウトです/g, 'ワークアウトだ');
  t = t.replace(/時間になります/g, '時間になる');
  t = t.replace(/環境になります/g, '環境になる');
  t = t.replace(/活動になります/g, '活動になる');
  t = t.replace(/運動になります/g, '運動になる');
  t = t.replace(/トレーニングになります/g, 'トレーニングになる');
  t = t.replace(/フィットネスになります/g, 'フィットネスになる');
  t = t.replace(/プログラムになります/g, 'プログラムになる');
  t = t.replace(/レッスンになります/g, 'レッスンになる');
  t = t.replace(/クラスになります/g, 'クラスになる');
  t = t.replace(/ワークアウトになります/g, 'ワークアウトになる');
  
  // Verbs
  t = t.replace(/あります/g, 'ある');
  t = t.replace(/なります/g, 'なる');
  t = t.replace(/できます/g, 'できる');
  t = t.replace(/しまいます/g, 'しまう');
  t = t.replace(/くれます/g, 'くれる');
  t = t.replace(/します/g, 'する');
  t = t.replace(/生み出します/g, '生み出す');
  t = t.replace(/引き出します/g, '引き出す');
  t = t.replace(/高めます/g, '高める');
  t = t.replace(/保ちます/g, '保つ');
  t = t.replace(/作り出せます/g, '作り出せる');
  t = t.replace(/満たします/g, '満たす');
  t = t.replace(/もたらします/g, 'もたらす');
  t = t.replace(/感じます/g, '感じる');
  t = t.replace(/失います/g, '失う');
  t = t.replace(/向かいます/g, '向かう');
  t = t.replace(/分かります/g, '分かる');
  t = t.replace(/生まれます/g, '生まれる');
  t = t.replace(/求めます/g, '求める');
  t = t.replace(/選びます/g, '選ぶ');
  t = t.replace(/合います/g, '合う');
  t = t.replace(/向いています/g, '向いている');
  t = t.replace(/向いていません/g, '向いていない');
  t = t.replace(/続きます/g, '続く');
  t = t.replace(/続きません/g, '続かない');
  t = t.replace(/湧きません/g, '湧かない');
  t = t.replace(/ありません/g, 'ない');
  t = t.replace(/できません/g, 'できない');
  t = t.replace(/しません/g, 'しない');
  t = t.replace(/いけません/g, 'いけない');
  t = t.replace(/なりません/g, 'ならない');
  t = t.replace(/でしょう/g, 'だろう');
  t = t.replace(/ましょう/g, 'よう');
  t = t.replace(/ました/g, 'た');
  t = t.replace(/でした/g, 'だった');
  t = t.replace(/です/g, 'だ');
  t = t.replace(/ます/g, 'る'); // Catch-all for remaining ます, might need manual check
  
  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => {
    p.body = replaceTone(p.body);
  });
  data[code].unsuited_plans.forEach(p => {
    p.body = replaceTone(p.body);
  });
  if (data[code].compatible_types && data[code].compatible_types.good) {
    data[code].compatible_types.good.forEach(g => {
      g.reason = replaceTone(g.reason);
    });
  }
  if (data[code].compatible_types && data[code].compatible_types.bad) {
    data[code].compatible_types.bad.forEach(b => {
      b.reason = replaceTone(b.reason);
    });
  }
});

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');

console.log('Successfully unified tone.');
EOF
node unify-tone.js