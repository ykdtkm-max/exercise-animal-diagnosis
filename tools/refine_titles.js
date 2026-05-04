const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "時間と距離を決めたランニング"/g, '"short_title": "時間指定のランニング"'],
  [/"short_title": "孤独なウエイトトレーニング"/g, '"short_title": "孤独な筋トレ"'],
  [/"short_title": "自己完結する筋トレ"/g, '"short_title": "自己完結の筋トレ"'],
  [/"short_title": "自己記録を狙う登山"/g, '"short_title": "記録狙いの登山"'],
  [/"short_title": "歩数計アプリの使用"/g, '"short_title": "歩数計アプリ"'],
  [/"short_title": "参加者の顔が見えないクラス"/g, '"short_title": "見知らぬ人とのクラス"'],
  [/"short_title": "誰とも関わらないクラス"/g, '"short_title": "交流のないクラス"'],
  [/"short_title": "誰とも関わらない習慣"/g, '"short_title": "交流のない習慣"'],
  [/"short_title": "同じ景色のジョギング"/g, '"short_title": "固定ルートのジョギング"'],
  [/"short_title": "予測可能なウォーキング"/g, '"short_title": "コース固定のウォーキング"'],
  [/"short_title": "日課のウォーキング"/g, '"short_title": "日課の散歩"'],
  [/"short_title": "急激な負荷のエクササイズ"/g, '"short_title": "高負荷なエクササイズ"'],
  [/"short_title": "孤独な作業空間"/g, '"short_title": "孤独な作業"'],
  [/"short_title": "無機質なデータ管理"/g, '"short_title": "無機質なデータ入力"'],
  [/"short_title": "一人きりのジム通い"/g, '"short_title": "孤独なジム通い"'] // Reverting to a more natural phrase
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles refined.");
