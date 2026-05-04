const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "低熱量レッスン"/g, '"short_title": "熱量の低いレッスン"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles updated.");
