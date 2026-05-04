const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"一人で集中したい"', 'desc:"一人で集中"');
content = content.replace('desc:"仲間と取り組みたい"', 'desc:"仲間と一緒に"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated S/G axis labels in chars-data.js');
