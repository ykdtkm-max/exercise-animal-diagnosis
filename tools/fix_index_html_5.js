const fs = require('fs');
const path = require('path');

const indexPath = path.join(__dirname, 'fittness_type-main', 'index.html');
let content = fs.readFileSync(indexPath, 'utf8');

content = content.replace(/app\.js\?v=exercise-v(\d+)/g, (match, p1) => {
  return `app.js?v=exercise-v${parseInt(p1) + 1}`;
});

content = content.replace(/secret-compat-detail-data\.js\?v=exercise-v(\d+)/g, (match, p1) => {
  return `secret-compat-detail-data.js?v=exercise-v${parseInt(p1) + 1}`;
});

fs.writeFileSync(indexPath, content, 'utf8');
console.log('Updated index.html for app.js and secret-compat-detail-data.js version');
