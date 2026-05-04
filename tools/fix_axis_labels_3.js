const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"習慣にしたい"', 'desc:"習慣が大事"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated P axis label in chars-data.js');
