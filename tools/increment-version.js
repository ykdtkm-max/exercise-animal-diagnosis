const fs = require('fs');

let indexContent = fs.readFileSync('index.html', 'utf8');

// Increment version for styles.css and types-data.js
indexContent = indexContent.replace(/styles\.css\?v=exercise-v(\d+)/, (match, p1) => {
  return `styles.css?v=exercise-v${parseInt(p1) + 1}`;
});

indexContent = indexContent.replace(/types-data\.js\?v=exercise-v(\d+)/, (match, p1) => {
  return `types-data.js?v=exercise-v${parseInt(p1) + 1}`;
});

indexContent = indexContent.replace(/app\.js\?v=exercise-v(\d+)/, (match, p1) => {
  return `app.js?v=exercise-v${parseInt(p1) + 1}`;
});

fs.writeFileSync('index.html', indexContent, 'utf8');
console.log('Incremented versions in index.html');
