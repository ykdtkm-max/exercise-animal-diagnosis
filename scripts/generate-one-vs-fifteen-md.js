#!/usr/bin/env node
'use strict';

/**
 * 16タイプ×各15組の比較Markdownを出力する。
 * 軸ロジックは generate-compat.js の parseType / findDiffs と同等。
 */

const OUT_DIR =
  '/Users/takumi.ikeda/運動タイプ診断/ドキュメント/05_1対15比較図';

const TYPES_SORTED = [
  'GFMC',
  'GFMH',
  'GFVC',
  'GFVH',
  'GPMC',
  'GPMH',
  'GPVC',
  'GPVH',
  'SFMC',
  'SFMH',
  'SFVC',
  'SFVH',
  'SPMC',
  'SPMH',
  'SPVC',
  'SPVH',
];

const META = {
  GFMC: {
    name: '盛り上げ隊長',
    axisLine: 'Group / Flow / ありたい / Calm',
    tagline: '誰かと一緒なら、自然と動き出せる。',
    summary:
      '相手との同席や声かけが最大の着火点。**誰といるか**が運動の質を決める。記録より「一緒に楽しい時間」。',
  },
  GFMH: {
    name: 'お祭り遊牧民',
    axisLine: 'Group / Flow / ありたい / Hard',
    tagline: '熱い場所と体験が、燃料になる。',
    summary:
      'イベント・フェス・大会など**熱量の場**が燃料。定期的な単調ルーティンは苦手。**次の体験**をキューしておくのが続くコツ。',
  },
  GFVC: {
    name: '温もり提供者',
    axisLine: 'Group / Flow / なりたい / Calm',
    tagline: '一緒にいる人の存在が、動く理由になる。',
    summary:
      '**特定の絆ある少人数**で最も機能。匿名グループより顔見知りとの約束。**誰と一緒か**・穏やかさが優先。',
  },
  GFVH: {
    name: '熱狂伝道者',
    axisLine: 'Group / Flow / なりたい / Hard',
    tagline: '誰かが本気になると、自分も本気になる。',
    summary:
      '外部の熱量で着火。**仲間が本気の場**にいられたとき強い。単独ログ中心・熱さのない義務グループとは相性が悪い。',
  },
  GPMC: {
    name: 'コミュニティ長老',
    axisLine: 'Group / Plan / ありたい / Calm',
    tagline: '毎週同じ場所に、必ず現れる。',
    summary:
      '**同じ場所・同じリズム**のグループ長期継続が核。イベント一発より定例。**静かな顔ぶれでの積み重ね**を重視。',
  },
  GPMH: {
    name: '勝利の女神',
    axisLine: 'Group / Plan / ありたい / Hard',
    tagline: '目標を決め、仲間を巻き込み、計画で勝ちに行く。',
    summary:
      'チーム目標・逆算計画・**勝ちに行く**文脈で燃える。**誰かのために立てた計画**が自分への動機にもなるタイプ。',
  },
  GPVC: {
    name: 'チームの守り神',
    axisLine: 'Group / Plan / なりたい / Calm',
    tagline: '仲間のためなら、誰より長く続けられる。',
    summary:
      '**具体的な約束と負担感がないと動きにくい**。匿名・ドロップインより固定メンバー。仲間への誠実参加が続く。',
  },
  GPVH: {
    name: '熱血キャプテン',
    axisLine: 'Group / Plan / なりたい / Hard',
    tagline: 'チームが本気のとき、自分も本気になれる。',
    summary:
      'チーム・目標・締切セットで強い。**一丸となった責任・情熱**が燃料。ゆるグループ単独ワークは続きにくい。',
  },
  SFMC: {
    name: '気まぐれ散策者',
    axisLine: 'Solo / Flow / ありたい / Calm',
    tagline: '義務も目標もなく、気の向いたときだけ動く。',
    summary:
      '**「続けよう」と意識した瞬間に萎む**。記録・宣言・約束より、目的のない移動の伸長。自分のペースのみ。',
  },
  SFMH: {
    name: '直感の冒険家',
    axisLine: 'Solo / Flow / ありたい / Hard',
    tagline: '衝動が来たとき、一人で全力を出す。',
    summary:
      '**次の場所・体験リスト**駆動。同じ繰り返しにすぐ飽きる。**一人での衝動×高強度**がフィット。',
  },
  SFVC: {
    name: 'ほっこり探索者',
    axisLine: 'Solo / Flow / なりたい / Calm',
    tagline: '体より先に、心が動く。',
    summary:
      '**心が整ってから／動いたあと気持ちが変わる**運動。**繊細な内側**ともに動くので、競争・プレッシャー環境とは相性が悪い。',
  },
  SFVH: {
    name: '全力一匹狼',
    axisLine: 'Solo / Flow / なりたい / Hard',
    tagline: 'スイッチが入ったとき、一人で誰より深く追い込む。',
    summary:
      '**全力 or ゼロ**。**スイッチ**が入れば一人で燃えるが、義務参加・ゆるのみのグループはスイッチを遠ざける。',
  },
  SPMC: {
    name: 'ゆるり哲学者',
    axisLine: 'Solo / Plan / ありたい / Calm',
    tagline: 'いつの間にか、ずっと続いている。',
    summary:
      '**既存習慣への隣接**で続く。**静かな反復**。派手イベントで習慣を壊さないことが強み。',
  },
  SPMH: {
    name: '孤高の挑戦者',
    axisLine: 'Solo / Plan / ありたい / Hard',
    tagline: '昨日の数字を、今日塗り替える。',
    summary:
      '**ログ・タイム・数値の「昨日より」**なしに意欲が続きにくい。**一人での測定**が運動意味の中心。',
  },
  SPVC: {
    name: 'ルーティン課長',
    axisLine: 'Solo / Plan / なりたい / Calm',
    tagline: '完璧にやり切った日が、最高の報酬になる。',
    summary:
      '**時間・順番・曜日込みのルーティン**に美感。変化しまくる環境より**決まった型の反復**。',
  },
  SPVH: {
    name: '自己超越者',
    axisLine: 'Solo / Plan / なりたい / Hard',
    tagline: '緻密な計画と、妥協なき追い込み。',
    summary:
      '**計画通り実行×高強度**が両方揃って初めて意味が見える。**完璧志向**と過負荷リスクへの注意。',
  },
};

