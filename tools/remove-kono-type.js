const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

function trimText(text) {
  let t = text;
  
  t = t.replace(/このタイプは/g, '');
  t = t.replace(/このタイプの/g, '');
  t = t.replace(/このタイプにとって/g, '');
  t = t.replace(/このタイプに/g, '');
  t = t.replace(/このタイプならではの/g, '特有の');
  t = t.replace(/このタイプ特有の/g, '特有の');
  
  t = t.replace(/という活動だ/g, '活動だ');
  t = t.replace(/というスタイルだ/g, 'スタイルだ');
  t = t.replace(/という環境が/g, '環境が');
  t = t.replace(/という状況が/g, '状況が');
  t = t.replace(/という事実が/g, '事実が');
  t = t.replace(/という衝動が/g, '衝動が');
  t = t.replace(/という動機が/g, '動機が');
  t = t.replace(/という体験が/g, '体験が');
  t = t.replace(/という燃やし方を/g, '燃やし方を');
  t = t.replace(/という設計が/g, '設計が');
  t = t.replace(/という感覚が/g, '感覚が');
  t = t.replace(/という責任感が/g, '責任感が');
  t = t.replace(/という文脈が/g, '文脈が');
  t = t.replace(/という行動が/g, '行動が');
  t = t.replace(/というプロセスが/g, 'プロセスが');
  t = t.replace(/という前提条件が/g, '前提条件が');
  t = t.replace(/という着火剤が/g, '着火剤が');
  t = t.replace(/という報酬が/g, '報酬が');
  
  t = t.replace(/最も自然に長続きする/g, '最も続く');
  t = t.replace(/最も心地よく回してくれる/g, '心地よく回す');
  t = t.replace(/最高のフィットネスになる/g, '最高の運動だ');
  t = t.replace(/最高の運動だ/g, '最適だ');
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
  t = t.replace(/レクリエーション/g, '遊び');
  t = t.replace(/スケジュール/g, '予定');
  t = t.replace(/プログラム/g, '運動');
  t = t.replace(/プレッシャー/g, '重圧');
  t = t.replace(/コンディション/g, '体調');
  
  t = t.replace(/ことができる/g, 'できる');
  t = t.replace(/こと自体が/g, '自体が');
  t = t.replace(/こと自体を/g, '自体を');
  t = t.replace(/最大の動力源になる/g, '最大の動力だ');
  t = t.replace(/最大の動力源として機能する/g, '最大の動力だ');
  t = t.replace(/意欲が全く湧かない/g, '意欲が湧かない');
  t = t.replace(/意欲が全く湧きません/g, '意欲が湧かない');
  
  // Extra aggressive
  t = t.replace(/目的地なしに商店街や住宅街を流す。途中で気になる店があれば入るなど、時間も距離も決めないスタイルが最適だ。「なんとなく歩きたい」衝動が出発点になるため、自由度の高い散策が最も長続きする。/g, '目的地を持たず商店街などを流し、気になれば店に入る自由なスタイルが最適だ。「なんとなく歩きたい」衝動が出発点になるため、時間も距離も決めない散策が最も続く。');
  t = t.replace(/自然光の中をゆっくり歩き、疲れたり飽きたりしたらベンチで止まってぼーっとする時間も立派な活動の一部だ。目標やノルマを設定せず、心と体が求めるままに動いたり休んだりできる環境が、最適だ。/g, '自然光の中をゆっくり歩き、疲れたらベンチで休むのも立派な活動だ。目標やノルマを設定せず、心と体が求めるままに動いたり休んだりできる環境が最適だ。');
  t = t.replace(/時間とルートをガチガチに決めた途端に、それは楽しい運動ではなく「こなすべきタスク」に変わってしまう。決められたことを繰り返すのが苦手なにとって、日々の固定ルーティンは最も意欲を奪う仕組みだ。/g, '時間とルートをガチガチに決めた途端、楽しい運動ではなく「こなすべきタスク」に変わる。決められたことを繰り返すのが苦手なため、日々の固定ルーティンは最も意欲を奪う。');
  t = t.replace(/アプリなどで数値を厳密に管理し始めると、自由な散策が「ノルマ達成のための作業」にすり替わってしまう。数字を追う楽しさよりも、管理されているという窮屈さが勝ってしまい、運動そのものの楽しさが見えなくなる。/g, '数値管理を始めると、自由な散策が「ノルマ達成の作業」にすり替わる。数字を追う楽しさより、管理される窮屈さが勝り、運動の楽しさが見えなくなる。');
  t = t.replace(/ロードバイクではなくシティサイクルで、「どこか面白いものがあるかも」という気分だけで走る活動だ。記録アプリを使わず、自分のペースで移動する自体を楽しむ姿勢が、義務感を嫌うエンジンを心地よく回す。/g, '「どこか面白いものがあるかも」という気分だけで走る活動だ。記録アプリを使わず、自分のペースで移動する自体を楽しむ姿勢が、義務感を嫌うエンジンを心地よく回す。');
  t = t.replace(/「お金を払ったから行かなきゃ」という義務感が生まれた瞬間に足は遠のく。いつでも行ける環境は重圧となり、本来の「気が向いたときに動く」衝動を完全に消し去ってしまう。/g, '「お金を払ったから行かなきゃ」の義務感が生まれた瞬間に足は遠のく。いつでも行ける環境は重圧となり、本来の「気が向いたときに動く」衝動を完全に消し去る。');
  
  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { p.body = trimText(p.body); });
  data[code].unsuited_plans.forEach(p => { p.body = trimText(p.body); });
});

let over88 = [];
Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { if(p.body.length > 88) over88.push({c:code, t:p.body, len: p.body.length}); });
  data[code].unsuited_plans.forEach(p => { if(p.body.length > 88) over88.push({c:code, t:p.body, len: p.body.length}); });
});

console.log('Over 88 after trim:', over88.length);
if (over88.length > 0) {
  over88.sort((a,b) => b.len - a.len);
  console.log(over88.slice(0, 10));
}

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');
