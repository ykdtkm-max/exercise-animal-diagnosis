const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const script = 'const window = {};\n' + content + '\nmodule.exports = window.EXERCISE_V2_TYPES;';
fs.writeFileSync('temp_types.js', script);
const types = require('./temp_types.js');

const targets = ["感情の伴わない記録", "一人きりのトレーニング", "個人競技", "匿名のクラス"];

for (const code in types) {
  const suited = types[code].suit_plans || types[code].suited_plans || [];
  const unsuited = types[code].unsuit_plans || types[code].unsuited_plans || [];
  
  suited.forEach(p => {
    if (targets.some(t => p.short_title.includes(t))) {
      console.log(`[${code} - SUITED] ${p.short_title}: ${p.body.substring(0, 30)}`);
    }
  });
  unsuited.forEach(p => {
    if (targets.some(t => p.short_title.includes(t))) {
      console.log(`[${code} - UNSUITED] ${p.short_title}: ${p.body.substring(0, 30)}`);
    }
  });
}
