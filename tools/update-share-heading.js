const fs = require('fs');

let cssContent = fs.readFileSync('styles.css', 'utf8');

cssContent = cssContent.replace(
  /\.result-actions__share-heading\s*\{[\s\S]*?font-size:\s*13px;[\s\S]*?\}/,
  match => match.replace(/font-size:\s*13px;/, 'font-size: 16px;\n  font-weight: 900;')
                .replace(/font-weight:\s*800;/, '')
);

fs.writeFileSync('styles.css', cssContent, 'utf8');
console.log('Updated share heading font size');
