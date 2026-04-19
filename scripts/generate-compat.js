'use strict';

/**
 * 運動タイプ相性チェック コンテンツ生成スクリプト
 * 120ペア × 3活動 = 360レコード分のSQLを生成する
 * 使用方法: node generate-compat.js > compat-insert.sql
 */

const TYPES = [
  'GFAC','GFAD','GFTC','GFTD',
  'GPAC','GPAD','GPTC','GPTD',
  'SFAC','SFAD','SFTC','SFTD',
  'SPAC','SPAD','SPTC','SPTD',
];

function parseType(code) {
  return {
    social:     code[0], // S or G
    structure:  code[1], // F or P
    resilience: code[2], // A or T
    intensity:  code[3], // C or D
  };
}

function findDiffs(axA, axB) {
  const diffs = [];
  if (axA.social     !== axB.social)     diffs.push('social');
  if (axA.structure  !== axB.structure)  diffs.push('structure');
  if (axA.resilience !== axB.resilience) diffs.push('resilience');
  if (axA.intensity  !== axB.intensity)  diffs.push('intensity');
  return diffs;
}

// ────────────────────────────────────────────────────────────────────────
// 活動定義（各軸タイプごとの説明文）
// ────────────────────────────────────────────────────────────────────────
const ACTIVITIES = [
  {
    id: 'hiking',
    name: '近郊ハイキング',
    emoji: '🥾',
    tags: ['outdoor', 'flexible'],
    base_score: { S:3, G:3, F:3, P:3, A:3, T:3, C:2, D:2 },
    bridge_bonus: { social:1, structure:1, resilience:0, intensity:1 },
    axis_desc: {
      S: '「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。',
      G: '歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。',
      F: '目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。',
      P: 'ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。',
      A: '多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。',
      T: '自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。',
      C: '強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。',
      D: '距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。',
    },
  },
  {
    id: 'yoga',
    name: 'ヨガ体験クラス（単発）',
    emoji: '🧘',
    tags: ['indoor', 'low'],
    base_score: { S:3, G:3, F:3, P:3, A:3, T:3, C:3, D:0 },
    bridge_bonus: { social:1, structure:1, resilience:2, intensity:0 },
    axis_desc: {
      S: '体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。',
      G: 'クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。',
      F: 'ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。',
      P: 'スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。',
      A: 'ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。',
      T: 'インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。',
      C: '強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。',
      D: '慣れてくると上級クラスやホットヨガへの発展があります。体の柔軟性・体幹という別軸の目標設定ができます。',
    },
  },
  {
    id: 'cycling',
    name: 'レンタサイクル街歩き',
    emoji: '🚴',
    tags: ['outdoor', 'flexible'],
    base_score: { S:3, G:3, F:3, P:2, A:3, T:3, C:2, D:2 },
    bridge_bonus: { social:2, structure:2, resilience:0, intensity:1 },
    axis_desc: {
      S: '目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。',
      G: '並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。',
      F: '計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。',
      P: 'レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。',
      A: '行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。',
      T: '一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。',
      C: 'ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。',
      D: 'エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。',
    },
  },
  {
    id: 'jogging',
    name: '公園ジョギング',
    emoji: '🏃',
    tags: ['outdoor', 'medium'],
    base_score: { S:3, G:2, F:2, P:3, A:3, T:2, C:1, D:3 },
    bridge_bonus: { social:0, structure:2, resilience:1, intensity:2 },
    axis_desc: {
      S: '音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。',
      G: '「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。',
      F: '決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。',
      P: '距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。',
      A: '多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。',
      T: '自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。',
      C: 'ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。',
      D: 'タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。',
    },
  },
  {
    id: 'dance',
    name: 'ダンスフィットネス体験',
    emoji: '💃',
    tags: ['indoor', 'medium'],
    base_score: { S:1, G:3, F:3, P:2, A:3, T:2, C:2, D:3 },
    bridge_bonus: { social:2, structure:1, resilience:1, intensity:0 },
    axis_desc: {
      S: '自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。',
      G: '音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。',
      F: '振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。',
      P: '振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。',
      A: '間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。',
      T: 'みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。',
      C: '全力で踊らず半分の力で動く選択肢もあります。音楽に乗るだけで十分な有酸素運動になります。',
      D: '全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。',
    },
  },
  {
    id: 'bouldering',
    name: 'ボルダリング体験',
    emoji: '🧗',
    tags: ['indoor', 'high'],
    base_score: { S:3, G:2, F:2, P:2, A:3, T:1, C:2, D:3 },
    bridge_bonus: { social:1, structure:1, resilience:2, intensity:2 },
    axis_desc: {
      S: '一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。',
      G: '「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。',
      F: '「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。',
      P: '課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。',
      A: '落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。',
      T: '初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。',
      C: '自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。',
      D: 'より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。',
    },
  },
  {
    id: 'swimming',
    name: 'スイミング',
    emoji: '🏊',
    tags: ['indoor', 'low'],
    base_score: { S:3, G:2, F:2, P:3, A:3, T:3, C:3, D:2 },
    bridge_bonus: { social:0, structure:1, resilience:1, intensity:1 },
    axis_desc: {
      S: 'レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。',
      G: '互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。',
      F: '距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。',
      P: '泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。',
      A: 'タイムが思ったより遅くても気にせず、次に向けて考えられます。',
      T: '水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。',
      C: 'ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。',
      D: 'タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。',
    },
  },
  {
    id: 'pilates',
    name: 'ピラティス体験',
    emoji: '🤸',
    tags: ['indoor', 'low'],
    base_score: { S:2, G:3, F:2, P:3, A:3, T:3, C:3, D:1 },
    bridge_bonus: { social:1, structure:1, resilience:2, intensity:0 },
    axis_desc: {
      S: 'グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。',
      G: 'インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。',
      F: '「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。',
      P: '各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。',
      A: '体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。',
      T: 'インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。',
      C: '負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。',
      D: '体幹の安定性・インナーマッスルの強化という目標が明確で、感覚的な「強くなった」実感を積み重ねることが挑戦になります。',
    },
  },
  {
    id: 'tennis',
    name: 'テニス・バドミントン体験',
    emoji: '🎾',
    tags: ['indoor_outdoor', 'medium'],
    base_score: { S:2, G:3, F:2, P:2, A:3, T:2, C:2, D:3 },
    bridge_bonus: { social:2, structure:1, resilience:1, intensity:1 },
    axis_desc: {
      S: 'ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。',
      G: '相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。',
      F: 'ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。',
      P: 'スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。',
      A: 'ミスしてもすぐ次のポイントに気持ちを切り替えられます。',
      T: '体験クラスや壁打ちから始めることで「うまくできるか」というプレッシャーを下げられます。相手が同じレベルなら失敗が互いへの負担になりません。',
      C: 'バドミントンはテニスより強度が低く無理なく楽しめます。体が十分に温まる有酸素運動になります。',
      D: '技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。',
    },
  },
  {
    id: 'morning_walk',
    name: '朝散歩・アウトドアヨガ',
    emoji: '🌿',
    tags: ['outdoor', 'low'],
    base_score: { S:3, G:2, F:3, P:3, A:3, T:3, C:3, D:1 },
    bridge_bonus: { social:1, structure:2, resilience:1, intensity:0 },
    axis_desc: {
      S: '一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。',
      G: '朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。',
      F: '決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。',
      P: '毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。',
      A: '「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。',
      T: '朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。',
      C: '体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。',
      D: '距離を伸ばす・ペースを上げるという方向での挑戦ができます。',
    },
  },
];

