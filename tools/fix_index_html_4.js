const fs = require('fs');
const path = require('path');

const indexPath = path.join(__dirname, 'fittness_type-main', 'index.html');
let content = fs.readFileSync(indexPath, 'utf8');

content = content.replace(/chars-data\.js\?v=exercise-v(\d+)/g, (match, p1) => {
  return `chars-data.js?v=exercise-v${parseInt(p1) + 1}`;
});

fs.writeFileSync(indexPath, content, 'utf8');
console.log('Updated index.html for chars-data.js version');
