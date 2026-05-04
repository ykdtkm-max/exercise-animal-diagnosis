const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, 'ドキュメント/05_1対15比較図/GPAH_勝利の女神_vs_その他15タイプ.md');
let content = fs.readFileSync(filePath, 'utf8');

// I will just git checkout the file and do it myself.
