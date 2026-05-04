const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

content = content.replace('desc:"やりながら考える"', 'desc:"行動型"');
content = content.replace('desc:"考えてからやる"', 'desc:"追求型"');

fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated A/T axis labels in chars-data.js');
