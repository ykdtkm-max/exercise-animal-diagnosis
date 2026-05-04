const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  // SFMC ~ SFVH
  [/"short_title": "記録管理型筋トレ"/g, '"short_title": "管理型筋トレ"'],
  [/"short_title": "絶対的な習慣化"/g, '"short_title": "厳格な習慣化"'],
  [/"short_title": "一人ロードバイク"/g, '"short_title": "ソロロードバイク"'],
  
  // SPMC ~ SPVH
  [/"short_title": "進捗報告企画"/g, '"short_title": "進捗報告"'],
  [/"short_title": "記録のない運動"/g, '"short_title": "無記録の運動"'],
  [/"short_title": "目標のない散歩"/g, '"short_title": "無目的の散歩"'],
  [/"short_title": "固定時間スイミング"/g, '"short_title": "定例スイミング"'],
  [/"short_title": "予定が変わる集団活動"/g, '"short_title": "不定期な集団活動"'],
  [/"short_title": "自由参加型プログラム"/g, '"short_title": "自由参加プログラム"'],
  
  // GFMC ~ GFVH
  [/"short_title": "自立の目標"/g, '"short_title": "孤独な目標"'],
  [/"short_title": "記録管理トレーニング"/g, '"short_title": "管理型トレーニング"'],
  [/"short_title": "義務感運動"/g, '"short_title": "義務的な運動"'],
  [/"short_title": "初対面のイベント"/g, '"short_title": "新規イベント"'],
  [/"short_title": "記録管理プログラム"/g, '"short_title": "管理型プログラム"'],
  [/"short_title": "義務的なグループ活動"/g, '"short_title": "義務的な集団活動"'],
  
  // GPMC ~ GPVH
  [/"short_title": "予定が変わる活動"/g, '"short_title": "不定期な活動"'],
  [/"short_title": "競争の激しいチーム"/g, '"short_title": "競争型チーム"'],
  [/"short_title": "グループでの短期集中ボディメイク"/g, '"short_title": "チーム型ボディメイク"'],
  [/"short_title": "競技志向のテニス・卓球"/g, '"short_title": "競技型ペアスポーツ"'],
  [/"short_title": "目的のないレクリエーション"/g, '"short_title": "無目的レクリエーション"'],
  [/"short_title": "ゆるいグループ活動"/g, '"short_title": "ゆるい集団活動"'],
  [/"short_title": "いつでも辞められる活動"/g, '"short_title": "一過性の活動"'],
  [/"short_title": "スポ根系ブートキャンプ"/g, '"short_title": "熱血ブートキャンプ"'],
  [/"short_title": "限界突破型リレーマラソン"/g, '"short_title": "過酷なリレーマラソン"'],
  [/"short_title": "熱量の低いレッスン"/g, '"short_title": "低熱量レッスン"'],
  [/"short_title": "個人完結のトレーニング"/g, '"short_title": "自己完結トレーニング"'],
  [/"short_title": "感情の動かない運動"/g, '"short_title": "無機質な運動"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles updated.");
