const fs = require('fs');

let cssContent = fs.readFileSync('styles.css', 'utf8');

// Add a border-top to .result-actions to act as a divider
cssContent = cssContent.replace(
  /\.result-actions\s*\{[\s\S]*?\}/,
  match => {
    return match.replace(/margin-top:\s*74px;/, 'margin-top: 60px;\n  padding-top: 60px;\n  border-top: 1px solid rgba(43,37,53,0.1);');
  }
);

fs.writeFileSync('styles.css', cssContent, 'utf8');
console.log('Added divider to result-actions');