// ────────────────────────────────────────────────────────────────────────
// ペア説明文生成
// ────────────────────────────────────────────────────────────────────────

const AXIS_DIFF_DESC = {
  social: {
    'SG': (typeS, typeG) => `${typeS}は一人で完結するスタイルを好み、${typeG}は誰かと共有することからエネルギーを得ます。`,
    'GS': (typeG, typeS) => `${typeG}は誰かと一緒に動くことからエネルギーを得る一方、${typeS}は一人のペースを大切にします。`,
  },
  structure: {
    'FP': (typeF, typeP) => `${typeF}は気分や流れに合わせて動くのが自然で、${typeP}は計画や段取りがあると安心できます。`,
    'PF': (typeP, typeF) => `${typeP}は計画や段取りがあると本領を発揮し、${typeF}は気分や流れに合わせて動くのが自然です。`,
  },
  resilience: {
    'AT': (typeA, typeT) => `${typeA}は失敗をさほど引きずらず前に進みやすく、${typeT}は一つ一つの体験を深く感じ取ります。`,
    'TA': (typeT, typeA) => `${typeT}は体験を深く感じ取り丁寧に向き合う一方、${typeA}は失敗をすぐに切り替えて前に進みます。`,
  },
  intensity: {
    'CD': (typeC, typeD) => `${typeC}はゆるく長く続けることを大切にし、${typeD}は挑戦や達成を通じてやる気が出てきます。`,
    'DC': (typeD, typeC) => `${typeD}は挑戦や達成からエネルギーを得る一方、${typeC}はゆるく無理なく続けることを大切にします。`,
  },
};