/** D3 は「錨タイプ」をキーとし、ペアへの reason は 錨側のコンテンツの文言 */
const D3 = {
  SFMC: {
    good: {
      GFMC:
        'どちらも計画なしで運動できる。GFMC に誘われるだけで自然に体が動く。「なんとなく一緒に動く」が続きやすい。',
      SFVC:
        '同じ Solo×Flow×Calm。義務感なしに穏やかに運動する姿勢が一致し、強制も競争もなくゆるく動ける。',
    },
    bad: {
      SPVH:
        '緻密計画・全力・記録更新は SFMC に義務と圧力。**ペース・目的・価値観が真逆**で気力が奪われやすい。',
      GPVH:
        'チーム主義・計画・高強度のプレッシャーが SFMC の苦手を詰め込んだ形。**声がかかるほど運動＝義務**が強まる。',
    },
  },
  SFMH: {
    good: {
      SPMH:
        '同じソロ・高強度系。SFMH の衝動に SPMH の計画記録が乗れば衝動を成果に転化しやすい。',
      GFMH:
        '同じ Flow×Hard。「次どこ行く？」がそのまま計画になり、体験欲求が増幅しやすい。',
    },
    bad: {
      SPVC:
        '「毎日同じルーティン」を正しく守る世界観は SFMH が最も失う環境。**反復・固定・義務が衝動を消す**。',
      GPVC:
        'チーム責務・決まった練習日・進捗管理が SFMH の気まぐれエンジンと相容れず、消耗しやすい。',
    },
  },
  SFVC: {
    good: {
      SFMC:
        '同じ Solo×Flow×Calm。**義務感なし・静か**に運動する姿勢が一致。**気が向いたときゆるく**が両方とも。',
      GFVC:
        'Flow×なりたい×Calm の繊細さ。**内省的ソロ × 場の温かさ**が心地よい距離で共鳴。',
    },
    bad: {
      GPMH:
        '勝つための計画と強度は SFVC の心負荷を上げやすく、**義務・競争・プレッシャーが積み重なると動けなくなる**。',
      SPVH:
        '「弱い自分を超える追い込み」が SFVC の「心が整ってから」と真逆。**心を無視した高強度は最も消耗**しやすい。',
    },
  },
  SFVH: {
    good: {
      SFMH:
        '同じ Solo・Flow・Hard。**スイッチが入れば全力**の価値観共有。干渉せず熱量を尊重し並走しやすい。',
      GFVH:
        'Flow×なりたい×Hard。熱量が一致。**GFVH の外向き熱さが着火剤**になることも多い。',
    },
    bad: {
      GPMC:
        '「みんなで長く安定」は SFVH の全力かゼロと摩擦。**ペース合わせ圧が意欲を削ぐ**。',
      SPVC:
        '毎日の習慣・記録重視が SFVH に縛られる構造。**スイッチのない日に動かされる**と詰みやすい。',
    },
  },
  SPMC: {
    good: {
      SPVC:
        '同じ Solo・Plan・Calm（習慣設計の向き合い方が近い）。**互いのリズムを乱さない**安心感。',
      GPMC:
        'Plan×ありたい×Calm の安定継続観が共鳴。**GPMC のコミュニティ内で SPMC が自分ペースを保てる**関係。',
    },
    bad: {
      GFVH:
        'GFVH の爆発的巻き込みが SPMC の静かな継続を壊しやすい。**一緒に全力**が習慣を乱し消耗しやすい。',
      GFMH:
        'ノープラン高テンションが SPMC の積み上げ習慣を崩しやすい。**衝動型は内省的継続観と真逆**。',
    },
  },
  SPMH: {
    good: {
      SFMH:
        '同じ Solo・ありたい・Hard。SFMH の衝動に SPMH の設計が乗り、**目標熱量が共鳴**しやすい。',
      GPMH:
        'Plan×ありたい・Hard。**ソロ記録とチーム勝利**が別軸で燃え、高い基準を尊重しやすい。',
    },
    bad: {
      GFVC:
        '「みんながつながる穏やかな時間」という GFVC の価値観は SPMH の「記録更新と自己超越」とは真逆。SPMH のストイックさが GFVC にプレッシャーを与え、関係が息苦しくなりやすい。',
      SFMC:
        '気が向いたら動く SFMC は SPMH には怠惰にも映り、SPMH の追い込みは SFMC の動力を削りやすい。',
    },
  },
  SPVC: {
    good: {
      SPMC:
        '同じ Solo・Plan・Calm。**静かな習慣志向**。**同じ時間帯に並走**しやすい。',
      GPVC:
        'Plan・なりたい・Calm。**責任感と慎重さ**が。**個人ルーティン × チーム継続**が相互補完。',
    },
    bad: {
      GFMH:
        '計画なし・全力・新体験は SPVC の設計と真逆。**思いつき誘いでルーティンが根ごと崩れる**。',
      SFMH:
        '両方とも高強度とも言えるが**継続の文法が違う**。SFMH の衝動運用が習慣と時間を揺らがす。',
    },
  },
  SPVH: {
    good: {
      SPMH:
        '同じ Solo・Plan・Hard。目標との向き合いと継続の真剣さが一致。**静かに限界更新**し合える。',
      GPVH:
        'Plan・なりたい・Hard。**追い込み強度と覚悟**が共鳴し、GPVH の熱が SPVH の炎に火をつける。',
    },
    bad: {
      GFMC:
        '「楽しく気軽に」は SPVH の弱さを超える追い込み動機と真逆。**明るいゆるさが緊張感の欠如**に映りやすい。',
      SFMC:
        '義務なし・記録なしは SPVH に理解しがたい怠惰になりやすく、**価値観のずれで息苦しさ**が出やすい。',
    },
  },
  GFMC: {
    good: {
      SFMC:
        'GFMC は誰かがいれば、SFMC は縛られなければ。**細かい計画なしで「ちょっと歩かない？」**で火がつきやすい。',
      GFVC:
        '「一緒に・気分で・追い込みすぎない」温度感が近い。**居心地**を核にしたゆるいグループを作りやすい。',
    },
    bad: {
      SPVH:
        'SPVH はソロでログと計画、GFMC は即興。**同じ空間で集中と本気の見え方がすれ違い**、緊張が溜まりやすい。',
      SPMH:
        'SPMH は一人黙々数字、GFMC は賑やか即興。**非効率と冷たさのレッテル**に化けやすい。',
    },
  },
  GFMH: {
    good: {
      SFMH:
        'Flow×ありたい・Hard。「次どこ行く？」で体験欲求が増幅。**ソロ探求に GFMH が人を足す**と幅が広がる。',
      GFVH:
        'Group・Flow・Hard。**高テンションで体験共有**が一致。企画力と熱量で場を上げやすい。',
    },
    bad: {
      SPVC:
        '毎日の習慣・記録は GFMH に窮屈。**誘いでルーティンが壊れ、SPVC は GFMH をリスク視**しやすい。',
      SPMC:
        'SPMC の静かな習慣ペースと GFMH の全力テンションは両立しにくい。**消耗と物足りなさ**の往復。',
    },
  },
  GFVC: {
    good: {
      SFVC:
        'Flow・なりたい・Calm の感受性。**内省ソロ × 場の温かさ**が共鳴し心の状態を尊重しやすい。',
      GFMC:
        'Group・Flow・Calm。**明るさと内側の温かさ**が補い合い、グループを包みやすい。',
    },
    bad: {
      SPMH:
        'SPMH のストイックさが「安心して運動できる場」に緊張を入れ、**強さ圧が繊細さを傷つけ**やすい。',
      SPVH:
        '「弱さを認めない追い込み」と「心の状態を受け入れる」が矛盾。**やさしさが甘さに映る**ことも。',
    },
  },
  GFVH: {
    good: {
      SFVH:
        'Flow・なりたい・Hard の高強度。**スイッチと熱量が触れ合い**、片方の全力がもう片方の着火剤に。',
      GFMH:
        'Group・Flow・Hard。**イベント感で一気に動く**テンションが一致。企画と行動で場を高めやすい。',
    },
    bad: {
      SPMC:
        '静かな継続哲学と GFVH の爆発的巻き込みは折り合いにくい。**ペースが崩れ GFVH はノイズ**に感じられやすい。',
      SPVC:
        '計画・記録の継続観と衝動型熱量は相容れない。**巻き込みで習慣が崩れ、SPVC にとって天敵**になりやすい。',
    },
  },
  GPMC: {
    good: {
      SPMC:
        'Plan・ありたい・Calm の安定継続観。**個人習慣とコミュニティ継続**が補い合い急かさない。',
      GPVC:
        'Group・Plan・Calm。**仲間への責任と着実な継続**が一致。**長く続くチームの基盤**になりやすい。',
    },
    bad: {
      SFVH:
        '「スイッチが入ったときだけ全力」は定例グループ運営と摩擦。**ムラのある参加が運営を乱す**。',
      SFMH:
        '衝動・出入り不定は GPMC の長期視点と衝突し、**安定した空気を壊す**印象になりやすい。',
    },
  },
  GPMH: {
    good: {
      SPMH:
        'Plan・ありたい・Hard。**個人記録とチーム勝利**が別軸で燃え、向上心が刺激になる。',
      GPVH:
        'Group・Plan・Hard。**勝ちへの意志と強度**が一致。戦略と情熱のコンビになりやすい。',
    },
    bad: {
      SFVC:
        '「心が整ってから」と「勝つために追い込む」が根本ずれ。**期待が過大プレッシャー**になり運動できなくなる。',
      SFMC:
        '無計画・無目標は戦略側から機能不全に映り、**リードが義務になり SFMC が離れる**。',
    },
  },
  GPVC: {
    good: {
      SPVC:
        'Plan・なりたい・Calm。**誠実な継続者同士**。ソロルーティンとチーム継続が補完。',
      GPMC:
        'Group・Plan・Calm。**経験と実行力で長続き軸に**。チーム継続の核になりやすい。',
    },
    bad: {
      SFMH:
        '気まぐれな衝動と離脱の繰り返しは GPVC が守りたい安定を脅かし、**裏切りに映り**やすい。',
      SFVH:
        '「自分のスイッチ次第」が相互責任と衝突し、**穴あけへの不信感**が溜まりやすい。',
    },
  },
  GPVH: {
    good: {
      SPVH:
        'Plan・なりたい・Hard。**孤独の追い込みとチームの背景**。**強度への要求が一致**。',
      GPMH:
        'Group・Plan・Hard。**勝ちへの意志**。GPMH の戦略と GPVH の牽引力でチームを引き上げやすい。',
    },
    bad: {
      SFMC:
        'チーム責務・計画遵守・高強度は SFMC と正反対。**リード応答で SFMC の自由が消える**。',
      SFVC:
        'SFVC の繊細な心の状態を優先する運動スタイルは GPVH の強引な熱量と根本的に合わない。**プレッシャー**で身体が固まり運動自体が苦痛になりやすい。',
    },
  },
};

