const fs = require('fs');
const path = require('path');

const dataPath = path.join(__dirname, 'fittness_type-main', 'secret-compat-detail-data.js');
let content = fs.readFileSync(dataPath, 'utf8');
content = content.replace(/^[\s\S]*?window\.SECRET_COMPAT_PAIR_DETAIL\s*=\s*/, '').replace(/;[\s\n]*$/, '');
const data = JSON.parse(content);

console.log(JSON.stringify(data['GPMH']['SPMH'].sections, null, 2));
