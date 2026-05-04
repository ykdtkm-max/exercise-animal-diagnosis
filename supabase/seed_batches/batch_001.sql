INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SFMC', '気まぐれ散策者', 1) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SFMD', '直感の冒険家', 2) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SFVC', 'ほっこり探索者', 3) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SFVD', '全力一匹狼', 4) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SPMC', 'ゆるり哲学者', 5) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SPMD', '孤高の挑戦者', 6) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SPVC', 'ルーティン課長', 7) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('SPVD', '自己超越者', 8) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GFMC', '盛り上げ隊長', 9) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GFMD', 'お祭り遊牧民', 10) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GFVC', '温もり提供者', 11) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GFVD', '熱狂伝道者', 12) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GPMC', 'コミュニティ長老', 13) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GPMD', '勝利の女神', 14) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GPVC', 'チームの守り神', 15) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animals (code, type_name, sort_order) VALUES ('GPVD', '熱血キャプテン', 16) ON CONFLICT (code) DO UPDATE SET type_name = EXCLUDED.type_name, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SFMC', '義務も目標もなく、気の向いたときだけ動く。', $jge36ncre$["目的なんてない、なんか来ちゃった"]$jge36ncre$::jsonb,
    '目的のない移動', 'このタイプが最も自然に運動できるのは、義務でも目標でもなく、純粋な気分の衝動に乗ったときです。「なんとなく歩きたい」「あの道を通ってみたい」という微細な引力が出発点になることが多いです。「続けよう」と意識した瞬間にその衝動が萎む傾向があり、計画・記録・義務感が加わるほど体が重くなっていきます。

このタイプが最も長く運動を続けられるのは、それを「運動」と意識していないときです。気になる場所をぶらつく、遠回りして帰る、行ったことのない道を歩く——目的のない移動の延長に、このタイプの体は十分に動いています。自由であることそのものが動力の源になっており、義務や計測の感覚が入り込んだとき、それまで自然に続いていた動きが止まることが多いです。

他者のペースや目標に縛られることなく、自分だけの感覚を頼りに動くとき、このタイプは最もよく運動できています。一日も動けない週があっても、それはこのタイプには「普通」のことです。続けるための仕組みを手放すことが、実は最も長続きする秘訣です。',
    '「続けよう」をやめるコツ', '「継続しよう」という意識を手放すことが、このタイプには最も機能しやすいです。遠回りして帰る・気になる道を通ってみる・天気がいいからとりあえず外に出る——そういった小さな出発を積み重ねるだけでよいです。記録アプリを入れない、誰かに報告しない、目標を設定しないことが継続の前提条件になります。

「最近運動してる？」と聞かれることもプレッシャーになりやすいため、自分の中だけで続けていることが、このタイプの理想の環境です。次に歩きたいルートや気になる場所を頭の中にメモしておくと、気分が乗ったときに自然に体が動き出しやすくなります。',
    'GFMC', 'どちらも計画なしで運動できるタイプ。GFMCに誘われるだけで自然に体が動く組み合わせです。プレッシャーなく参加できる居心地のよさがあり、「なんとなく一緒に動く」関係が続きやすいです。',
    'SPVD', '「緻密な計画で全力追い込み・記録更新」という動き方は、SFMCにとって義務と圧力の塊に映ります。ペースも目的も価値観も真逆で、関わるほど運動する気力が奪われやすいです。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SFMD', '衝動が来たとき、一人で全力を出す。', $jr0qobwou$["計画とかないけど、まあ行ったら何とかなるでしょ"]$jr0qobwou$::jsonb,
    '次の体験への渇望', 'このタイプの運動エンジンは、「次に行く場所」「次に試すこと」という具体的なビジョンによって駆動されることが多いです。「今日なんか燃えてきた」という直感的な衝動が出発点になりやすく、計画よりも本能に従って動く傾向があります。同じ活動の繰り返しに急速に飽きを感じ、新しい挑戦・場所・体験への欲求が常に更新され続けることが継続の前提になっています。

一人での活動を好み、他者のペースに縛られない自由な環境でこそ最大のパフォーマンスを発揮することが多いです。固定されたルーティンはこのタイプの運動意欲を徐々に奪っていきます。このタイプにとって「続ける」という概念は、同じことを繰り返す継続ではなく、体験の種類が更新され続ける連続に近いです。

終わった体験は次の体験の踏み台であり、同じことに戻ることへの強い抵抗感があるのはそのためです。「また同じことをしている」と感じた瞬間は、次のステップを探し始めるサインとして積極的に受け取るとよいです。',
    '次の体験を先に決めるコツ', '「次に行きたい場所・試したい活動」のリストを常に更新しておくことが最も機能する継続の仕組みです。次の体験の候補がなくなった瞬間にモチベーションが急落するため、「今の体験が終わる前に次を決める」習慣をつけるとよいです。同じルートや同じメニューが繰り返しになってきたと感じたら、すぐに新しい活動に切り替えるのが自分に合った対処法です。

