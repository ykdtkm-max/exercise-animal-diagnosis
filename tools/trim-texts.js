const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

function trimText(text) {
  let t = text;
  t = t.replace(/という活動だ/g, '活動だ');
  t = t.replace(/というスタイルだ/g, 'スタイルだ');
  t = t.replace(/という環境/g, '環境');
  t = t.replace(/という状況/g, '状況');
  t = t.replace(/という事実/g, '事実');
  t = t.replace(/ことができる/g, 'できる');
  t = t.replace(/こと自体が/g, '自体が');
  t = t.replace(/こと自体を/g, '自体を');
  t = t.replace(/最大の動力源になる/g, '最大の動力だ');
  t = t.replace(/最大の動力源として機能する/g, '最大の動力だ');
  t = t.replace(/モチベーションが全く湧かない/g, '意欲が湧かない');
  t = t.replace(/モチベーションが全く湧きません/g, '意欲が湧かない');
  t = t.replace(/引き出する/g, '引き出す');
  t = t.replace(/生み出する/g, '生み出す');
  t = t.replace(/生み出します/g, '生み出す');
  t = t.replace(/もたらする/g, 'もたらす');
  t = t.replace(/もたらします/g, 'もたらす');
  t = t.replace(/最も自然に長続きする/g, '最も長続きする');
  t = t.replace(/最も心地よく回してくれる/g, '心地よく回す');
  t = t.replace(/最高のフィットネスになる/g, '最高の運動だ');
  t = t.replace(/ジレンマを解消する/g, '悩みを消す');
  t = t.replace(/ストレスなく体を動かすことができる/g, '気楽に動ける');
  t = t.replace(/エンジンに火をつける/g, '火をつける');
  t = t.replace(/十分なフィットネスになりうる/g, '十分な運動だ');
  t = t.replace(/キーワードが動力になる/g, '動機になる');
  t = t.replace(/本当の意味での運動になる/g, '本当の運動だ');
  t = t.replace(/最も機能する/g, '最適だ');
  t = t.replace(/爆発的な集中力を引き出す/g, '集中力を引き出す');
  t = t.replace(/深い充実感が得られる/g, '充実感を得る');
  t = t.replace(/強く刺激する/g, '刺激する');
  t = t.replace(/最適です/g, '最適だ');
  t = t.replace(/活動です/g, '活動だ');
  t = t.replace(/重要です/g, '重要だ');
  t = t.replace(/必要です/g, '必要だ');
  t = t.replace(/NGです/g, 'NGだ');
  t = t.replace(/特徴です/g, '特徴だ');
  t = t.replace(/傾向です/g, '傾向だ');
  t = t.replace(/前提です/g, '前提だ');
  t = t.replace(/環境です/g, '環境だ');
  t = t.replace(/イベントです/g, 'イベントだ');
  t = t.replace(/競技です/g, '競技だ');
  t = t.replace(/スポーツです/g, 'スポーツだ');
  t = t.replace(/スタイルです/g, 'スタイルだ');
  t = t.replace(/時間です/g, '時間だ');
  t = t.replace(/状態です/g, '状態だ');
  t = t.replace(/関係です/g, '関係だ');
  t = t.replace(/行動です/g, '行動だ');
  t = t.replace(/遊びです/g, '遊びだ');
  t = t.replace(/運動です/g, '運動だ');
  t = t.replace(/トレーニングです/g, 'トレーニングだ');
  t = t.replace(/フィットネスです/g, 'フィットネスだ');
  t = t.replace(/プログラムです/g, 'プログラムだ');
  t = t.replace(/レッスンです/g, 'レッスンだ');
  t = t.replace(/クラスです/g, 'クラスだ');
  t = t.replace(/ワークアウトです/g, 'ワークアウトだ');
  
  t = t.replace(/モチベーション/g, '意欲');
  t = t.replace(/コミュニケーション/g, '対話');
  t = t.replace(/フラストレーション/g, '不満');
  t = t.replace(/プログレッシブオーバーロード/g, '漸進性過負荷');
  t = t.replace(/ピリオダイゼーション/g, '期分け');
  t = t.replace(/パフォーマンス/g, '成果');
  t = t.replace(/フィットネス/g, '運動');
  t = t.replace(/コントロール/g, '管理');
  t = t.replace(/トレーニング/g, '運動');
  t = t.replace(/インストラクター/g, '指導者');
  t = t.replace(/アドレナリン/g, '興奮');
  t = t.replace(/エネルギー/g, '熱量');
  
  t = t.replace(/（漸進性過負荷）/g, '');
  t = t.replace(/漸進性過負荷で/g, '負荷を上げ');
  
  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { p.body = trimText(p.body); });
  data[code].unsuited_plans.forEach(p => { p.body = trimText(p.body); });
});

let over90 = [];
Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { if(p.body.length > 90) over90.push({c:code, t:p.body}); });
  data[code].unsuited_plans.forEach(p => { if(p.body.length > 90) over90.push({c:code, t:p.body}); });
});

console.log('Over 90 after trim:', over90.length);

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');
