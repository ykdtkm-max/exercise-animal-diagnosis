const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const script = 'const window = {};\n' + content + '\nmodule.exports = window.EXERCISE_V2_TYPES;';
fs.writeFileSync('temp_types.js', script);
const types = require('./temp_types.js');

for (const code in types) {
  console.log(`\n=== ${code} (${types[code].type_name}) ===`);
  const suited = types[code].suit_plans;
  const unsuited = types[code].unsuited_plans;
  if (!suited) {
    console.log("No suited_plans");
    continue;
  }
  console.log("【向いている運動】");
  suited.forEach(p => console.log(`- ${p.short_title}: ${p.body}`));
  console.log("【向いていない運動】");
  unsuited.forEach(p => console.log(`- ${p.short_title}: ${p.body}`));
}
