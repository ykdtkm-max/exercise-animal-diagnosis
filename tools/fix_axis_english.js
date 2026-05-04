const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

// A/Tはそのまま (ACTION / THOUGHT) で意味が通るため維持
// C/Dを変更
content = content.replace('label:"CONTINUOUS"', 'label:"CASUAL"');
content = content.replace('label:"DECISIVE"', 'label:"DRIVE"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated English labels for C/D axis in chars-data.js');