体験ベースの動力を活かすため、SNSやアウトドア系メディアで「次行きたい場所」を眺める時間を設けておくことも有効です。「また同じことをしている」と感じた時点で、次のステップを探し始めるサインとして受け取るとよいです。',
    'SPMD', '一人で高い目標に向かって追い込む姿勢が共通しています。SFMDの衝動にSPMDの記録と計画が加わり、衝動を成果に変えられる組み合わせです。目標に向かう熱量が共鳴し、互いを刺激しながら成長できます。',
    'SPVC', '「毎日同じルーティンを正確に守る」という世界観は、SFMDが最も運動意欲を失う環境そのものです。反復・固定・義務という構造がSFMDの衝動エンジンを根本から消します。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SFVC', '体より先に、心が動く。', $j6f2y3jnv$["動くとなんか、頭が静かになる"]$j6f2y3jnv$::jsonb,
    '心と体のつながり', 'このタイプが運動したくなるとき、そのスイッチは心の状態にあることが多いです。気持ちが重いとき、頭が整理されていないとき、なんとなく外の空気が吸いたいとき——その微細な内側の変化が動き出す合図になりやすいです。義務感や数値目標ではなく、「動いた後に気持ちが変わった」という体験の質が継続の根拠になっています。

このタイプにとって運動はフィットネスよりもセラピーに近く、心と体が深く連動しているため、心が重いときに義務感で動こうとしても体がついてこないことが多いです。外からの刺激や競争よりも、自分の内側の感覚を丁寧に拾いながら行動するタイプで、一人の静かな時間の中で最も自然に運動できます。

心の状態に波があるぶん、運動できる日とそうでない日の落差が大きくなりやすいのも、このタイプのひとつの特徴です。「運動できない日があるのは意志が弱いからじゃない」——そう自分に伝えられることが、長く続けるための一番大切な認識です。',
    '心のサインを動く理由にする', '心が重い・頭が整理されていない・外の空気が吸いたい——そういう微細なサインを運動のきっかけとして積極的に活用するとよいです。「気持ちを変えたいから動く」という動機を前面に出した設計が機能しやすいです。完璧な状態で始めようとせず、「5分だけ歩く」「ストレッチだけする」というように量を極限まで小さく設定することが継続のカギになります。

運動できなかった日の自己嫌悪は不要で、動けない日は「今日の心の状態がそういう状態だった」と事実として受け取るだけでよいです。心が整った後には自然に体も動き始めるため、動けない時期に無理に習慣化しようとしないことが長期継続の条件です。',
    'SFMC', '自分のペースで気の向くままに穏やかに動く姿勢が共通しています。義務感なしに静かに運動する姿勢が完全に一致します。強制も競争もなく、気が向いたときにゆるく動ける関係が自然に長続きします。',
    'GPMD', '「勝つための計画と強度」を重視するGPMDの環境はSFVCの心への負荷を一気に高めます。義務・競争・プレッシャーが積み重なるほどSFVCは体が動かなくなっていきます。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SFVD', 'スイッチが入ったとき、一人で誰より深く追い込む。', $jgb3gaqxw$["やるなら全力。それ以外に意味はない"]$jgb3gaqxw$::jsonb,
    '全力かゼロか', 'このタイプの運動は「全力 or ゼロ」の二値に近いです。スイッチが入った日の集中力と追い込みは本物で、一人で静かに、しかし内側では誰より熱く燃えていることが多いです。「やるなら本気でやりたい」という美学があり、中途半端な強度の活動には価値を感じにくい傾向があります。

スイッチが入らない日は運動意欲が湧かず、継続の波が大きいです。毎日コツコツ続けるという継続モデルよりも、全力を出せた日の体験が積み重なることで記録が形成されていくのが、このタイプの特徴です。スイッチが入っていないときの自分と、入っているときの自分が別人のように異なり、外から見ると「ムラがある」と映ることが多いです。

でも、それはこのタイプの燃料の性質であって、意志力の問題ではない。一人でいることを好み、他者のペースに縛られない環境での活動が本領を発揮する条件になります。',
    '着火環境を整えるコツ', 'スイッチが入ったときに即座に動き出せる環境を常に整えておくことが最も重要です。ジムは家の近く、ランニングシューズはすぐ手に取れる場所——着火から動き始めるまでの障壁を極限まで下げておくとよいです。スイッチが入りやすい状況を観察して記録しておくと（「プライドが刺激されたとき」「心に余裕があるとき」など）、そのパターンを意図的に作れるようになります。

