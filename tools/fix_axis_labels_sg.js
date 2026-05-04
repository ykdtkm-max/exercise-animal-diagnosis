const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"一人で集中"', 'desc:"一人"');
content = content.replace('desc:"仲間と一緒に"', 'desc:"複数人"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated S/G axis labels in chars-data.js');
