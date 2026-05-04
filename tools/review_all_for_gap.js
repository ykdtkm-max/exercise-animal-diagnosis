const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const script = 'const window = {};\n' + content + '\nmodule.exports = window.EXERCISE_V2_TYPES;';
fs.writeFileSync('temp_types.js', script);
const types = require('./temp_types.js');

let output = "";
for (const code in types) {
  output += `\n=== ${code} (${types[code].type_name}) ===\n`;
  const suited = types[code].suit_plans || types[code].suited_plans || [];
  const unsuited = types[code].unsuit_plans || types[code].unsuited_plans || [];
  
  output += "【向いている運動】\n";
  suited.forEach(p => output += `- ${p.short_title}\n  ${p.body.substring(0, 60)}...\n`);
  output += "【向いていない運動】\n";
  unsuited.forEach(p => output += `- ${p.short_title}\n  ${p.body.substring(0, 60)}...\n`);
}
fs.writeFileSync('gap_review.txt', output);
console.log("Done");
