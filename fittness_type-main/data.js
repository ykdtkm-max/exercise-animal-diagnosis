/**
 * 運動タイプ診断 v2 — 32問（06_新診断仕様）
 * polarity: その質問で「賛成」が向かう極（軸のマイナス側 S/F/A/C または プラス側 G/P/T/D）
 */
window.EXERCISE_V2_OPTION_LABELS = [
  'とても賛成',
  '賛成',
  'どちらかといえば賛成',
  'どちらかといえば反対',
  '反対',
  'とても反対',
];

window.EXERCISE_V2_TYPE_ORDER = [
  'SFAC', 'SFAD', 'SFTC', 'SFTD', 'SPAC', 'SPAD', 'SPTC', 'SPTD',
  'GFAC', 'GFAD', 'GFTC', 'GFTD', 'GPAC', 'GPAD', 'GPTC', 'GPTD',
];

window.EXERCISE_V2_QUESTIONS = [
  // Axis 1: Solo(S) vs Group(G)
  { orderIndex: 1,  text: '集中して何かに取り組みたいとき、まず一人になれる環境を探す方だ',                                    axis: 1, polarity: 'S' },
  { orderIndex: 2,  text: '誰かと一緒にいると、一人のときより自然と活力がわいてくる',                                        axis: 1, polarity: 'G' },
  { orderIndex: 3,  text: '何かに取り組もうとするとき、一人でやるより仲間がいた方が動き出しやすい',                              axis: 1, polarity: 'G' },
  { orderIndex: 4,  text: 'グループでの活動や打ち合わせが続くと、一人になりたいという欲求が強くなる',                            axis: 1, polarity: 'S' },
  { orderIndex: 5,  text: '疲れたとき、人に会うより一人の時間を取る方が回復できる',                                         axis: 1, polarity: 'S' },
  { orderIndex: 6,  text: '新しいコミュニティや集まりに参加することに、あまり抵抗がない',                                     axis: 1, polarity: 'G' },
  { orderIndex: 7,  text: '自分のペースで進められることが、何かに取り組む上で特に大切にしていることのひとつだ',                     axis: 1, polarity: 'S' },
  { orderIndex: 8,  text: '友人が何か新しいことを始めたと聞くと、自分も一緒にやってみたいと思うことが多い',                        axis: 1, polarity: 'G' },
  // Axis 2: Flow(F) vs Plan(P)
  { orderIndex: 9,  text: '気が向いたことは、計画を立てる前にとりあえず始めてしまうことが多い',                               axis: 2, polarity: 'F' },
  { orderIndex: 10, text: '何かを始める前に、まずおおまかな計画や手順を考えてから動く方だ',                                   axis: 2, polarity: 'P' },
  { orderIndex: 11, text: '細かいスケジュールや手順を決められると、かえってやる気がそがれることがある',                          axis: 2, polarity: 'F' },
  { orderIndex: 12, text: '見通しが立っていると安心して取り組めるし、立っていないと落ち着かない',                              axis: 2, polarity: 'P' },
  { orderIndex: 13, text: 'その日の気分に合わせて行動できる方が、決めたことを淡々とこなすより自分らしい',                        axis: 2, polarity: 'F' },
  { orderIndex: 14, text: '急に予定が変わったり、段取りが狂ったりすると、気分が乱れやすい',                                   axis: 2, polarity: 'P' },
  { orderIndex: 15, text: 'やるべきことをリスト化したり整理したりすることに、ある種の達成感を覚える',                           axis: 2, polarity: 'P' },
  { orderIndex: 16, text: '先の予定をあまり決めず、直前に判断することの方が多い',                                          axis: 2, polarity: 'F' },
  // Axis 3: Assertive(A) vs Turbulent(T)
  { orderIndex: 17, text: 'うまくいかないことがあっても、比較的早く気持ちを切り替えられる方だ',                                axis: 3, polarity: 'A' },
  { orderIndex: 18, text: '批判されたり評価が低かったりすると、しばらく引きずってしまう方だ',                                 axis: 3, polarity: 'T' },
  { orderIndex: 19, text: '完璧にできなくてもとりあえず前に進む、という考え方が自分には合っている',                            axis: 3, polarity: 'A' },
  { orderIndex: 20, text: '周りと比べて自分が遅れていると感じると、やる気が落ちることが多い',                                 axis: 3, polarity: 'T' },
  { orderIndex: 21, text: '何かで行き詰まったとき、「次に何ができるか」を考える方に気持ちが向く',                              axis: 3, polarity: 'A' },
  { orderIndex: 22, text: '調子の良い日と悪い日の差が大きく、気分のムラを感じることが多い',                                  axis: 3, polarity: 'T' },
  { orderIndex: 23, text: '一度やめてしまったことでも、また始めることにあまり心理的な抵抗がない',                              axis: 3, polarity: 'A' },
  { orderIndex: 24, text: '調子が出ていないときは、無理に取り組んでも意味がないと感じる',                                    axis: 3, polarity: 'T' },
  // Axis 4: Calm(C) vs Drive(D)
  { orderIndex: 25, text: '自分のペースで無理なく続けることを、大きな成果より優先する方だ',                                   axis: 4, polarity: 'C' },
  { orderIndex: 26, text: '高い目標や難しい課題に向かうとき、燃えてくるような感覚がある',                                    axis: 4, polarity: 'D' },
  { orderIndex: 27, text: '少し余裕のある目標設定の方が、高い目標より自分には合っていると感じる',                              axis: 4, polarity: 'C' },
  { orderIndex: 28, text: '何かに取り組んでいて「もう少し頑張れる」と感じると、自然と限界を試したくなる',                        axis: 4, polarity: 'D' },
  { orderIndex: 29, text: '疲れたり消耗しそうなときは、ペースを落とすか休む方を迷わず選ぶ',                                   axis: 4, polarity: 'C' },
  { orderIndex: 30, text: '高い基準で結果を出すために、きつい局面も乗り越えることにモチベーションを感じる',                      axis: 4, polarity: 'D' },
  { orderIndex: 31, text: '過度なプレッシャーやノルマは、意欲を下げる方だ',                                               axis: 4, polarity: 'C' },
  { orderIndex: 32, text: 'ストイックに努力を重ねている人を見ると、自分もそうありたいという気持ちになる',                        axis: 4, polarity: 'D' },
];
