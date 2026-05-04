const fs = require('fs');
const path = require('path');

const scriptPath = path.join(__dirname, 'scripts', 'build-secret-compat-detail-data.js');
let content = fs.readFileSync(scriptPath, 'utf8');

content = content.replace(
  `if (!parsedPair.sections.typeInsight || !parsedPair.sections.axisMatch)`,
  `if (!(parsedPair.sections.typeInsight || parsedPair.sections.highlight) || !parsedPair.sections.axisMatch)`
);

fs.writeFileSync(scriptPath, content, 'utf8');
console.log('Updated build script 2');