const SAME_AXIS_DESC = {
  social: {
    S: '2人ともひとりで完結するスタイルを好みます',
    G: '2人ともグループや他者との共有からエネルギーを得ます',
  },
  structure: {
    F: '2人とも計画より流れや直感を大切にします',
    P: '2人とも計画を立ててから動くスタイルが合っています',
  },
  resilience: {
    A: '2人とも失敗をひきずらず切り替えが早いです',
    T: '2人とも体験を深く感じ取り、理想を持って取り組みます',
  },
  intensity: {
    C: '2人ともゆるく安定したペースを好みます',
    D: '2人とも挑戦や追い込みでやる気が出るタイプです',
  },
};

function generatePairDescription(typeA, typeB, axA, axB, diffs) {
  const matches = ['social','structure','resilience','intensity'].filter(a => !diffs.includes(a));

  const matchParts = matches.map(axis => SAME_AXIS_DESC[axis][axA[axis]]);
  const diffParts = diffs.map(axis => {
    const vA = axA[axis];
    const vB = axB[axis];
    const key = vA + vB;
    const fn = AXIS_DIFF_DESC[axis][key];
    return fn ? fn(typeA, typeB) : '';
  }).filter(Boolean);

  let desc = '';
  if (diffs.length === 0) {
    return `すべての軸で共通するタイプです。同じ好みや価値観を持っているため、活動の選択で揉めることはほとんどありません。`;
  }
  if (diffs.length === 4) {
    desc = `${diffParts.join('一方、')}4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。`;
    return desc;
  }
  if (matchParts.length > 0) {
    desc += `${matchParts.join('・')}という共通点があります。`;
  }
  if (diffParts.length > 0) {
    desc += (desc ? 'その一方で、' : '') + diffParts.join('また、');
    desc += 'この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。';
  }
  return desc;
}

// ────────────────────────────────────────────────────────────────────────
// 活動選択
// ────────────────────────────────────────────────────────────────────────

function scoreActivity(act, axA, axB, diffs) {
  let score = act.base_score[axA.social]     + act.base_score[axA.structure]
            + act.base_score[axA.resilience] + act.base_score[axA.intensity]
            + act.base_score[axB.social]     + act.base_score[axB.structure]
            + act.base_score[axB.resilience] + act.base_score[axB.intensity];
  diffs.forEach(d => { score += (act.bridge_bonus[d] || 0) * 2; });
  return score;
}

function selectActivities(axA, axB, diffs) {
  const scored = ACTIVITIES.map(a => ({ act: a, score: scoreActivity(a, axA, axB, diffs) }));
  scored.sort((a, b) => b.score - a.score);

  // 多様性確保：タグが重複しないように上位から選ぶ
  const selected = [];
  const usedTags = new Set();
  for (const { act } of scored) {
    const tag = act.tags[0];
    if (!usedTags.has(tag) || selected.length < 3) {
      selected.push(act);
      usedTags.add(tag);
      if (selected.length === 3) break;
    }
  }
  // フォールバック
  while (selected.length < 3) selected.push(scored[selected.length].act);
  return selected.slice(0, 3);
}