const AXIS_KEYS = ['social', 'structure', 'resilience', 'intensity'];

const AXIS_LABELS = {
  social: {
    name: '社会結合',
    minus: 'Solo（一人／自律）',
    plus: 'Group（グループ／他者との同時）',
  },
  structure: {
    name: '方法論',
    minus: 'Flow（気分・即興／記録拘束に弱い）',
    plus: 'Plan（計画・ログ・ルーティン構造）',
  },
  resilience: {
    name: 'ありたい／なりたい（在り方 vs なる像）',
    minus: 'ありたい（在り方・いまとの整合／切り替え）',
    plus: 'なりたい（なる像・理想が先）',
  },
  intensity: {
    name: '負荷志向',
    minus: 'Calm（維持・低〜中控えめ）',
    plus: 'Hard（追い込み・高達成欲求）',
  },
};

function parseType(code) {
  return {
    social: code[0],
    structure: code[1],
    resilience: code[2],
    intensity: code[3],
  };
}

function hamming(pa, pb) {
  let d = 0;
  if (pa.social !== pb.social) d++;
  if (pa.structure !== pb.structure) d++;
  if (pa.resilience !== pb.resilience) d++;
  if (pa.intensity !== pb.intensity) d++;
  return d;
}

function poleLabel(axisKey, letter) {
  const L = AXIS_LABELS[axisKey];
  const minusLetter =
    axisKey === 'social' ? 'S' : axisKey === 'structure' ? 'F' : axisKey === 'resilience' ? 'M' : 'C';
  return letter === minusLetter ? L.minus : L.plus;
}

