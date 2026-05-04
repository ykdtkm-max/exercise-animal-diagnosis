cat << 'EOF' > fix-grammar2.js
const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');

const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
if (!match) {
  console.error('Could not find EXERCISE_V2_TYPES in types-data.js');
  process.exit(1);
}

let data = JSON.parse(match[1]);

function fixGrammar(text) {
  if (!text) return text;
  let t = text;
  
  t = t.replace(/もたらする/g, 'もたらす');
  t = t.replace(/近いだ/g, '近い');
  t = t.replace(/にくいだが/g, 'にくいが');
  t = t.replace(/良いだ/g, '良い');
  t = t.replace(/生まれにくいだ/g, '生まれにくい');
  
  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => {
    p.body = fixGrammar(p.body);
  });
  data[code].unsuited_plans.forEach(p => {
    p.body = fixGrammar(p.body);
  });
  if (data[code].compatible_types && data[code].compatible_types.good) {
    data[code].compatible_types.good.forEach(g => {
      g.reason = fixGrammar(g.reason);
    });
  }
  if (data[code].compatible_types && data[code].compatible_types.bad) {
    data[code].compatible_types.bad.forEach(b => {
      b.reason = fixGrammar(b.reason);
    });
  }
});

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');

console.log('Successfully fixed grammar 2.');
EOF
node fix-grammar2.js