毎日の継続を前提とした設計は合わないため、「スイッチが入った日に全力」というリズムを継続の単位として定義し直すとよいです。スイッチが入らない日が続いても、それは継続の失敗ではありません。',
    'SFMD', '一人で直感的に熱中する姿勢が共通しています。どちらも「スイッチが入ったら全力」という価値観を共有する。干渉せず互いの熱量を尊重しながら並走できる自然な関係です。',
    'GPMC', '「みんなで長く安定して続ける」というGPMCの価値観はSFVDの「全力かゼロ」という姿勢と根本から衝突します。ペースを合わせる圧力がSFVDの運動意欲を消します。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SPMC', 'いつの間にか、ずっと続いている。', $jp9ccljex$["特に理由はないけど、今日もやってきた"]$jp9ccljex$::jsonb,
    '地味な継続の哲学', 'このタイプが最も自然に運動を続けられるのは、決まったリズムで同じことを繰り返せるときです。派手さや激しさは必要なく、「今日もやれた」という静かな事実の積み重ねが最大の充実感になることが多いです。一人でルーティンを実行することを好み、他者の都合や外部の刺激に左右されにくい傾向があります。

強い意志力なしに継続できる設計、すなわち既存の生活習慣に隣接した形で運動を位置づけることが、このタイプに最も機能しやすいです。とはいえ、このタイプにも罠はあります。「これだけじゃ足りないのでは」という不安から激しいプログラムに手を出し、続かずに全体が崩れることが多いです。

このタイプの本当の強みは激しさではなく継続性にあり、派手な1週間より地味な1年が、このタイプにとって圧倒的な成果につながっています。習慣に乗っかれるから運動できるこのタイプにとって、「今日もできた」の積み重ねこそが最も強い自信の源になります。',
    '隣接させて始めるコツ', '既存の生活習慣に「隣接」させることを最優先にするとよい。歯磨きの後にストレッチ・電車を降りたら1駅歩く・昼休みに15分散歩する——すでにやっていることの前後に運動をくっつける設計が最も定着しやすいです。強度を上げたくなったときは週に1セッションだけ追加し、少なくとも4週間はその水準を維持してから次のステップに進むとよいです。

ルーティンが1日崩れても「また全部やり直し」と考えず、翌日からそのまま再開する習慣を意図的に作ることが重要です。「今日もやれた」という小さな事実の積み重ねが、このタイプにとって最も強力な継続の燃料になります。',
    'SPVC', '一人でコツコツと着実に続ける姿勢が共通しています。習慣設計への向き合い方が近く、静かに自分のペースを守る姿勢が一致します。互いの継続リズムを乱さない安心感があります。',
    'GFVD', 'GFVDの爆発的なエネルギーと強引な巻き込みはSPMCの静かな継続サイクルを破壊します。「一緒に全力でやろう」という熱量がSPMCの丁寧な習慣を乱し、消耗させます。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SPMD', '昨日の数字を、今日塗り替える。', $jibk9r4wx$["記録が更新されると、やめる理由がなくなる"]$jibk9r4wx$::jsonb,
    '昨日の自分という敵', 'このタイプの運動エンジンは、測定可能な記録と進捗によって駆動されることが多いです。タイム・重量・距離・体組成の変化が可視化されているとき、このタイプは最も安定して運動を続けられます。他者との比較ではなく過去の自分との比較が動力になるため、一人でのトレーニングでも高いモチベーションを維持できるのが特徴です。

停滞期がこのタイプの最大の危機で、記録が伸びない時期に継続の意味を見失いやすい傾向があります。複数の指標を持ち、常にどこかで「更新できる数字」を視野に入れておくことが安定した継続につながりやすいです。記録が途絶えた活動はこのタイプにとって「やった実感」を持ちにくく、自然と遠のく傾向があります。

成果の可視化はこのタイプにとって継続の装飾ではなく、なくてはならない前提条件です。測定があるからこそ全力を出せる——そのシンプルな構造を自分の強みとして活用するとよいです。',
    '複数の指標で停滞を乗り越えるコツ', '複数の指標を持つことが最も重要なコツです。タイムが止まっている時期でも筋力や体組成など別の指標で更新できていれば、継続の根拠を失わずに済みます。停滞期には新しい目標を設定するか、別の種目・別の指標を追加して「更新できる数字」を視野に入れ続けるとよいです。

目標は現実的な水準に設定し、達成後は少し間を置いてから次を設定することで燃え尽きを防ぎやすくなります。怪我や疲労のサインを無視しやすい傾向があるため、週1回はコンディションを確認する時間を設けることも長期継続のための重要なコツです。',
    'SFMD', '一人で明確な目標に向かって突き進む姿勢が共通しています。SFMDの衝動にSPMDの設計が加わり、互いを高め合える組み合わせです。目標に向かう熱量が一致しており、刺激し合いながら共に成長できます。',
    'GFVC', '「みんながつながる穏やかな時間」というGFVCの価値観はSPMDの「記録更新と自己超越」とは真逆です。SPMDのストイックさがGFVCにプレッシャーを与え、関係が息苦しくなりやすいです。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;