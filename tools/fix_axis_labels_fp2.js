const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"突発的"', 'desc:"衝動的"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated F axis label to 衝動的 in chars-data.js');
