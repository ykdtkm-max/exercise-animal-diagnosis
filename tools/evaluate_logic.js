const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const script = 'const window = {};\n' + content + '\nmodule.exports = window.EXERCISE_V2_TYPES;';
fs.writeFileSync('temp_types.js', script);
const types = require('./temp_types.js');

const contradictions = [];

for (const code in types) {
  const isSolo = code.charAt(0) === 'S';
  const isGroup = code.charAt(0) === 'G';
  const isFree = code.charAt(1) === 'F';
  const isPlan = code.charAt(1) === 'P';
  
  const suited = types[code].suit_plans || types[code].suited_plans || [];
  const unsuited = types[code].unsuit_plans || types[code].unsuited_plans || [];
  
  suited.forEach(p => {
    const text = p.short_title + " " + p.title + " " + p.body;
    if (isSolo && (text.includes("仲間") || text.includes("チーム") || text.includes("みんなで"))) {
      contradictions.push(`[${code} SUITED] Solo type has group words: ${p.short_title}`);
    }
    if (isGroup && (text.includes("一人で") || text.includes("孤独") || text.includes("黙々と"))) {
      // "一人でやるより" is an exception, we need to be careful.
      if (!text.includes("一人で黙々と取り組むより") && !text.includes("一人では出せない") && !text.includes("一人では重い腰が上がらなくても")) {
        contradictions.push(`[${code} SUITED] Group type has solo words: ${p.short_title}\n   -> ${p.body}`);
      }
    }
    if (isFree && (text.includes("計画") || text.includes("数値管理") || text.includes("厳密に"))) {
      if (!text.includes("計画なし") && !text.includes("計画に縛られると")) {
        contradictions.push(`[${code} SUITED] Free type has plan words: ${p.short_title}\n   -> ${p.body}`);
      }
    }
    if (isPlan && (text.includes("目的なく") || text.includes("気ままに") || text.includes("直感"))) {
      contradictions.push(`[${code} SUITED] Plan type has free words: ${p.short_title}\n   -> ${p.body}`);
    }
  });

  unsuited.forEach(p => {
    const text = p.short_title + " " + p.title + " " + p.body;
    if (isSolo && (text.includes("一人で") || text.includes("孤独"))) {
      if (!text.includes("一人での運動が続かない") && !text.includes("一人でいるときの自分とは別人のように")) {
        contradictions.push(`[${code} UNSUITED] Solo type rejects solo words: ${p.short_title}\n   -> ${p.body}`);
      }
    }
    if (isGroup && (text.includes("仲間") || text.includes("チーム") || text.includes("みんなで"))) {
      if (!text.includes("仲間との熱量もない") && !text.includes("仲間との絆や") && !text.includes("チームへの不満") && !text.includes("チームの雰囲気が落ちる") && !text.includes("チームの都合に合わせる") && !text.includes("チームが崩れそうなときに") && !text.includes("特定の仲間への約束")) {
        contradictions.push(`[${code} UNSUITED] Group type rejects group words: ${p.short_title}\n   -> ${p.body}`);
      }
    }
  });
}

if (contradictions.length === 0) {
  console.log("No obvious keyword contradictions found.");
} else {
  console.log(contradictions.join('\n'));
}
