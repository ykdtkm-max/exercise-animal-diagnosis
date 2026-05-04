const fs = require('fs');

let content = fs.readFileSync('types-data.js', 'utf8');

// The axes labels and specific types
content = content.replace(/ソロ探求/g, '一人での探求')
               .replace(/チーム勝利/g, 'チームの勝利')
               .replace(/チーム継続/g, 'チームの継続')
               .replace(/ソロ追求/g, '一人での追求');

fs.writeFileSync('types-data.js', content, 'utf8');
console.log('More jargon replaced in types-data.js');
