const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "固定されたストレッチ"/g, '"short_title": "決まった手順のストレッチ"'],
  [/"short_title": "固定されたスポーツクラブ"/g, '"short_title": "いつものスポーツクラブ"'],
  [/"short_title": "固定されたプログラム"/g, '"short_title": "決まったプログラム"'],
  [/"short_title": "高強度のエクササイズ"/g, '"short_title": "ハードなエクササイズ"'],
  [/"short_title": "高強度のフィットネス"/g, '"short_title": "負荷の高いフィットネス"'],
  [/"short_title": "高強度のブートキャンプ"/g, '"short_title": "激しいブートキャンプ"'],
  [/"short_title": "自由なクラス"/g, '"short_title": "縛りのないクラス"'],
  [/"short_title": "自由なプログラム"/g, '"short_title": "柔軟なプログラム"'],
  [/"short_title": "自由参加のプログラム"/g, '"short_title": "任意参加のプログラム"'],
  [/"short_title": "自由参加のジム"/g, '"short_title": "縛りのないジム"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles updated.");
