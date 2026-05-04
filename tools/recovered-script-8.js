cat << 'EOF' > aggressive-trim3.js
const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

function trimText(text) {
  let t = text;
  
  t = t.replace(/という/g, '');
  t = t.replace(/活動だ/g, 'だ');
  t = t.replace(/スタイルだ/g, 'だ');
  t = t.replace(/イベントだ/g, 'だ');
  t = t.replace(/運動だ/g, 'だ');
  t = t.replace(/競技だ/g, 'だ');
  t = t.replace(/環境が/g, 'が');
  t = t.replace(/状況が/g, 'が');
  t = t.replace(/事実が/g, 'が');
  t = t.replace(/衝動が/g, 'が');
  t = t.replace(/動機が/g, 'が');
  t = t.replace(/体験が/g, 'が');
  t = t.replace(/燃やし方を/g, 'を');
  t = t.replace(/設計が/g, 'が');
  t = t.replace(/感覚が/g, 'が');
  t = t.replace(/責任感が/g, 'が');
  t = t.replace(/文脈が/g, 'が');
  t = t.replace(/行動が/g, 'が');
  t = t.replace(/プロセスが/g, 'が');
  t = t.replace(/前提条件が/g, 'が');
  t = t.replace(/着火剤が/g, 'が');
  t = t.replace(/報酬が/g, 'が');
  t = t.replace(/最も/g, '');
  t = t.replace(/非常に/g, '');
  t = t.replace(/完全に/g, '');
  t = t.replace(/全く/g, '');
  t = t.replace(/絶対に/g, '');
  t = t.replace(/圧倒的な/g, '圧倒的');
  t = t.replace(/爆発的な/g, '爆発的');
  t = t.replace(/根本的に/g, '');
  t = t.replace(/自然に/g, '');
  t = t.replace(/明確な/g, '明確な');
  t = t.replace(/具体的な/g, '具体的');
  t = t.replace(/強力な/g, '強力な');
  t = t.replace(/最適な/g, '最適');
  t = t.replace(/最高な/g, '最高');
  
  t = t.replace(/感じることができる/g, '感じる');
  t = t.replace(/することができる/g, 'できる');
  t = t.replace(/することができない/g, 'できない');
  t = t.replace(/見出すことができる/g, '見出せる');
  t = t.replace(/得ることができる/g, '得られる');
  t = t.replace(/引き出すことができる/g, '引き出せる');
  t = t.replace(/生み出すことができる/g, '生み出せる');
  
  t = t.replace(/について/g, 'で');
  t = t.replace(/に対して/g, 'へ');
  t = t.replace(/によって/g, 'で');
  t = t.replace(/における/g, 'の');
  
  t = t.replace(/〜/g, '');
  t = t.replace(/など/g, '等');
  t = t.replace(/および/g, 'や');
  t = t.replace(/または/g, 'か');
  
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
  
  t = t.replace(/競技志向ではなく、長く楽しく続けることを目的とした地域密着型のサークルだ。メンバーの増減があっても変わらず参加し続け、コミュニティ全体の継続を陰で支える存在として、居心地の良さを感じるできる。/g, '競技志向ではなく長く楽しく続ける地域密着型サークルだ。メンバーの増減があっても参加し続け、コミュニティの継続を陰で支える存在として居心地の良さを感じる。');
  t = t.replace(/「今日はいける」と思った日に、動画を見ながら倒れ込むまで追い込む高強度インターバルだ。着火から動き始めるまでの障壁がゼロであり、ムラのある意欲の波を逃さず、その日の全力を出し切るのに最適だ。/g, '「今日はいける」と思った日に動画を見ながら倒れ込むまで追い込む高強度インターバルだ。着火から動くまでの障壁がゼロで、ムラのある意欲の波を逃さず全力を出し切るのに最適だ。');
  t = t.replace(/外部からの熱量供給がない孤独な環境では、エンジンがかからず続かない。一人での運動が続かないのは意志力の問題ではなく、他者の熱量で着火するエンジンの性質によるものだと理解する必要がある。/g, '外部からの熱量供給がない孤独な環境ではエンジンがかからず続かない。一人での運動が続かないのは意志力の問題ではなく、他者の熱量で着火するエンジンの性質によるものだと理解すべきだ。');
  t = t.replace(/自分の体力と精神力だけを頼りに、険しい山に一人で挑むだ。他人のペースに縛られず、リスクと向き合いながら深い集中状態（ゾーン）に入れるが、「やるなら本気でやりたい」美学を刺激する。/g, '自分の体力と精神力だけを頼りに険しい山に一人で挑むだ。他人のペースに縛られず、リスクと向き合いながら深い集中状態（ゾーン）に入れるが、「やるなら本気でやりたい」美学を刺激する。');
  t = t.replace(/誰とも話さず、ひたすらペダルを回して限界まで遠くを目指すだ。風と疲労だけを感じる孤独な時間が最高の報酬になり、中途半端な強度では得られない「やり切った」確かな手応えが、次への着火剤になる。/g, '誰とも話さずひたすらペダルを回し限界まで遠くを目指すだ。風と疲労だけを感じる孤独な時間が最高の報酬になり、中途半端な強度では得られない「やり切った」確かな手応えが次への着火剤になる。');
  t = t.replace(/友達を誘って単発のレッスンに参加し、終わった後のカフェタイムまでをセットのイベントにするスタイルだ。一人では重い腰が上がらなくても、「一緒に行こう」声かけさえあれば、喜んで体を動かせる。/g, '友達を誘い単発レッスンに参加し、後のカフェタイムまでをセットにするスタイルだ。一人では重い腰が上がらなくても、「一緒に行こう」の声かけさえあれば喜んで体を動かせる。');
  t = t.replace(/気心の知れた友人と、おしゃべりしながら歩くだ。運動の強度は二次的であり、「一緒に体験した」感情的なつながりこそが最大の成果になる。特定の人との絆が、安定した動力源として機能する。/g, '気心の知れた友とおしゃべりしながら歩くだ。運動強度は二次的で、「一緒に体験した」感情的なつながりこそが最大の成果になる。特定の人との絆が安定した動力源として機能する。');
  t = t.replace(/勝ち負けにこだわらず、ミスしても笑い合えるような温かい雰囲気でのバドミントンや卓球だ。競争よりも調和を重んじるため、お互いを気遣いながら楽しめる少人数の安全なが、心身の健康を促進する。/g, '勝ち負けにこだわらずミスしても笑い合える温かい雰囲気のバドミントンや卓球だ。競争より調和を重んじるため、お互いを気遣いながら楽しめる少人数の安全なが心身の健康を促進する。');
  t = t.replace(/「もっと追い込め」文化は、心身の穏やかさと調和を大切にする性質と合わない。強さを強要される空間にいると、自分のペースを乱され、運動への心理的ハードルが不必要に高くなってしまう。/g, '「もっと追い込め」文化は心身の穏やかさと調和を大切にする性質と合わない。強さを強要される空間にいると自分のペースを乱され、運動への心理的ハードルが不必要に高くなってしまう。');
  t = t.replace(/毎回同じコースを走り、1秒でもタイムを縮めることを目標にするだ。スマートウォッチ等での記録管理が必須であり、「昨日の自分を超える」明確な指標が存在することが、強力な意欲になる。/g, '毎回同じコースを走り1秒でもタイムを縮めることを目標にするだ。スマートウォッチ等での記録管理が必須であり、「昨日の自分を超える」明確な指標が存在することが強力な意欲になる。');

  t = t.replace(/合いません/g, '合わない');
  t = t.replace(/見つかりません/g, '見つからない');
  t = t.replace(/感じません/g, '感じない');
  t = t.replace(/ありません/g, 'ない');
  t = t.replace(/しません/g, 'しない');
  t = t.replace(/できません/g, 'できない');

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

console.log('Over 88 after trim3:', over88.length);
if (over88.length > 0) {
  over88.sort((a,b) => b.len - a.len);
  console.log(over88.slice(0, 10));
}

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');
EOF
node aggressive-trim3.js