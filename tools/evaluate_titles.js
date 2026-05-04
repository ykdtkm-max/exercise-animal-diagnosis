const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const script = 'const window = {};\n' + content + '\nmodule.exports = window.EXERCISE_V2_TYPES;';
fs.writeFileSync('temp_types.js', script);
const types = require('./temp_types.js');

let output = "";
for (const code in types) {
  output += `\n[${code} - ${types[code].type_name}]\n`;
  const suited = types[code].suit_plans || types[code].suited_plans || [];
  const unsuited = types[code].unsuit_plans || types[code].unsuited_plans || [];
  
  output += "向いている: " + suited.map(p => p.short_title).join(', ') + "\n";
  output += "向いていない: " + unsuited.map(p => p.short_title).join(', ') + "\n";
}
console.log(output);
