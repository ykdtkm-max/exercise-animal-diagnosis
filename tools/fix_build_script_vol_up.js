const fs = require('fs');
const path = require('path');

const scriptPath = path.join(__dirname, 'scripts', 'build-secret-compat-detail-data.js');
let content = fs.readFileSync(scriptPath, 'utf8');

content = content.replace(
  `if (/相手を誘う魔法の言葉/.test(t)) return 'magicWords';`,
  `// 04 is removed`
);

fs.writeFileSync(scriptPath, content, 'utf8');
console.log('Updated build script to remove magicWords');
