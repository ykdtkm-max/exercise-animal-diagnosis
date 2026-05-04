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
INSERT INTO public.exercise_animal_profiles (
    animal_code, tagline, catchphrases, concept_title, concept_body,
    continuation_title, continuation_body,
    compat_pill_good_code, compat_pill_good_reason, compat_pill_bad_code, compat_pill_bad_reason
  ) VALUES (
    'SPVC', '完璧にやり切った日が、最高の報酬になります。', $jn3j0zhiw$["同じ時間に同じことをする。それだけで整う"]$jn3j0zhiw$::jsonb,
    '型という美学', 'このタイプは、丁寧に設計されたルーティンを実行することに独自の美学と達成感を持っている。曜日・時間・場所・順番にこだわりがあり、それが崩れると「やった気がしない」という感覚が生じやすいです。完璧に実行できた日の充実感は独特で、このタイプにしか味わえないものです。

最大の課題は再起動コストの高さで、旅行や体調不良でルーティンが崩れると、そこから再開するまでに時間がかかる傾向があります。ルーティン自体を複雑に設計しすぎることも継続性を損なう要因になりやすいです。このタイプは反復の中に深い洗練を見出す感受性を持っており、同じことを繰り返すことが退屈ではなく、むしろ質の向上として体験されることが多いです。

崩れた日の「全部やり直したくなる」気持ちは、型へのこだわりの裏返しです。それはこのタイプが持つ美学の強さでもあります。',
    '崩れても再起動しやすい型のコツ', 'ルーティンはシンプルに保つことが最重要のコツです。完璧なルーティンを作ろうとするほど複雑化し、崩れやすくなる。最小限の動作で構成された「崩れても再起動しやすい型」を作ることを優先するとよい。

旅行や体調不良でルーティンが崩れた後は「全部やり直し」と考えず、「明日から3つだけ再開する」という縮小版から始めると再起動しやすくなります。ルーティンの完璧な実行より、不完全でも続けることのほうが長期的に価値があることを意識しておくとよいです。',
    'SPMC', '一人でコツコツと着実に続ける姿勢が共通しています。静かに続ける習慣への共鳴があります。互いのペースを乱さず、同じ時間帯に静かに並走できる関係が自然に続きやすいです。',
    'GFMD', 'GFMDの「計画なし・全力・新しい体験」はSPVCの習慣設計の真逆です。思いつきの誘いに応じるたびにルーティンが崩れ、SPVCの継続リズムが根こそぎ乱されます。'
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
    'SPVD', '緻密な計画と、妥協なき追い込み。', $j7yhddt57$["やるなら、計画通りじゃないと気が済まない"]$j7yhddt57$::jsonb,
    '完璧な計画の追求', 'このタイプは、計画の精度と実行の強度の両方を高水準で追い続けることが多いです。数値・記録・計画への妥協がなく、「目標通りやり切った」という達成感が最大の報酬になります。完璧な計画が崩れたときに「全部なかったこと」にしてしまいやすい傾向があり、最初から基準が高すぎて初期に燃え尽きるパターンも少なくありません。

身体からのサインより理想の計画を優先しがちで、無理をしやすいのもこのタイプの特徴です。高い理想と完璧にできない現実のギャップがこのタイプの最も大きなストレス源になりやすいです。このタイプの強みは「計画を正確に実行した先にだけ見える景色を知っている」ということで、その経験が積み重なることで他のタイプが到達しにくい水準の成果が生まれます。

計画が崩れたとき「全部やり直し」になりやすいのは意志の弱さではなく、高い基準が生み出す誠実さの裏返しです。その性質を理解したうえで、余白のある設計を取り入れることが長期継続のカギになります。',
    '余白のある計画を作るコツ', '計画に「80%達成でOK」という余白を意図的に設けることが最も重要なコツです。完璧な実行のみを前提にした設計は一度崩れると全体の崩壊につながりやすいです。目標は「A目標」と「B目標」を設定し、最悪の場合でもBは達成できる水準にしておくとよい。

計画が崩れたとき「全部なかったこと」にしないよう、崩れても記録だけは続けるルールを作ることが再起動の助けになります。身体からのサインを無視しやすいため、週に一度「コンディション確認の日」を設けて、計画を調整する時間を確保することも長期継続の重要な仕組みです。',
    'SPMD', '一人で計画的に限界まで追い込む姿勢が共通しています。目標への向き合い方と継続への真剣さが一致します。互いを煽らず、静かに励ましながら限界を更新し合える関係です。',
    'GFMC', 'GFMCの「楽しく気軽に運動しよう」という価値観はSPVDの「弱さを超えるための追い込み」という動機と真逆です。明るいゆるさが、SPVDには緊張感の欠如として映りやすいです。'
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
    'GFMC', '誰かと一緒なら、自然と動き出せます。', $je02b05ed$["誰かと行くだけで、倍楽しくなる"]$je02b05ed$::jsonb,
    '誰かがいれば運動できる', 'このタイプの運動動力は「一緒に動く相手の存在」にあることが多いです。活動の内容より誰と行くかが全てで、声をかけてもらうことが最も自然な起点になりやすいです。一人でのトレーニングが続かないのは意志力の問題ではなく、このタイプの動力源がどこにあるかを示しています。

大人数の場に独特の高揚感を感じ、その場の雰囲気に自然と溶け込みます。義務感や記録よりも、「一緒に楽しい時間を過ごせた」という体験そのものが継続の根拠になることが多いです。仲間がいれば強く、いなければ動き出せない——そのシンプルな特性がこのタイプの姿です。

このタイプは人を巻き込んで場を作る天才的なコミュニケーション力を持っており、コミュニティに引力を持つ存在として機能することが多いです。誰かがいなければ運動しないこの特性は意志力とは無関係で、動力源がどこに置かれているかの違いです。',
    '一緒に運動できる仕組みを作るコツ', '「定期的に一緒に運動できる人を作る」ことが最も重要なコツです。友人に「月1回一緒に歩こう」と声をかけること自体が、継続の仕組みを作る行動になります。運動する気力がないときほど誰かを誘ってみることを習慣にするとよい——誘えば自然に体が動き出すのがこのタイプです。

グループフィットネスクラスやウォーキングサークルのような「定期的に集まる場」に参加すると続けやすくなります。誘うことへの遠慮を手放し、「誘うことは相手への価値提供でもある」と捉えることが、継続の仕組みを自ら作れるようになる最初の一歩です。',
    'SFMC', 'GFMCは「誰かといれば運動できる」、SFMCは「縛られなければ運動できる」タイプ。細かい計画や記録を作らなくても、「今日ちょっと歩かない？」の一言で火がつきやすいです。GFMCが場づくりと声かけを担い、SFMCがノープランで乗っかる──義務感を増やさないまま、二人とも自然に体を動かし続けられる関係になりやすいです。',
    'SPVD', 'SPVDは一人で線を引き、ログと計画で自分を追い込むのが得意です。一方GFMCは雑談や「まあいいか」の合意で動きやすく、強度もメニューもその場でブレやすいです。同じ空間だと、SPVDには「集中できない・本気が見えない」と感じられ、GFMCには「空気が重い・急かされる」と感じられやすいです。お互いが心地よいリズムを壊し合い、コミュニティに緊張が溜まりやすいです。'
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
    'GFMD', '熱い場所と体験が、燃料になります。', $j503ocrjz$["大会エントリーさえすれば、体が動く"]$j503ocrjz$::jsonb,
    '熱量の場を求めて', 'このタイプの運動エンジンは、「次のイベント・次の熱量」によって駆動されることが多いです。大会・フェス・スポーツイベントという非日常的な熱量の場に身を置いたとき、このタイプは最大のパフォーマンスを発揮する。毎月同じジムに通うような定期的なルーティンは、このタイプの運動意欲を徐々に奪う傾向があります。

仲間と一緒に燃えることに最大の喜びを見出し、その体験の積み重ねがこのタイプのフィットネスになります。イベントが終わると一気にやる気を失うのも、このタイプの特性のひとつです。

このタイプにとって「継続」の意味は、毎日同じことを繰り返すことではなく、熱量の高い体験を次から次へと経験し続けることにあります。体験が燃料——そのシンプルな動力を理解して設計することが、このタイプの継続の核心です。',
    '次のイベントを先に決めるコツ', 'イベントや大会を先にカレンダーに入れることが最も機能する継続の仕組みです。「とりあえずエントリーする」ことで自然に体が動き始めます。未来のイベントが3ヶ月以上先までカレンダーにない状態が続くと運動意欲が落ちやすいため、イベントが終わったら次のイベントを探す習慣をつけるとよいです。

仲間を誘うときは「一緒に出よう」と具体的に誘うことが双方の継続の仕組みになります。月会費型のジムより「都度払い」「イベント払い」の設計のほうが心理的に合いやすい場合が多いです。',
    'SFMD', '直感と行動力で新しい体験を求める姿勢が共通しています。「次どこ行く？」を合い言葉に互いの体験欲求が増幅し合う。SFMDの一人での探求にGFMDが人を連れてくる形で、体験の幅が広がりやすいです。',
    'SPVC', 'SPVCの毎日の習慣と記録管理はGFMDにとって窮屈な牢屋に映ります。GFMDが誘うたびにSPVCのルーティンが壊れ、SPVCはGFMDをリスクとして捉えてしまいます。'
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
    'GFVC', '一緒にいる人の存在が、動く理由になる。', $j7hanq96a$["あの人と一緒だったから、来られた"]$j7hanq96a$::jsonb,
    '人のつながりが動かす', 'このタイプの運動動力は「特定の人との感情的なつながり」にあることが多いです。仲間がいる場に自然と体が動き出すが、大人数の匿名的な環境よりも、顔と名前の知れた少人数のグループで最も自然に機能します。「一緒に体験した」という感覚がこのタイプにとっての運動の成果になりやすく、強度や記録は二次的な位置づけになる。

誰かを気遣いすぎて自分のペースを失うことがこのタイプの消耗パターンのひとつで、場への配慮がエネルギーを奪う場合もあります。「誰のために」という動機が「何のために」より強く機能するのが、このタイプの特徴です。

一人で続けようとすることへの後ろめたさを感じることもあるかもしれないが、人のつながりを通じて運動することはこのタイプの本来のスタイルであり、それはひとつの強みです。誰とでも楽しければ運動できるタイプとは違い、このタイプは顔と名前を知った特定の人との絆が動力の核になります。',
    '定期的な約束を作るコツ', '特定の人との「定期的な約束」を作ることが最も機能する継続の仕組みです。「一緒に行こう」という約束が最も強い継続装置になります。人数は2〜4人の固定メンバーが理想で、「毎週この日に」という固定の枠があると運動しやすくなります。

一緒に運動する人の都合で自分も行けなくなりやすいため、2〜3人の仲間と作ることでリスクを分散させるとよいです。誰かに気を遣いすぎて自分のペースを失わないよう、「今日は気分じゃない」と正直に伝えられる関係性を選ぶことも継続のための重要な条件です。',
    'SFVC', '同じ気分で感情豊かに穏やかに続けるタイプの感受性と穏やかさを持っています。SFVCの内省とGFVCの共感性が深く共鳴し、互いの心の状態を尊重しながら運動できる関係です。',
    'SPMD', 'SPMDのストイックさと記録への執着はGFVCが大切にする「みんなが安心して運動できる場」に緊張を持ち込みます。強さへの圧力がGFVCの繊細さを傷つけやすいです。'
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
    'GFVD', '誰かが本気になると、自分も本気になる。', $j7dj9rmya$["チームが本気になると、自分も止まらなくなる"]$j7dj9rmya$::jsonb,
    '外部の熱量で着火する', 'このタイプの運動エンジンは、外部からの熱量によって着火されることが多いです。一人でいるときの自分とは別人のように、仲間が全力で動いている場面では体が自然に限界を超えていくことがあります。モチベーションは内側から生み出すのではなく、外部の熱量に触れたとき急激に点火されるのが、このタイプの特徴です。

逆に、その燃料が供給されない環境では運動意欲が著しく落ちやすいです。チームが危機にある場面や、仲間の情熱が目に見える状況が、このタイプの最大の着火条件になりやすいです。一人でのトレーニングが続かないのは意志力の問題ではなく、エンジンの性質によるものです。

このタイプがチームの中にいるとき、そのエネルギーは伝染し、周囲の全員を巻き込む熱量を生み出すことが多いです。外から着火される、というのはこのタイプだけの特別な燃え方です。',
    '熱量ある場に居続けるコツ', '高い熱量を持つ仲間が集まる場に所属し続けることが最も重要なコツです。クロスフィットボックス・チームスポーツ・格闘技ジムなど、メンバーが本気で運動している環境を選ぶとよいです。燃え尽き期が来やすいため、全力で燃えた後は意図的に休息を取り、次の活動に向けた期待感を育てる時間を作ることが長期継続のカギになります。

チームの雰囲気が落ちているときに自分のモチベーションも落ちやすいため、複数の活動・コミュニティに関わっておくことがリスクヘッジになります。「みんなが運動していない日」に動けないのは正常なことと理解しておくことが、自己嫌悪を防ぐ重要な認識です。',
    'SFVD', '同じ気分で感情豊かに熱中するタイプの高強度型です。SFVDのスイッチとGFVDの熱量が触れ合うと互いが燃え上がる。片方の全力がもう片方の着火剤になる刺激的な関係です。',
    'SPMC', 'SPMCの静かな継続の哲学はGFVDの爆発的な巻き込みエネルギーと折り合いがつきません。GFVDの熱量に押されてSPMCのペースが崩れ、SPMCはGFVDをノイズとして感じます。'
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
    'GPMC', '毎週同じ場所に、必ず現れます。', $j1gq6ojn4$["もう何年も来てるけど、ここが好きだから"]$j1gq6ojn4$::jsonb,
    '静かに長く続ける力', 'このタイプの強みは、定例のグループ活動を長期にわたって静かに続ける継続性にあります。目立たないが、最も長く続くのがこのタイプです。どんな季節でも、メンバーの増減があっても、同じ場所に現れます。

その安定した存在感がコミュニティ全体の継続を支えています。毎週の定例が「楽しみ」になっているとき、このタイプは最も充実した状態で運動を続けられます。短期集中型のプログラムや頻繁に変わる環境よりも、同じ仲間と同じリズムを積み重ねることに価値を見出すのがこのタイプです。

「地味だ」と感じてきた習慣が、実は最も長続きする運動スタイルです。「継続すること」自体がこのタイプの才能であり、それは16タイプの中でも稀な強みです。',
    '長く続けられる場を選ぶコツ', '「場」を選ぶことに時間をかけるとよいです。長く続けられそうなコミュニティや定例グループを見つけることが、このタイプにとっての最大の継続投資になります。コミュニティが見つかったら、出席し続けることで自然に「いるのが当たり前」の存在になっていく——それがこのタイプの最も機能する継続の仕組みです。

刺激や変化がなさすぎて飽きを感じてきたときは、別の活動を追加するのではなく、同じコミュニティの中で役割（世話係・連絡係など）を担うことで新たな動力を作るとよいです。コミュニティを失ったときに運動できなくなりやすいため、複数の場に少しずつ関わっておくことがリスクヘッジになります。',
    'SPMC', '同じ計画的に自信を持って穏やかに続けるタイプの安定した継続観が共鳴します。SPMCの個人の習慣とGPMCのコミュニティ継続文化が自然に補い合い、互いを急かさない関係が長く続きます。',
    'SFVD', 'SFVDの「スイッチが入ったときだけ全力」という姿勢はGPMCが大切にするコミュニティの継続と安定に摩擦を生じさせます。ムラのある参加がGPMCの運営を乱します。'
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
    'GPMD', '目標を決め、仲間を巻き込み、計画で勝ちに行く。', $jo1mlmn9e$["まず目標を決めます。そこから全部逆算する"]$jo1mlmn9e$::jsonb,
    'チームと目標で動く', 'このタイプは、チームの目標に向けて計画的に動くときに最も力を発揮することが多いです。大会・試合・記録挑戦という具体的な目標が設定されているとき、仲間を巻き込んでスケジュールを組み、チーム全体を引き上げるエネルギーが自然に生まれます。「チームで勝つ」という文脈がこのタイプの最大の動力源になることが多いです。

目標のない活動や仲間との結びつきが弱い状態では運動意欲が湧きにくく、一人でのトレーニングも目標と計画が明確でないと続きにくいです。リーダーシップを発揮する文脈に身を置いているとき、このタイプのパフォーマンスは最大化します。

「誰かのために計画を立てる」という行動が、同時に自分自身のトレーニング動機をつくるのが、このタイプの特徴的なパターンです。勝利と目標という積極的な動機で運動できるこのタイプは、「結果を出す力」において16タイプの中でも特に際立っています。',
    'チームの目標から逆算するコツ', '具体的なチーム目標を先に設定してから、そこへの道筋を逆算して計画を立てるとよいです。目標は「大会・試合・記録挑戦」など締切があるものが最もよく機能します。チームを引っ張りすぎて抱えすぎないよう、「頼る」「任せる」を意識的に練習することが長期継続のカギになります。

チームメンバーのモチベーション管理に過剰にエネルギーを使わないよう、自分のペースと役割の範囲を意識することも重要です。目標が達成されたら「次の目標を設定するまでの休息期間」を意図的に作り、燃え尽きを防ぐことを習慣にするとよいです。',
    'SPMD', '計画的に高い目標を追い求める姿勢が共通しています。目標への意志と向上心が共鳴します。SPMDの個人記録とGPMDのチームの勝利が別の文脈で燃えながら、互いの高い基準が刺激になります。',
    'SFVC', '「心が整ったら運動する」というSFVCの価値観はGPMDの「勝つために追い込む」という要求と根本的にずれます。GPMDの期待がSFVCにとって過大な圧力になり、運動できなくなっていく。'
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
    'GPVC', '仲間のためなら、誰より長く続けられます。', $j9ye51wjj$["来なかったらみんなに申し訳ないから"]$j9ye51wjj$::jsonb,
    '約束が継続をつくる', 'このタイプの運動動力は「特定の仲間への約束と責任感」にあることが多いです。自分のためだけの動機では続きにくいが、「あの人が待っている」「一緒に参加する約束をした」という社会的なコミットメントがあると、驚くほど長く運動を続けられます。

定期的な活動に誠実に参加し続け、チームの継続を陰で支える役割を自然に担うのがこのタイプです。自分のコンディションより仲間の期待を優先しやすく、それが長期的な消耗につながることもあります。

匿名の大人数クラスよりも、顔と名前を知っている固定の小グループとの活動が最も安定しやすいです。「一人でも続けられるようにならないと」という自己評価とは裏腹に、仲間との絆を通じて運動することがこのタイプの本来のスタイルであり、それは弱さではなくひとつの特性です。',
    '義務感を上手に使うコツ', '「行かなかったら申し訳ない」という気持ちを意図的に活用した仕組みを作るとよいです。具体的な人物との「毎週の約束」をカレンダーに入れることが最も機能します。

一方、行きたくない日でも無理して参加し続けると長期的に疲弊しやすいため、「行けない日は素直に伝える」という習慣を作ることも重要です。仲間への義務感で動く特性を活かしながら、自分のコンディションを無視した参加が続かないよう、定期的に「今の参加ペースが自分に合っているか」を見直す時間を持つとよいです。',
    'SPVC', '同じ計画的に感情豊かに穏やかに続けるタイプの慎重な継続者。SPVCの個人の習慣とGPVCのチームの継続の文化が、互いを補い合う形で共鳴します。誠実さと安定感が一致しています。',
    'SFMD', 'SFMDの気まぐれな衝動と離脱の繰り返しはGPVCが守ろうとしているチームの安定を脅かします。SFMDにとっては自由なだけだが、GPVCには裏切りに映ることがあります。'
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
    'GPVD', 'チームが本気のとき、自分も本気になれる。', $jpm79a15w$["チームのためなら、限界を超えられる気がする"]$jpm79a15w$::jsonb,
    'チームが本気の瞬間に', 'このタイプが最もよく運動できるのは、高い目標に向かってチームが一丸になっているときです。仲間の責任感と情熱が噛み合った瞬間に、一人では出せない力が生まれることが多いです。情熱と責任感でチームを引っ張るエネルギーを持ち、チームが崩れそうなときに最も強く燃える傾向があります。

一人でのトレーニングや目標のないゆるい活動では運動意欲が湧きにくいです。高い理想と責任感が、チームへの過度な負担につながることもあります。このタイプにとって、チームスポーツやグループ競技は単なる運動ではなく、本来の力が発揮される場に近いです。

チームとその目標がセットで揃ったとき、このタイプの本領が最も発揮されやすいです。完璧主義と理想への高さゆえに消耗しやすい面もあるが、それがこのタイプの高出力の源でもあります。',
    'チームと締切を軸にするコツ', 'チームスポーツや競技への参加を継続の軸に置くとよい。リーグ・大会・試合という外部の締切が自動的に継続の仕組みを作ってくれる。チームへの期待と自分の理想を背負いすぎないよう、「チームのために貢献する」と「自分のパフォーマンスを管理する」を分けて考える習慣を持つとよいです。

計画通りに進まない時期にチームへの態度が厳しくなりやすいため、それを事前に知っておくだけで対処が変わります。燃え尽きサイクルに気づいたら意図的に休息シーズンを設け、次のシーズンに向けた期待感を醸成する時間を作ることが長期継続のカギになります。',
    'SPVD', '同じ計画的に感情豊かに熱中するタイプの高強度型です。SPVDの孤独な追い込みをGPVDのチームが背景で支え、GPVDの熱量がSPVDの炎を燃やし続ける。互いの強度への要求が一致します。',
    'SFMC', 'GPVDが当然とする「チームへの責任・計画の遵守・高強度での継続」はSFMCの運動スタイルと正反対です。GPVDのリードに応えようとするほどSFMCの自由が消え、運動できなくなります。'
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    tagline = EXCLUDED.tagline, catchphrases = EXCLUDED.catchphrases,
    concept_title = EXCLUDED.concept_title, concept_body = EXCLUDED.concept_body,
    continuation_title = EXCLUDED.continuation_title, continuation_body = EXCLUDED.continuation_body,
    compat_pill_good_code = EXCLUDED.compat_pill_good_code,
    compat_pill_good_reason = EXCLUDED.compat_pill_good_reason,
    compat_pill_bad_code = EXCLUDED.compat_pill_bad_code,
    compat_pill_bad_reason = EXCLUDED.compat_pill_bad_reason;

INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SFMC',
    '気分のまま動く', '目的地も理由も持たない移動の延長に、このタイプの運動があります。散歩・のんびりしたサイクリング・気の向いたときのストレッチ・行ったことのない道を歩く散策が自然に合いやすいです。「気になるから」「天気がいいから」「なんとなく」——そのような衝動のまま動き始められる活動がこのタイプに最もよく機能します。記録も報告も約束も必要なく、気が向いたときに始められる自由な動き方が、このタイプの本来の運動スタイルです。',
    '管理が動きを止める', '年会費制のジム通い・毎日の記録管理・タイムアタック型の運動は、義務感が生まれた瞬間にこのタイプのエンジンを止めてしまいやすいです。歩数を記録する・誰かに進捗を報告する・「今週○回やる」と宣言するといった管理の仕組みは、それまで自然にできていた運動をかえって止める原因になりやすいです。決まった曜日に参加しなければならないスポーツや、チームの都合に合わせる必要がある活動は、このタイプには負荷になりやすいです。',
    $j9qd1h5k8$[{"title":"目的地なしに商店街や住宅街を流す","body":"目的地を持たず商店街等を流し、気になれば店に入る自由なスタイルが最適です。「なんとなく歩きたい」が出発点になるため、時間も距離も決めない散策が続きます。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"街歩き"},{"title":"「面白そう」という気分だけで走る","body":"「どこか面白いものがあるかも」気分だけで走ります。記録アプリを使わず、自分のペースで移動すること自体を楽しむ姿勢が、義務感を嫌うエンジンを心地よく回します。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"サイクリング"},{"title":"自然光の中をゆっくり歩き、休む","body":"自然光の中をゆっくり歩き、疲れたらベンチで休むのも立派な運動です。目標やノルマを設定せず、心と体が求めるままに動いたり休んだりできるが最適です。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"昼散歩"},{"title":"「次どこ行く？」を移動の口実にする","body":"「次どこのカフェ行く？」目的を移動の口実にしたウォーキングです。運動すると意識せず、好きな場所へ向かう過程で結果的に体が動いている事実が、「続けようとすると続かない」悩みを消します。無理なく継続できる理想の環境です。","short_title":"カフェ巡り"},{"title":"日が傾く時間に、どこまでも決めずに","body":"日が傾く時間に外に出て、どこまで行くか決めずに歩き出します。気分が上がったらもう少し歩き、疲れたらすぐ戻る柔軟な選択ができるため、計画に縛られると足が重くなるこのタイプでも、気楽に動けます。この特性を最も活かせます。","short_title":"夕暮れ散歩"}]$j9qd1h5k8$::jsonb, $jm9k5jqeo$[{"title":"「行かなきゃ」という義務感が生まれる","body":"「お金を払っているから行かなきゃもったいない」義務感が生まれた瞬間に、足は遠のきます。いつでも行ける環境は重圧となり、本来持っている「気が向いたときに動く」衝動を消します。ストレスが溜まりやすく避けるべきです。","short_title":"スポーツジム"},{"title":"時間とルートをガチガチに決める","body":"時間とルートをガチガチに決めた途端、楽しい運動ではなく「こなすべきタスク」に変わってしまいます。決められたことを繰り返すのが苦手なため、日々の固定ルーティンは意欲を奪う仕組みです。ストレスが溜まりやすく避けるべきです。","short_title":"時間指定のランニング"},{"title":"数値を厳密に管理し、ノルマにする","body":"数値管理を始めると、自由な散策が「ノルマ達成の作業」にすり替わります。数字を追う楽しさより、管理される窮屈さが勝り、運動の楽しさが見えなくなります。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"歩数計アプリ"},{"title":"毎週の固定スケジュールに縛られる","body":"「毎週土曜日に集まろう」固定の約束は、その日の気分で動きたい重荷でしかありません。他人のペースや予定に合わせる必要がある活動は、自由を愛する特性と真っ向から衝突します。ストレスが溜まりやすく避けるべきです。","short_title":"定期的な約束"},{"title":"過去の自分や他人と比較し、向上を求める","body":"記録を比較し常に向上を求められる環境は、重圧となり本来の心地よさを奪います。競争や数値目標が前面に出るスポーツは、「ただ動くのが好き」純粋な動機を濁らせます。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"タイム競技"}]$jm9k5jqeo$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SFMD',
    '衝動が選ぶ活動', '登山・ボルダリング・サーフィン・HIIT・格闘技・ロングライドのように、強度が高く体験として記憶に残る活動が自然に合いやすいです。「次の体験リスト」に追加したいと思えるような活動がこのタイプのエンジンに火をつけます。一人で計画なしに山や海へ向かうことも、このタイプにとっては十分なフィットネスになりえます。新しい場所・新しい挑戦・初めての体験というキーワードが動力になります。',
    '同じことの繰り返しが動力を消す', '毎週同じジムに通う固定スケジュール型・毎朝決まった時間に行うルーティン強制型・チームの都合に合わせ続ける集団スポーツは、このタイプには馴染みにくいです。繰り返す構造そのものが苦手なため、同じ活動を同じ強度・同じ場所でやり続けることはモチベーションを急速に失わせます。タイムや回数の細かい記録管理も合いにくく、「まだ続けなきゃ」という義務感が運動を重くします。',
    $jdcu05hd4$[{"title":"初めての山や森を、自分のペースで全力で","body":"初めての山や森を自分のペースで全力で駆け抜けます。「次の景色」への渇望と高強度の負荷が衝動を完璧に満たします。計画なしに飛び込めるが最高の着火剤です。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"トレイルランニング"},{"title":"直感だけで海へ向かい、自然と向き合う","body":"「波がいい」直感だけで海へ向かい、計画なしに自然と向き合う活動です。全身の熱量を使い切る高い負荷と毎回違う波に乗る体験が、飽きっぽいエンジンを新鮮に保ちます。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"サーフィン"},{"title":"毎回違うジムに行き、新しい壁に挑む","body":"毎回違うジムに行き、新しい壁や課題に挑戦し続けます。同じ場所での反復を嫌う、飽きが来る前に環境を変え続けるスタイルが合っています。一人で限界まで追い込める点も大きな魅力です。無理なく継続できる理想の環境です。","short_title":"ボルダリング"},{"title":"思い立った瞬間に短時間で極限まで追い込む","body":"自宅や公園で、思い立った瞬間に短時間で極限まで追い込む活動です。「今日なんか燃えてきた」直感的な衝動を、準備ゼロで即座に全力の行動へと変換できる環境が、爆発的力を引き出します。無理なく継続できる理想の環境です。","short_title":"HIIT"},{"title":"目的地を決めず、体力の限界まで遠くへ","body":"目的地を決めずに自転車で走り出し、体力の限界まで遠くへ行く活動です。見知らぬ土地への冒険心と、一人でどこまでも突き進める自由さが動力になります。予定調和のない体験こそが、このタイプに最適です。無理なく継続できる理想の環境です。","short_title":"ロングライド"}]$jdcu05hd4$::jsonb, $j8txfbnp6$[{"title":"同じ景色、同じ距離を繰り返す","body":"同じ景色、同じ距離の繰り返しはすぐに飽きを呼び、運動そのものが退屈な作業になってしまいます。新しい体験や刺激を常に求める、変化のないルーティンは意欲を急速に奪う要因です。ストレスが溜まりやすく避けるべきです。","short_title":"固定ルートのジョギング"},{"title":"気分や衝動と合致しない固定スケジュール","body":"「毎週火曜の19時」といった固定予定は、その時の気分や衝動と合致せず、行くこと自体が苦痛になります。計画よりも本能に従って動きたい特性があるため、枠にはめられると途端に熱量が失われます。特性と合わず、継続が困難になります。","short_title":"毎週固定の予定"},{"title":"他人のペースに合わせ、全力を制限される","body":"他人のペースに合わせる必要があり、自分の直感や全力を出すタイミングが制限され大きなストレスが溜まります。一人で自由な環境でこそ最大の成果を発揮するため、集団のルールは足枷になります。ストレスが溜まりやすく避けるべきです。","short_title":"定期練習"},{"title":"直感的な動きを縛る、細かい数値管理","body":"「今日は何キロを何回」計画や記録の管理は、直感的な動きを縛る鎖のように感じられます。数字を追うことよりも「今、全力を出したい」が強いため、管理される仕組みは運動を重くするだけです。ストレスが溜まりやすく避けるべきです。","short_title":"回数指定の筋トレ"},{"title":"強度が低く、新しい刺激もない活動","body":"強度が低く新しい刺激もない活動は、内なる高い熱量が発散されず不完全燃焼に終わります。ある程度の負荷と「やり切った」強い実感が得られないと、運動した価値を感じられません。ストレスが溜まりやすく避けるべきです。","short_title":"刺激のない散歩"}]$j8txfbnp6$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SFVC',
    '心を整える活動', '自然の中での瞑想ウォーク・自宅ヨガ・公園のぼーっと歩き・ゆっくりした水泳・就寝前の軽いストレッチが自然に合いやすいです。「動いた後に少し気持ちが変わった」という感覚が得られる活動が、このタイプにとっての本当の意味での運動になります。心への負荷が少なく、自分のペースで進められ、終わったあとに「整った」と感じられるものを選ぶとよいです。一人で静かに体と向き合える環境が最も機能します。',
    '心に負荷がかかる環境', '大人数でワイワイするグループレッスン・タイムや回数を競う運動・高強度の追い込み系エクササイズは、このタイプの心に負荷をかけやすいです。心が重い日や疲れている日に義務として運動しようとすることも、かえって消耗を深める結果になりやすいです。強度が高くなるほど・プレッシャーが加わるほど「しんどいもの」になっていく傾向があるため、競争・記録・達成目標を前面に出した活動は避けるほうが続けやすい。',
    $j96xudccp$[{"title":"木々や風を感じながら、自分のペースで","body":"木々や風を感じながら、自分のペースでゆっくり歩く活動です。心が静かになる時間がそのまま運動になるため、「動いた後に気持ちが変わった」体験を得やすく、内省的な深くフィットします。無理なく継続できる理想の環境です。","short_title":"瞑想ウォーク"},{"title":"誰の目も気にせず、心と対話する","body":"誰の目も気にせず、その日の体調や気分に合わせて体を伸ばす時間です。心と体の対話が目的であり、外からの刺激や重圧がない安全な環境でこそ、体を動かすことができます。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"自宅ヨガ"},{"title":"目的地を決めず、疲れたらベンチで休む","body":"目的地を決めず、疲れたらベンチで休むといった、運動より「外の空気を吸う」延長のです。心が重いときでも「少しだけ外に出よう」と思えるハードルの低さが、無理のない継続を可能にします。無理なく継続できる理想の環境です。","short_title":"ぼーっと歩き"},{"title":"1日の終わりに、心身の緊張をほどく","body":"1日の終わりに、心身の緊張をほどくための5分間です。頑張らないこと、そして「今日も少しだけ自分を労わった」静かな実感が、繊細な心を持つ確かな継続の根拠になります。本来の強みを自然に引き出せるため、特性を最も活かせます。","short_title":"簡単なストレッチ"},{"title":"水の浮力に身を任せ、外部の刺激を遮断する","body":"タイムを気にせず、水の浮力に身を任せてゆっくり泳いり歩いたりします。水の中外部の刺激を遮断できる環境が、心の波に左右されやすい深いリラックスと安心感をもたらします。本来の強みを自然に引き出せるため、特性を最も活かせます。","short_title":"温水プール"}]$j96xudccp$::jsonb, $jw7fz41yy$[{"title":"周りの高いテンションに合わせようとする","body":"周りのペースや高いテンションに合わせようとして心が激しく消耗し、運動そのものが苦痛になってしまいます。一人の静かな時間を好む、他者の熱量が飛び交う空間は刺激が強すぎます。ストレスが溜まりやすく避けるべきです。","short_title":"グループレッスン"},{"title":"プレッシャーとなり、心がこわばる","body":"競争や重圧は心への大きな負荷となり、「動いた後に整う」本来の目的から遠ざかってしまいます。比較される環境に身を置くと、体がこわばり、運動への抵抗感ばかりが育ってしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"競争のあるスポーツ"},{"title":"繊細なバランスを崩し、疲労感だけを残す","body":"心身への急激な負荷は、このタイプが持つ繊細なバランスを崩しやすく、ひどい疲労感だけを残します。強度が高くなるほど「しんどいもの」認識が強まり、次から運動を避ける原因になります。ストレスが溜まりやすく避けるべきです。","short_title":"高負荷なエクササイズ"},{"title":"心が重い日にも義務感で動こうとする","body":"心が重い日にも義務感で動こうとすると、できない自分への自己嫌悪に陥りやすく長続きしません。心の状態と体が深く連動するため、無理な強制はかえって長期的な継続を破壊します。ストレスが溜まりやすく避けるべきです。","short_title":"厳格な習慣化"},{"title":"外部からの刺激が強すぎ、集中できない","body":"大音量の音楽や活気あふれる声等、外部からの刺激が強すぎる環境は、自分の内側の感覚に集中できず疲弊しやすくなります。運動よりもセラピーを求めるは、静けさが不可欠です。ストレスが溜まりやすく避けるべきです。","short_title":"賑やかなジム"}]$jw7fz41yy$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SFVD',
    '全力で入れる活動', 'ランニング・格闘技・本格的な筋トレ・ハードな登山・ボルダリングのように、自分の意志だけで完結できる高強度の一人活動が自然に合いやすいです。「スイッチが入った」と感じた瞬間に即座に動き出せる活動が最もよく機能します。全力を出せる環境——プレッシャーなしに自分の限界を試せる場——がこのタイプの理想の運動環境です。',
    '義務とゆるさがスイッチを消す', '週3回必ず参加を前提にしたスポーツクラブ・グループでのんびり雑談しながらするレッスン・毎回記録をつけて更新を義務化する管理型プログラムは、このタイプには合いにくいです。中途半端な強度の活動は価値を感じにくく、義務として動かされる仕組みがスイッチをさらに遠ざける。参加しなければならないコミットメントが積み重なることで、運動そのものが重荷になりやすいです。',
    $jj8964g0c$[{"title":"誰もいない静かな時間帯に、限界まで","body":"誰もいない静かな時間に自分の限界までペースを上げて走ります。「スイッチが入った」瞬間に即座に実行でき、他者の目を気にせず自分だけの世界で深く追い込めるが集中力を引き出します。無理なく継続できる理想の環境です。","short_title":"全力ランニング"},{"title":"一人で無心になり、内なる熱量を爆発させる","body":"一人で無心になってサンドバッグを叩き続ける。内なる熱量を一気に爆発させ、「全力かゼロか」を純粋に体現できるため、終わった後に深い充実感を得ます。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"サンドバッグ打ち"},{"title":"他人に縛られず、深い集中状態に入る","body":"体力と精神力だけを頼りに険しい山に一人で挑む活動です。他人のペースに縛られず、リスクと向き合いながら深い集中状態（ゾーン）に入れる環境が、「本気でやりたい」美学を刺激します。無理なく継続できる理想の環境です。","short_title":"ソロ登山"},{"title":"「いける」と思った日に、倒れ込むまで","body":"「今日はいける」と思った日に動画を見ながら倒れ込むまで追い込む高強度インターバルです。着火から動くまでの障壁がゼロで、ムラのある意欲の波を逃さず全力を出し切るのに最適です。無理なく継続できる理想の環境です。","short_title":"限界HIIT"},{"title":"風と疲労だけを感じる孤独な時間","body":"誰とも話さずひたすらペダルを回し限界まで遠くを目指す活動です。風と疲労だけを感じる孤独な時間が最高の報酬になり、中途半端な強度では得られない確かな手応えが次への着火剤になります。無理なく継続できる理想の環境です。","short_title":"ソロロードバイク"}]$jj8964g0c$::jsonb, $j3dy3qukw$[{"title":"「スイッチが入っていない日」にも行く","body":"「スイッチが入らない日」も行く義務がある環境は、運動への意欲を根こそぎ奪います。毎日コツコツ続けるモデルが合わず、義務で通う仕組みは徐々に自分を追い詰める結果になります。ストレスが溜まりやすく避けるべきです。","short_title":"義務的なスポーツクラブ"},{"title":"中途半端な強度と他者との交流が混ざる","body":"中途半端な強度と他者との交流が混ざった空間は、「やるなら本気でやりたい」美学に反して強いストレスになります。全力を出せない環境にいること自体が、このタイプには時間の無駄に感じられてしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"おしゃべりレッスン"},{"title":"負荷が低すぎ、「やった感」が得られない","body":"負荷が低すぎる活動は「やった感」が得られず、運動としての価値を感じにくいものです。全力で追い込んだ日の体験こそが記憶に残るため、地味で平坦な継続はすぐに飽きてしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"軽いストレッチ"},{"title":"気分で動きたいのに、数値で細かく管理される","body":"気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来のスイッチが入りにくくなる。管理されることへの抵抗感が、運動そのものを重荷に変えてしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"細かなデータ管理"},{"title":"全力を出したいタイミングで手加減する","body":"全力を出したい時に出せず、他人に気を遣い手加減する環境は本領を発揮できません。一人で深く燃えたい特性があるため、集団の和を重んじる場は息苦しさを生むだけです。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"チームスポーツ"}]$j3dy3qukw$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SPMC',
    '生活に溶け込む活動', '毎朝の決まったルートのウォーキング・通勤の1駅手前で降りる・就寝前の5分ストレッチ・週次で同じコースを泳ぐなど、既存の生活に隣接した形で組み込める活動が自然に合いやすいです。特別な場所も特別な時間も必要なく、「気づいたらやっている」レベルに落とし込まれた習慣がこのタイプの最大の強みになります。激しさより継続可能性を重視した、低〜中強度の活動が長期的に最もよく機能します。',
    '特別な仕組みが習慣を崩す', '大会や発表会などイベント依存型の活動・高強度の追い込み系トレーニングプログラム・仲間との約束が前提のスポーツは、このタイプには合いにくいです。「特別なこと」を組み込もうとするほど習慣がもろくなります。また、「これだけじゃ足りない」という不安から激しいプログラムを追加すると、それが継続全体を崩す引き金になりやすいです。外部のペースやスケジュールに合わせる必要がある活動も、このタイプの安定した継続リズムを乱しやすいです。',