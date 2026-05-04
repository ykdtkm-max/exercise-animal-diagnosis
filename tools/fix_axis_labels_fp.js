const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"気分に任せる"', 'desc:"突発的"');
content = content.replace('desc:"習慣が大事"', 'desc:"計画的"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated F/P axis labels in chars-data.js');