// ────────────────────────────────────────────────────────────────────────
// 活動説明文生成
// ────────────────────────────────────────────────────────────────────────

const COMBO_SENTENCES = {
  social: {
    'SG': (tS, tG) => `この活動では、${tG}が共有体験として楽しみながら、${tS}が自分のペースを保って参加できます。それぞれが求めるものを得られる構造になっています。`,
    'GS': (tG, tS) => `${tG}が場の活気を生み出し、${tS}がそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。`,
  },
  structure: {
    'FP': (tF, tP) => `${tP}が基本的な枠組みを設けることで${tF}が安心して即興的に動け、${tF}がいることで${tP}も細かいことを気にしすぎずに済みます。`,
    'PF': (tP, tF) => `${tP}が枠組みを用意し、その中で${tF}が自然体で動くという役割分担が機能します。`,
  },
  resilience: {
    'AT': (tA, tT) => `${tA}の「大丈夫、気にしなくていいよ」という姿勢が${tT}にとっての安心材料になります。${tT}が深く感じ取った気づきを伝えることで活動がより豊かになります。`,
    'TA': (tT, tA) => `${tA}が前向きなペースを作り、${tT}が体験を丁寧に受け取るという組み合わせです。${tT}の感受性が活動の質を高めます。`,
  },
  intensity: {
    'CD': (tC, tD) => `${tD}が活動の意欲を引き上げ、${tC}が「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。`,
    'DC': (tD, tC) => `${tD}がペースを作り、${tC}がそれを受け止める構造です。${tC}がいることで${tD}も無理しすぎずに楽しめます。`,
  },
};

function generateActivityDescription(act, typeA, typeB, axA, axB, diffs) {
  // 各タイプの軸を2つ選択: (1)差異となる軸を優先, (2)それ以外から1つ
  function pickAxes(ax) {
    const ALL_AXIS_NAMES = ['social','structure','resilience','intensity'];
    const diffVals   = diffs.map(d => ax[d]);
    const nonDiffVals = ALL_AXIS_NAMES.filter(a => !diffs.includes(a)).map(a => ax[a]);
    const chosen = [];
    if (diffVals.length > 0) chosen.push(diffVals[0]);
    if (nonDiffVals.length > 0) chosen.push(nonDiffVals[0]);
    if (chosen.length < 2 && diffVals.length > 1) chosen.push(diffVals[1]);
    if (chosen.length < 2 && nonDiffVals.length > 1) chosen.push(nonDiffVals[1]);
    return chosen;
  }

  const axesA = pickAxes(axA);
  const axesB = pickAxes(axB);

  const descsA = axesA.map(v => act.axis_desc[v]).filter(Boolean);
  const descsB = axesB.map(v => act.axis_desc[v]).filter(Boolean);

  const descA = `${typeA}にとって、${descsA.join('また、')}`;
  const descB = `${typeB}にとっては、${descsB.join('また、')}`;

  const comboParts = diffs.map(diff => {
    const vA = axA[diff];
    const vB = axB[diff];
    const key = vA + vB;
    const fn = COMBO_SENTENCES[diff]?.[key];
    return fn ? fn(typeA, typeB) : null;
  }).filter(Boolean);

  const comboSentence = comboParts.length > 0
    ? comboParts[0]
    : `この活動は2人ともが自分のスタイルで楽しめる構造になっています。`;

  return `${descA}\n\n${descB}\n\n${comboSentence}`;
}

// ────────────────────────────────────────────────────────────────────────
// ヒント文生成（誘う方向別）
// ────────────────────────────────────────────────────────────────────────

const TIP_TEMPLATES = {
  social: {
    'S_invites_G': (inviter, invitee) =>
      `${invitee}は一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。`,
    'G_invites_S': (inviter, invitee) =>
      `${invitee}は義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。`,
  },
  structure: {
    'F_invites_P': (inviter, invitee) =>
      `${invitee}は何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。`,
    'P_invites_F': (inviter, invitee) =>
      `詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。`,
  },
  resilience: {
    'A_invites_T': (inviter, invitee) =>
      `${invitee}は「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。`,
    'T_invites_A': (inviter, invitee) =>
      `${invitee}は「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。`,
  },
  intensity: {
    'C_invites_D': (inviter, invitee) =>
      `${invitee}のほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。`,
    'D_invites_C': (inviter, invitee) =>
      `${invitee}のペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。`,
  },
};