function describeAxisMatch(pa, pb) {
  const lines = [];
  for (const k of AXIS_KEYS) {
    if (pa[k] === pb[k]) {
      const L = AXIS_LABELS[k];
      lines.push(`- **${k}（${L.name}）一致**: ${poleLabel(k, pa[k])}`);
    }
  }
  return lines.length ? lines.join('\n') : '*（共通する軸はこのペアにはない）*';
}

function describeAxisDiff(pa, pb) {
  const lines = [];
  for (const k of AXIS_KEYS) {
    if (pa[k] !== pb[k]) {
      const L = AXIS_LABELS[k];
      const aShort = poleLabel(k, pa[k]).split('（')[0];
      const bShort = poleLabel(k, pb[k]).split('（')[0];
      lines.push(`- **${L.name}**: 基準型は「${aShort}」／相手は「${bShort}」。`);
    }
  }
  return lines.join('\n');
}

function d3Paragraph(anchor, otherCode) {
  const block = D3[anchor];
  if (!block) return '**D3 相性（公式リスト）**: データなし。';
  let kind = '';
  let reason = '';
  if (block.good && block.good[otherCode]) {
    kind = '相性リスト **good（補完的に相性よし）**';
    reason = block.good[otherCode];
  } else if (block.bad && block.bad[otherCode]) {
    kind = '相性リスト **bad（すれ違い・摩擦が出やすい）**';
    reason = block.bad[otherCode];
  } else {
    return (
      '**D3 相性（公式リスト）**: このペアはコンテンツ上の **good/bad の4枠には入っていない**（リスト外）。' +
      '相性評価は軸の一致度数・運動コンテキストのすり合わせで別途判断する。**誤認防止のためリスト外でも軸のみでは「良」「悪」と断定しない**こと。'
    );
  }
  return `**D3（${META[anchor].name} のコンテンツ）**: ${kind}。\n\n> ${reason}`;
}

