const fs = require('fs');

let cssContent = fs.readFileSync('styles.css', 'utf8');

cssContent = cssContent.replace(
  /\.share-steps__highlight\s*\{[\s\S]*?\}/,
  `.share-steps__highlight {
  color: var(--red);
  font-weight: 900;
  font-size: 14px;
  text-align: center;
  margin: 0 0 16px;
}`
);

fs.writeFileSync('styles.css', cssContent, 'utf8');
console.log('Updated share-steps__highlight styles');