function generateTip(inviterCode, inviteeCode, inviterAxes, inviteeAxes, diffs) {
  const parts = diffs.map(diff => {
    const vInviter = inviterAxes[diff];
    const vInvitee = inviteeAxes[diff];
    const key = `${vInviter}_invites_${vInvitee}`;
    const fn = TIP_TEMPLATES[diff]?.[key];
    return fn ? fn(inviterCode, inviteeCode) : null;
  }).filter(Boolean);

  if (parts.length === 0) {
    return `2人のスタイルは似ているため、誘い方はシンプルに「一緒に行こう」で十分です。日時と場所を決めるだけでスムーズに進みます。`;
  }
  return parts.slice(0, 2).join(' また、');
}

// ────────────────────────────────────────────────────────────────────────
// SQL エスケープ
// ────────────────────────────────────────────────────────────────────────

function esc(str) {
  return str.replace(/'/g, "''");
}

// ────────────────────────────────────────────────────────────────────────
// メイン生成処理
// ────────────────────────────────────────────────────────────────────────

function generate() {
  const lines = [];
  lines.push('-- 運動タイプ相性チェック コンテンツ INSERT SQL');
  lines.push('-- Generated by generate-compat.js');
  lines.push('');
  lines.push('BEGIN;');
  lines.push('');

  const pairs = [];
  for (let i = 0; i < TYPES.length; i++) {
    for (let j = i + 1; j < TYPES.length; j++) {
      const [typeA, typeB] = [TYPES[i], TYPES[j]].sort();
      pairs.push([typeA, typeB]);
    }
  }

  for (const [typeA, typeB] of pairs) {
    const axA = parseType(typeA);
    const axB = parseType(typeB);
    const diffs = findDiffs(axA, axB);

    const pairDesc = generatePairDescription(typeA, typeB, axA, axB, diffs);
    const activities = selectActivities(axA, axB, diffs);

    // Insert pair
    lines.push(`INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)`);
    lines.push(`VALUES ('${typeA}', '${typeB}', '${esc(pairDesc)}')`);
    lines.push(`ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;`);
    lines.push('');

    // Insert activities
    activities.forEach((act, idx) => {
      const order = idx + 1;
      const desc = generateActivityDescription(act, typeA, typeB, axA, axB, diffs);
      const tipAB = generateTip(typeA, typeB, axA, axB, diffs);
      const tipBA = generateTip(typeB, typeA, axB, axA, diffs);

      lines.push(`INSERT INTO exercise_v2_compat_activities`);
      lines.push(`  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)`);
      lines.push(`SELECT`);
      lines.push(`  id,`);
      lines.push(`  ${order},`);
      lines.push(`  '${esc(act.name)}',`);
      lines.push(`  '${act.emoji}',`);
      lines.push(`  '${esc(desc)}',`);
      lines.push(`  '${esc(tipAB)}',`);
      lines.push(`  '${esc(tipBA)}'`);
      lines.push(`FROM exercise_v2_compat_pairs WHERE type_a = '${typeA}' AND type_b = '${typeB}'`);
      lines.push(`ON CONFLICT (pair_id, activity_order) DO UPDATE`);
      lines.push(`  SET activity_name = EXCLUDED.activity_name,`);
      lines.push(`      activity_emoji = EXCLUDED.activity_emoji,`);
      lines.push(`      description = EXCLUDED.description,`);
      lines.push(`      tip_a_invites_b = EXCLUDED.tip_a_invites_b,`);
      lines.push(`      tip_b_invites_a = EXCLUDED.tip_b_invites_a;`);
      lines.push('');
    });
  }

  lines.push('COMMIT;');
  return lines.join('\n');
}

process.stdout.write(generate());
