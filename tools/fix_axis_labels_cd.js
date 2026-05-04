const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('label:"CASUAL",  desc:"楽しみたい"', 'label:"PROCESS",  desc:"過程重視"');
content = content.replace('label:"DRIVE", desc:"追い込みたい"', 'label:"OUTCOME", desc:"結果重視"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated C/D axis labels in chars-data.js');