function exerciseImplications(_anchor, _other, hd) {
  if (hd === 4) {
    return (
      '運動コンテキスト上のひとことがり: **4軸すべて対極**。「何をしていればよい運動だったか」の定義自体が両極になりやすい。**目的・強度・誰との約束まで別物として扱い**すり合わせないと誤解が積み上がりやすい。'
    );
  }
  if (hd === 3) {
    return (
      '運動コンテキスト上のひとことがり: **一致は1軸のみ**。残りは価値観が大きく食い違う典型。**「共通の運動」を無理に一つにしない**（並走・別メニュー・別日）と摩擦が減りやすい。'
    );
  }
  if (hd === 2) {
    return (
      '運動コンテキスト上のひとことがり: **共通はちょうど2軸**。半分共通・半分差なので、【差の2軸】だけ明示的に確認（グループ運動可否／ログの見せ方など）すると安全。'
    );
  }
  return (
    '運動コンテキスト上のひとことがり: **共通は3軸（隣接タイプ）**。差異は1軸だけなのでトリガーの言い換えで収まりやすいが、**見落とされるとだけが刺さって衝突**しやすい。'
  );
}

function buildFile(anchorCode) {
  const a = META[anchorCode];
  const pa = parseType(anchorCode);
  const opponents = TYPES_SORTED.filter((t) => t !== anchorCode);
  let md = `# [${anchorCode}] ${a.name} — 他15タイプとの比較（1対15）\n\n`;
  md += `**公式4軸（英字コード）**: ${a.axisLine}\n\n`;
  md += `**キャッチコピー（A2）**: ${a.tagline}\n\n`;
  md += `**このタイプの要約**: ${a.summary}\n\n`;

  md += `## 軸スキーマの読み方（\`scripts/generate-compat.js\` の \`parseType\` と対応）\n\n`;
  md += '| 桁 | 低スコア側 | 高スコア側 |\n';
  md += '|----|-------------|-------------|\n';
  md += '| 1 | Solo (S) | Group (G) |\n';
  md += '| 2 | Flow (F) | Plan (P) |\n';
  md += '| 3 | ありたい (M) | なりたい (V) |\n';
  md += '| 4 | Calm (C) | Hard (H) |\n\n';
  md +=
    '**ハミング距離**: 4軸のうち異なる桁の本数。距離 **4** は4軸すべて対極（相性スコアリング上も \`bridge_bonus\` が別扱いになりやすい離れ値）。\n\n';
  md += '---\n\n';

  for (const otherCode of opponents) {
    const b = META[otherCode];
    const pb = parseType(otherCode);
    const hd = hamming(pa, pb);
    md += `## vs [${otherCode}] ${b.name}\n\n`;
    md += `### 軸の一致（共通）\n\n${describeAxisMatch(pa, pb)}\n\n`;
    md += `### 軸の相違（差分）\n\n${describeAxisDiff(pa, pb)}\n\n`;
    const hdNote =
      hd === 4
        ? '4軸すべて対極。相性ロジック上も「橋渡し」が効きにくい典型的離れ値'
        : hd === 3
          ? '共通は1軸のみ（ずれは3軸）'
          : hd === 2
            ? '共通は2軸（ずれも2軸）'
            : '隣接タイプ（共通3軸・ずれ1軸）';
    md += `### ハミング距離\n\n**${hd}**（${hdNote}）\n\n`;
    md += `### 運動への含意（補足）\n\n${exerciseImplications(anchorCode, otherCode, hd)}\n\n`;
    md += `### D3 相性（公式コンテンツ）\n\n${d3Paragraph(anchorCode, otherCode)}\n\n`;
    md += `---\n\n`;
  }

  return md.trim() + '\n';
}

function main() {
  const fs = require('fs');
  const path = require('path');
  if (!fs.existsSync(OUT_DIR)) {
    fs.mkdirSync(OUT_DIR, { recursive: true });
  }
  for (const code of TYPES_SORTED) {
    const name = META[code].name;
    const filename = `${code}_${name}_vs_その他15タイプ.md`;
    const p = path.join(OUT_DIR, filename);
    fs.writeFileSync(p, buildFile(code), 'utf8');
    console.warn(' wrote', filename);
  }
}

main();
