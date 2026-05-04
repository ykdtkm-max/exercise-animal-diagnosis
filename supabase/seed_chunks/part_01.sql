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
    $j1u3oy3jt$[{"title":"毎日の移動ルートに少しだけ距離を足す","body":"毎日の移動ルートに少しだけ歩く距離を足す活動です。既存の生活習慣に「隣接」させるアプローチが機能しやすく、強い意志力を使わずに「気づいたらやっている」状態を作り出すことができます。この性質に合致し、無理なく継続できる理想的な環境です。","short_title":"1駅ウォーキング"},{"title":"決断コストを減らし、自動的に体を動かす","body":"起床後いつも同じ道を歩くルーティンです。毎回コースを考える手間や決断のコストを減らし、自動的に体が動く仕組みを作ることが、派手さより「今日もやれた」静かな事実を好む継続を支えます。無理なく継続できる理想の環境です。","short_title":"日課の散歩"},{"title":"特別な準備がいらず、1日を静かに締めくくる","body":"歯磨きやお風呂の後にセットで行う、ごく短い時間のストレッチです。特別な準備がいらず、1日を静かに締めくくれるこの活動は、低中強度で安定したリズムを刻みたい美学に深くフィットします。無理なく継続できる理想の環境です。","short_title":"5分間ストレッチ"},{"title":"他者に左右されず、孤独と反復のリズムを楽しむ","body":"毎週同じ時間にプールへ行き、自分のペースで淡々と泳ぐ活動です。他者の都合に左右されず、水の中の孤独と反復のリズムを楽しめる環境が、一人で静かに継続することを好む特性を最大限に活かせます。無理なく継続できる理想の環境です。","short_title":"マイペースな水泳"},{"title":"日常動作に溶け込ませ、無意識の反復を生む","body":"料理中のかかと上げや、テレビを見ながらのスクワット等です。日常動作の中に運動を溶け込ませることで無意識の反復を生み出し、「特別なこと」をせずに運動量を確保する特有の賢い戦略です。無理なく継続できる理想の環境です。","short_title":"「ながら」運動"}]$j1u3oy3jt$::jsonb, $jozai1re9$[{"title":"予測不可能なメニューと激しい追い込み","body":"予測不可能なメニューと激しい追い込みは、静かなルーティンと安定を好む性質と真っ向から衝突します。変化が多すぎる環境はペースを乱し、運動そのものを避ける原因になってしまう。ストレスが溜まりやすく避けるべきです。","short_title":"過激なブートキャンプ"},{"title":"日常の安定したリズムを崩す、非日常の目標","body":"「特別な日」に向けた非日常の活動やイベント依存型の目標設定は、日常の安定したリズムを崩す引き金になりがちです。地味な継続に価値を見出す、一時的な熱狂はかえって負担になります。ストレスが溜まりやすく避けるべきです。","short_title":"特別なトレーニング"},{"title":"他人の都合でスケジュールやペースが変わる","body":"他人の都合で予定が変わったりペースを合わせる環境は、一人で淡々と進めたい性質にとって大きなストレスです。外部要因に左右される活動は安定した継続を阻害します。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"チームスポーツ"},{"title":"「足りない」という不安から急に負荷を上げる","body":"「これだけじゃ足りないのでは」不安から急に高負荷な運動を追加すると、それが継続全体を崩す原因になりがち。強度の急激な変化は、最大の強みである「継続性」を根底から壊します。ストレスが溜まりやすく避けるべきです。","short_title":"限界まで追い込む筋トレ"},{"title":"他者の目や評価が入り、義務感に変わる","body":"他者の目や評価が入る環境では、自分だけの静かな達成感が失われ、やらされる義務感に変わってしまいます。外部からの刺激や承認を必要としないため、報告の仕組みはノイズにしかなりません。ストレスが溜まりやすく避けるべきです。","short_title":"進捗報告"}]$jozai1re9$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SPMD',
    '記録が活きる活動', 'タイムアタックランニング・重量と回数のログ管理を伴う筋トレ・距離とパワーを記録するロードバイク・水泳のタイム計測・獲得標高を記録する登山のように、測定と記録のシステムが機能しているときに最もよく運動できます。数値が更新されていく実感が動力になるため、記録・計測・比較ができる活動を選ぶとよいです。昨日の自分を超えられる指標が存在していることが、このタイプの運動の前提条件です。',
    '数字のない活動は続かない', '楽しさ重視のレクリエーション型スポーツ・記録を取らない活動・仲間のペースに合わせて自分のペースを崩さざるを得ない活動は、このタイプには合いにくいです。「楽しければいい」という文脈では運動の意味を感じにくく、数値で証明できない成果は継続の根拠になりにくい。集団でのんびり運動する活動や、記録・目標のないゆるい活動はこのタイプのエンジンにはマッチしにくいです。',
    $jzap42jof$[{"title":"毎回同じコースで、1秒でも縮めることを目標に","body":"毎回同じコースを走り1秒でもタイムを縮める目標の活動です。スマートウォッチ等での記録管理が必須で、「昨日の自分を超える」明確な指標が存在することが強力な意欲になります。無理なく継続できる理想の環境です。","short_title":"タイムアタック"},{"title":"挙上重量と回数を厳密に記録し、負荷を上げる","body":"ノートやアプリで毎回の挙上重量と回数を厳密に記録し、少しずつ負荷を上げていく活動です。測定可能な記録と進捗の可視化が、一人での活動においても高い集中力と継続力を生み出します。無理なく継続できる理想の環境です。","short_title":"本格的な筋トレ"},{"title":"走行距離やワット数を計測し、成長を数値で確認","body":"サイクルコンピューターで走行距離やワット数を計測し、自分の成長を数値で確認しながら走ります。他者との比較ではなく、過去の自分のデータと向き合うが、本領を発揮させます。無理なく継続できる理想の環境です。","short_title":"ロードバイク"},{"title":"毎日同じ条件で測定し、成果をグラフ化して分析","body":"毎日同じ条件で体重や体脂肪率を測定し、食事と運動の成果をグラフ化して分析する。数値が更新されていく実感が動力になるため、結果が目に見える形で蓄積される仕組みが不可欠です。無理なく継続できる理想の環境です。","short_title":"ボディメイク"},{"title":"登った高さや難易度を記録し、次のステップへ","body":"登った山の高さや難易度をアプリに記録し、次回のより高い目標へのステップとして活用する。達成すべき明確なハードルと、それを乗り越えた記録が残ることが、次への挑戦意欲を掻き立てます。無理なく継続できる理想の環境です。","short_title":"記録狙いの登山"}]$jzap42jof$::jsonb, $jd52uj56t$[{"title":"成長の実感が得られず、時間の無駄に感じる","body":"「ただ楽しければいい」目的のない活動は、成長の実感が得られず、は時間の無駄に感じてしまう。数値で証明できない成果は、継続の根拠になり得ません。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"レクリエーション"},{"title":"数値化されず、「やった証拠」が残らない","body":"数値化されない活動は「やった証拠」が残らず、意欲の維持が極めて困難になります。測定があるからこそ全力を出せる特性があるため、記録のない運動はエンジンがかかりません。ストレスが溜まりやすく避けるべきです。","short_title":"成果の測れない運動"},{"title":"限界に挑戦したいのに、他人に合わせて手加減する","body":"自分の限界に挑戦したいのに、他人のペースに合わせて手加減しなければならない状況は大きなストレスになります。一人で己の記録と向き合う時間を邪魔される環境は避けるべきです。ストレスが溜まりやすく避けるべきです。","short_title":"グループ走"},{"title":"「過去の自分」のデータが取れず、成長が測れない","body":"比較対象となる「過去の自分」のデータが取れないため、成長の度合いが測れず不完全燃焼になります。同じ条件で測定し続けられない運動は、強みを活かせません。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"成果の測れないクラス"},{"title":"目的地も時間制限もなく、エネルギーを持て余す","body":"目的地も時間制限もない活動は、内なる高い熱量と向上心を持て余してしまい、運動としての満足感が著しく低くなる。「更新できる数字」がない活動はすぐに飽きてしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"あてのない散歩"}]$jd52uj56t$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SPVC',
    '型になる活動', '毎朝の固定ストレッチ・同じスタジオの同じ曜日の同じ先生のヨガ・同じルートのウォーキング・毎回同じ動画の自宅ピラティス・週1回同じ時間の水泳——決まった時間・場所・内容の反復に独自の美学と充実感を見出せる活動が自然に合いやすいです。「型」が確立されているものを美しく実行することが、このタイプにとっての運動の本質的な価値になります。',
    '変化がリズムを乱す', '毎回コースやメニューが変わる自由度の高いプログラム・大会やイベントなど特別な日だけの追い込み型・仲間の都合で内容が変わる集団活動は、このタイプのリズムを乱しやすいです。ルーティンが崩れる可能性がある環境や、毎回「今日どうする？」という選択が生まれる柔軟すぎる設計は、このタイプには合いにくいです。',
    $jbo8b96qj$[{"title":"起きる時間、やる順番、回数を完全に固定する","body":"起きる時間、やる順番、回数を固定し、1日のスタートの儀式として組み込む活動です。決まった型を毎日正確に繰り返すことに独自の美学と充実感を見出す、確実で安心できる継続の形になります。無理なく継続できる理想の環境です。","short_title":"毎朝のストレッチ"},{"title":"環境や内容が固定され、精神的な安定を生む","body":"毎週決まった時間に、同じ指導者のレッスンを受ける。環境や内容が固定されることが精神的な安定を生み、「完璧にやり切った」達成感を毎週確実に味わうことができます。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"お決まりのヨガ"},{"title":"景色や距離が予測でき、動作の質向上に集中できる","body":"景色や距離が予測できる同じ道を歩く活動です。変化がないことは退屈ではなく、むしろ動作の質の向上や内省に集中できるため、は心地よい時間となります。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"コース固定のウォーキング"},{"title":"反復の中に深い洗練を見出し、精度を高める","body":"お気に入りの同じ動画を繰り返し再生し、動きの精度や呼吸の深さを少しずつ高めていく活動です。反復の中に深い洗練を見出す感受性を持っているため、同じことの繰り返しが最適です。無理なく継続できる理想の環境です。","short_title":"自宅ピラティス"},{"title":"他者の介入がなく、自分だけのルーティンを守り抜く","body":"毎週同じ曜日の同じ時間にプールへ行き、決まった距離を自分のペースで淡々と泳ぎ切る。他者の介入がなく、自分だけの完璧なルーティンを守り抜ける環境が、強い満足感をもたらします。無理なく継続できる理想の環境です。","short_title":"毎週のスイミング"}]$jbo8b96qj$::jsonb, $j6ojyuoci$[{"title":"「今日は何をしようか」と毎回考えるストレス","body":"「今日は何をしようか」と毎回考えること自体がストレスになり、実行のハードルが極端に上がる。型が確立されていない柔軟すぎる設計は、リズムを根本から乱する。特有の性質と根本的に合わず、長期的な継続が非常に困難になります。","short_title":"柔軟なプログラム"},{"title":"日常のルーティンから外れ、安定したペースを乱す","body":"日常のルーティンから外れた非日常的な活動は、安定したペースを乱す原因になりがち。「特別なこと」を組み込もうとするほど、本来持っている強固な習慣の基盤がもろくなってしまう。ストレスが溜まりやすく避けるべきです。","short_title":"イベント前の追い込み"},{"title":"コントロール外で時間や場所が急に変更される","body":"自分の管理外で時間や場所が急に変更される環境は、このタイプが苦手とする状況です。完璧な計画が他者で崩されると、「やった気がしない」強い不満が残る。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"不定期な集団活動"},{"title":"「完璧にこなせない日」ができやすく、挫折を招く","body":"メニューが多すぎると「完璧にこなせない日」ができやすくなる。一度ルーティンが崩れると「全部やり直したくなる」性質があるため、複雑さは挫折の直接的な引き金になる。ストレスが溜まりやすく避けるべきです。","short_title":"複雑なメニュー"},{"title":"計画性なくその日の気分で動き、達成感がない","body":"計画性なくその日の気分で動くことは、「正しく運動した」確かな達成感につながりません。型のない活動は、運動としての価値を著しく低く感じさせる。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"ランダムなジム通い"}]$j6ojyuoci$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'SPVD',
    '計画通りの活動', '詳細ログ・週次進捗管理を伴うタイムアタックランニング・パワーリフティングや本格的な筋トレ・詳細タイム・距離管理を伴う水泳・体組成記録付きのボディメイク型トレーニングが自然に合いやすいです。計画通りに運動した記録と数値で証明できる成果が、このタイプの運動の意味をつくる。設計された計画を完遂する体験が最大の充実感になります。',
    '計画のない活動は機能しない', '楽しさ重視のレクリエーション型活動・記録も計画もないゆるい活動・グループでの雑談混じりのトレーニングは、このタイプには合いにくいです。目標がないと運動の意味を感じにくく、計画なしに動くことは消耗感につながりやすいです。完璧な実行ができない状況でも続けることへの苦手さがあるため、柔軟すぎるプログラムは崩れやすいです。',
    $jc8lqodrf$[{"title":"目標から逆算してメニューを組み、予定通り消化する","body":"目標タイムから逆算して週ごとの練習メニューを組み、予定通りに消化する。計画の精度と実行の強度の両方を高水準で追い求める、「計画通りにやり切った」が最大の報酬で、次への強い動力になります。この特性を最も活かせます。","short_title":"タイムアタック"},{"title":"重量とフォームを厳密に管理し、限界を超える","body":"重量とフォームを厳密に管理し、計画的な漸進性過負荷（漸進性過負荷）で限界を超える。数値への妥協を許さず、身体からのサインよりも理想の計画を優先して追い込める特性が、圧倒的成果を生み出します。この特性を最も活かせます。","short_title":"パワーリフティング"},{"title":"インターバルやペースを秒単位で設定し、泳ぎ切る","body":"インターバルやペースを秒単位で設定し、計画通りに泳ぎ切る。完璧な実行を前提とした設計を好むため、細部まで管理可能な環境でこそ、高い集中力とストイックさが最大限に発揮されます。無理なく継続できる理想の環境です。","short_title":"水泳"},{"title":"食事とトレーニングを完全にコントロールし、体をデザイン","body":"食事のPFCバランスと運動内容を管理し、数値を追って体をデザインする。記録と数値で証明できる成果が運動の絶対的な意味となるため、厳密な管理システムが継続の必須条件になります。無理なく継続できる理想の環境です。","short_title":"ボディメイク"},{"title":"ピークを合わせるためのプランを組み、着実に実行する","body":"大会や目標日にピークを合わせるための運動プラン（期分け）を組み、着実に実行する。設計された計画を完遂する体験そのものが、深い充実感をもたらします。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"ロードバイク"}]$jc8lqodrf$::jsonb, $jl3enmssh$[{"title":"明確な目標や計画がなく、時間と体力の無駄に感じる","body":"明確な目標や計画がない活動は、時間と体力の無駄に感じられ、意欲が湧きません。「ただ楽しむ」文脈では運動の意味を見出せず、かえって強い消耗感や不満につながってしまう。ストレスが溜まりやすく避けるべきです。","short_title":"レクリエーション"},{"title":"「なんとなく動く」だけで、成長している実感が持てない","body":"「なんとなく動く」だけでは達成感が得られず、自分が成長する実感が持てないため続きません。完璧な実行と数値化された成果がない環境は、高い基準と誠実さを活かすできない。ストレスが溜まりやすく避けるべきです。","short_title":"娯楽目的の運動"},{"title":"限界まで追い込みたいのに、他者のペースに巻き込まれる","body":"集中して自分を限界まで追い込みたいのに、他者のペースや雑談に巻き込まれると強いストレスを感じる。自分の緻密な計画が他人の介入で崩されることは、最大の苦痛です。ストレスが溜まりやすく避けるべきです。","short_title":"雑談メインのトレーニング"},{"title":"参加が自由で、その日の気分で内容が変わる","body":"参加してもしなくてもいい環境や、その日の気分で内容が変わる運動は、完璧な計画を立てて実行したい性質と合わないです。枠組みが緩すぎると、かえってどう動いていいか分からなくなります。ストレスが溜まりやすく避けるべきです。","short_title":"出欠自由なクラス"},{"title":"計画を下回る実行を「失敗」と認識し、自己嫌悪に陥る","body":"計画を下回る実行は「失敗」と認識されやすく、少しの妥協が自己嫌悪を招き継続を妨げる。完璧主義ゆえに、一度計画が崩れると「全部なかったこと」にしやすい脆さがあります。ストレスが溜まりやすく避けるべきです。","short_title":"妥協した運動"}]$jl3enmssh$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GFMC',
    '誰かと楽しむ活動', '友達との定期ウォーキング・公園でのバドミントンやキャッチボール・仲間と参加する観光地散策・グループヨガ体験・友人との気ままなサイクリングが自然に合いやすいです。何をやるかより誰とやるかがこのタイプの運動の質を決めるため、「一緒に運動できる人がいる」という状況そのものを最優先に選ぶとよいです。声をかけてもらうだけで運動できる、というシンプルな特性を活かした環境設計が最もよく機能します。',
    '一人の仕組みは機能しない', '一人でコツコツ続ける系の習慣アプリ・タイムや記録を競う個人種目・仲間の都合に関係なく一人で淡々とやるトレーニングは、このタイプには根本的に合いにくいです。「一人で続けられるようになろう」という方向性は、このタイプの動力源の性質と合っていないため、一人向けの健康管理アプリや孤独な習慣化プログラムを取り入れても機能しにくいです。',
    $ju6vv5dmw$[{"title":"景色を楽しみながら、おしゃべりメインで","body":"景色を楽しみながらおしゃべりメインで歩く活動です。運動内容より「誰と行くか」が全てであり、一緒に楽しい時間を過ごせた体験が、次も行こうと思える最強の継続根拠になります。無理なく継続できる理想の環境です。","short_title":"週末ウォーキング"},{"title":"勝ち負けより、その場の明るい雰囲気に溶け込む","body":"複数人で集まって、ワイワイ言いながら体を動かす遊びの延長です。勝ち負けや技術の向上よりも、その場の明るい雰囲気に溶け込み、みんなで盛り上がること自体が、熱量を自然と引き出します。無理なく継続できる理想の環境です。","short_title":"公園遊び"},{"title":"計画なしでその場のノリに合わせて動く","body":"旅行や日帰りのお出かけで、気づけばたくさん歩いていた「ついで運動」です。計画なしでその場のノリに合わせて動ける柔軟性があるため、仲間との楽しい予定がそのまま最高の運動になります。無理なく継続できる理想の環境です。","short_title":"観光地散策"},{"title":"終わった後のカフェタイムまでをセットにする","body":"友達を誘って単発のレッスンに参加し、終わった後のカフェタイムまでをセットのイベントにする。一人では重い腰が上がらなくても、「一緒に行こう」声かけさえあれば、喜んで体を動かすことができます。本来の強みを自然に引き出せます。","short_title":"グループヨガ"},{"title":"目的地を決めず、みんなで楽しく漕ぐ","body":"目的地を決めず、みんなで楽しく自転車を漕ぐ活動です。大人数の場に独特の高揚感を感じる特性があるため、誰かが隣にいるだけでペダルが軽くなり、義務感ゼロで長時間の有酸素運動をこなせます。無理なく継続できる理想の環境です。","short_title":"目的地の無いサイクリング"}]$ju6vv5dmw$::jsonb, $j844vimae$[{"title":"誰ともつながっていない孤独な記録管理","body":"誰ともつながっていない孤独な記録管理は、意欲が湧かずすぐに飽きてしまいます。「一人で続けられるようになろう」方向性自体が、本来の動力源の性質と決定的に合っていません。ストレスが溜まりやすく避けるべきです。","short_title":"習慣アプリ"},{"title":"他人との比較や厳しい数値目標のプレッシャー","body":"他人との比較や厳しい数値目標は、純粋にみんなと楽しみたい気持ちに水を差し、ただの重圧になってしまう。記録よりも体験の共有を重視するため、ストイックな環境では息苦しさを感じます。ストレスが溜まりやすく避けるべきです。","short_title":"ストイックな個人競技"},{"title":"黙々と自分を追い込む「修行」のような環境","body":"黙々と自分を追い込む環境は、「修行」にしか感じられず続きません。仲間がいれば強く、いなければ動き出せないシンプルな特性を無視したアプローチは失敗に終わります。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"孤独な筋トレ"},{"title":"誰かとやるという最大の動力源を否定される","body":"誰かとやることが最大の動力源なのに、それを否定する自立の目標設定は間違っている。一人でできないのは意志が弱いからではなく、単にエンジンの種類が違うだけだと割り切るべきです。ストレスが溜まりやすく避けるべきです。","short_title":"自立を促す目標設定"},{"title":"コミュニケーションが取れない閉鎖的な空間","body":"周りとの対話が取れない閉鎖的な空間では、特有の明るい熱量や巻き込み力が発揮できません。場を温める才能を活かせない環境は、魅力を感じない場所です。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。","short_title":"私語厳禁のレッスン"}]$j844vimae$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GFMD',
    '熱量を共有する活動', '音楽フェス参加・草野球やフットサル・マラソン大会やファンラン・サバゲーやアドベンチャーアクティビティ・チームビルド系スポーツイベントが自然に合いやすいです。参加するイベントや大会が先にあり、そこに向けた運動が自然に発生するとき、このタイプは最もよく運動できます。「次のイベント・次の体験」が常に視野にある状態を維持することがこのタイプの継続の条件です。',
    '義務的な定期活動は機能しない', '毎日同じメニューのジム通い・一人で黙々とやる記録管理系トレーニング・楽しくなくても続けなきゃ型の義務感運動は、このタイプには合いにくいです。定期的な月会費を払う形式のジムは「いつでも行ける=行かなくていい」という構造になりやすく、このタイプには特に機能しにくいです。固定されたルーティンを義務として続けることがこのタイプの最も苦手なフォーマットです。',
    $jjkxi3fo3$[{"title":"音楽と熱気の中で、一日中飛び跳ねて歩く","body":"音楽と熱気の中で、気づけば一日中飛び跳ねて数万歩を歩いているような活動です。非日常的な熱量の場に身を置いたとき最大の成果を発揮する、楽しさが先行するイベントは最高の無意識の運動です。無理なく継続できる理想の環境です。","short_title":"野外イベント"},{"title":"「みんなでタスキをつなぐ」お祭り感が動力","body":"個人の記録よりも「みんなでタスキをつなぐ」「お揃いのTシャツで走る」お祭り感が動力になります。仲間と一緒に燃えることに最大の喜びを見出すため、共有できる熱気がそのまま運動になります。無理なく継続できる理想の環境です。","short_title":"ファンラン"},{"title":"スリルと興奮があり、仲間と声を掛け合う","body":"日常では味わえないスリルと興奮があり、仲間と声を掛け合い全力で動ける遊びです。「次のイベント・次の熱量」で駆動されるエンジンを持つため、刺激的で予測不可能な体験が意欲を高く保ちます。無理なく継続できる理想の環境です。","short_title":"アドベンチャー"},{"title":"「とりあえずエントリー」で未来の予定を確定させる","body":"「とりあえずエントリーする」ことで未来の予定が確定し自然と体が動き出す活動です。定期的なルーティンよりも、次から次へと新しい体験をハシゴする方が、継続の核心を突いている。無理なく継続できる理想の環境です。","short_title":"単発イベント"},{"title":"呼ばれたときにガッと熱量を上げて参加する","body":"毎週の固定練習ではなく、呼ばれたときにガッと熱量を上げて参加するスポット的な関わり方です。義務感なく「その時だけ全力で楽しむ」関わり方が、熱しやすく冷めやすい特性にフィットします。無理なく継続できる理想の環境です。","short_title":"助っ人参加"}]$jjkxi3fo3$::jsonb, $j4a7tk4b6$[{"title":"変化のない退屈なルーティンの繰り返し","body":"変化のないルーティンは退屈で、月会費を払っても「いつでも行ける＝行かなくていい」になりがち。同じことを繰り返す継続モデルは、運動意欲を確実に、そして徐々に奪っていきます。ストレスが溜まりやすく避けるべきです。","short_title":"ジム通い"},{"title":"共有する仲間も、非日常の熱狂もない環境","body":"共有する仲間も、非日常の熱狂もない環境では、内なる熱量が発火しません。体験そのものを燃料とするため、ただ数値を追うだけの孤独な作業は苦痛でしかありません。ストレスが溜まりやすく避けるべきです。","short_title":"孤独なスコア計測"},{"title":"「健康のためにやらなきゃ」という義務感","body":"「健康のためにやらなきゃ」義務感や理屈は、自由なエンジンを止めてしまいます。心が躍らない活動を無理に習慣化しようとしても、必ずどこかで反動が来て挫折します。特有の性質と根本的に合わず、長期的な継続が非常に困難になります。","short_title":"義務的な運動"},{"title":"気分や熱量に関係なくスケジュールが固定される","body":"自分の気分や熱量に関係なく予定が固定されると、参加すること自体が窮屈な牢屋のように感じられます。縛られることを嫌うため、柔軟性のないシステムには長期間適応できません。ストレスが溜まりやすく避けるべきです。","short_title":"定期レッスン"},{"title":"「次のイベント」という明確な燃料がない状態","body":"「次のイベント」明確な燃料がない状態では、運動への意欲を維持するのが極めて困難です。イベントが終わると一気にやる気を失う特性があるため、空白期間の自主練は機能しません。ストレスが溜まりやすく避けるべきです。","short_title":"自主練"}]$j4a7tk4b6$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GFVC',
    '絆で動く活動', '固定メンバーとの週次ウォーキング・友人と参加するヨガやピラティス体験・小さなグループでのんびりする球技・固定グループのダンスクラス・友人との散策が自然に合いやすいです。特定の人との「いつものあの時間」という感覚が続く動力になります。活動の強度より、誰と一緒にいるかがこのタイプの運動の質を決めます。',
    '匿名の場では力が出ない', 'タイムや記録を競う個人競技・一人での記録管理型トレーニング・毎回メンバーが変わる大人数の匿名クラスは、このタイプには合いにくいです。大人数の匿名的な環境では「いてもいなくても同じ」という感覚が生まれやすく、運動意欲が湧きにくいです。強度や記録を前面に出したフィットネス文化は、このタイプにとって運動への心理的ハードルを高める傾向があります。',
    $jlt6vy44o$[{"title":"気心の知れた友人と、おしゃべりしながら","body":"気心の知れた23人の友人と、おしゃべりしながら歩く活動です。運動の強度は二次的であり、「一緒に体験した」感情的なつながりこそが最大の成果になる。顔と名前を知った特定の人との絆が、安定した動力源として機能します。","short_title":"週次ウォーキング"},{"title":"「一緒に行こう」という約束で安心して参加する","body":"一人で行きづらい場所も「一緒に行こう」の約束で安心して参加できます。「誰かのために」が強く機能するため、友人を誘うこと自体が強力な継続の仕組みになります。モチベーションの源泉と深く結びついており、非常に相性が良いです。","short_title":"ヨガ・ピラティス"},{"title":"ミスしても笑い合える温かい雰囲気で","body":"勝ち負けにこだわらずミスしても笑い合える温かい雰囲気のバドミントン等です。競争より調和を重んじるため、お互いを気遣いながら楽しめる少人数の安全な場が心身の健康を促進します。無理なく継続できる理想の環境です。","short_title":"のんびり球技"},{"title":"「今日も会えたね」という安心感がモチベーション","body":"毎回同じメンバーと顔を合わせ、「今日も会えた」安心感が意欲になります。匿名の大人数より、関係性が蓄積される小さなコミュニティに所属することが継続の鍵を握ります。自身の持つ熱量を最大限に発揮でき、長期的な継続につながります。","short_title":"ダンスクラス"},{"title":"「あのお店に行こう」と誘い合う自然な活動","body":"「あのお店に行ってみよう」と誘い合い、歩くこと自体を目的としない自然な活動です。特定の人との「いつものあの時間」が続く動力になるため、運動を意識させない日常の延長線上のイベントが続きます。無理なく継続できる理想の環境です。","short_title":"カフェ巡り"}]$jlt6vy44o$::jsonb, $jv1w7j0ze$[{"title":"競争や比較がプレッシャーになり、ストレスが勝つ","body":"競争や比較は重圧になりやすく、運動の楽しさよりストレスが勝ります。他者を打ち負かすことや数値の向上に価値を見出せないため、ストイックな競技環境は心の熱量を著しく消耗させます。ストレスが溜まりやすく避けるべきです。","short_title":"競争を伴う個人競技"},{"title":"誰とも感情を共有できない孤独な作業","body":"誰とも感情を共有できない孤独な作業は、意欲が湧きません。人のつながりを通じて運動することが本来のスタイルであるため、一人で完結する仕組みは機能しません。特有の性質と根本的に合わず、長期的な継続が非常に困難になります。","short_title":"孤独な作業"},{"title":"「いてもいなくても同じ」と感じる環境","body":"「いてもいなくても同じ」と感じる環境では、参加する理由を見失いやすくなる。誰かに必要とされる、あるいは誰かと時間を共有する実感が得られない場は、足を遠のかせる。ストレスが溜まりやすく避けるべきです。","short_title":"見知らぬ人とのクラス"},{"title":"「もっと追い込め」という文化でペースを乱される","body":"「もっと追い込め」文化は、心身の穏やかさと調和を大切にする性質と合わないです。強さを強要される空間にいると、自分のペースを乱され、運動への心理的ハードルが不必要に高くなってしまう。特性と合わず、継続が困難になります。","short_title":"スパルタなフィットネス"},{"title":"周りに気を配りすぎて自分のペースを失う","body":"周りに気を配りすぎて自分のペースを失うことが、典型的な消耗パターンです。場への配慮に熱量を使い果たするため、関係性ができていない人たちとの運動は終わった後にどっと疲れてしまう。ストレスが溜まりやすく避けるべきです。","short_title":"新規イベント"}]$jv1w7j0ze$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GFVD',
    '仲間の本気が活きる活動', 'チームスポーツ・クロスフィットやグループトレーニング・グループダンスクラス・スパーリングのある格闘技・仲間と全力で走るマラソン大会が自然に合いやすいです。仲間が全力で動いている場に身を置くだけで、自然に体が限界を超えていく——その環境こそがこのタイプの理想の運動設計です。高い熱量を持つ仲間と定期的に接触し続けることが継続的に運動するための前提条件になります。',
    '熱量のない場では着火しない', '一人での黙々系トレーニング・ログや記録管理が中心の孤独なプログラム・熱量が低い義務的なグループ活動は、このタイプには合いにくいです。熱量のない場では着火しにくく、記録管理が中心のプログラムは「楽しくない作業」になりやすいです。一人でのジム通いや個人の目標管理系フィットネスは、このタイプの動力を引き出しにくいです。',
    $j5lkt4l4e$[{"title":"限界まで追い込んでいる熱量に触発される","body":"周りが限界まで追い込む熱量に触発され、自分も普段以上の力を出せます。意欲を内側から生み出すのではなく、外部の熱量に触れたときに急激に点火される特性があるため、本気で取り組む仲間がいる環境こそが最高の着火剤です。","short_title":"クロスフィット"},{"title":"本気でぶつかり合う熱い環境が闘争心を引き出す","body":"相手と本気でぶつかり合う熱気が、内なる闘争心と意欲を一気に引き出します。一人でいるときの自分とは別人のように、相手の熱量に呼応して限界を超えていくことができる、特有の燃え方ができる場です。無理なく継続できる理想の環境です。","short_title":"格闘技"},{"title":"「みんなのために走る」状況が最高の着火剤","body":"「みんなのために走る」状況と、タスキをつなぐ熱狂が動力になります。チームが危機にある場面や、仲間の情熱が目に見える状況で強く燃えるため、感情を共有しながら全力を出せるが最適です。無理なく継続できる理想の環境です。","short_title":"リレーマラソン"},{"title":"周りの高いテンションに巻き込まれ、無我夢中で","body":"指導者や周りの参加者の高いテンションに巻き込まれ、無我夢中で踊り切ります。その場にいる全員の熱量が伝染し、自分も周囲を巻き込む熱量を生み出す、ポジティブなスパイラルを作り出せます。無理なく継続できる理想の環境です。","short_title":"グループダンス"},{"title":"勝ち負けがかかった本気の勝負の場でアドレナリン全開","body":"勝ち負けがかかる本気の勝負の場で興奮が全開になります。高い熱量を持つ仲間と接触し続けることが継続の前提条件であるため、定期的にこうした「熱い場」に所属し続けることが重要です。無理なく継続できる理想の環境です。","short_title":"スポーツイベント"}]$j5lkt4l4e$::jsonb, $j7xleewsg$[{"title":"外部からの熱量供給がない孤独な環境","body":"外部からの熱量供給がない孤独な環境ではエンジンがかからず続きません。一人での運動が続かないのは意志力の問題ではなく、他者の熱量で着火するエンジンの性質によるものだと理解すべきです。特性と合わず、継続が困難になります。","short_title":"静寂の中でのトレーニング"},{"title":"数値を追うだけの作業で、感情が動かない","body":"数値を追うだけの作業は「楽しくない義務」になりやすく、熱狂からは程遠いです。感情が動かない無機質な管理システムは、爆発的熱量を引き出すことができず、ただ消耗させるだけです。ストレスが溜まりやすく避けるべきです。","short_title":"無機質なデータ入力"},{"title":"「とりあえず集まっているだけ」のゆるい雰囲気","body":"「とりあえず集まるけ」のゆるい雰囲気では着火するきっかけがありません。チームの雰囲気が落ちると自分の意欲も連動して落ちるため、熱量のない場に居続けることは大きなリスクです。ストレスが溜まりやすく避けるべきです。","short_title":"義務的な集団活動"},{"title":"一緒に走る仲間の熱量が直接感じられない","body":"一緒に走る仲間の熱量が直接感じられないと、途中で心が折れやすくなります。自分の中から湧き上がる動機だけで長期間・長距離を耐え抜く設計は、外部着火型のは過酷なものとなります。ストレスが溜まりやすく避けるべきです。","short_title":"長距離マラソン"},{"title":"自分の内面と向き合う静的な環境で不完全燃焼","body":"自分の内面と向き合う静的な環境は、外部の激しい刺激を求める性質と合わず不完全燃焼になります。熱量を発散しきれないため、運動した充実感が得られず、継続する理由を見失ってしまいます。ストレスが溜まりやすく避けるべきです。","short_title":"静かなヨガ"}]$j7xleewsg$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GPMC',
    '定例で動く活動', '定例ウォーキングサークル・テニスやバドミントンサークル・長く通える定期スポーツクラブ・近所の友人との朝ウォーキングが自然に合いやすいです。同じ曜日・同じ場所・同じ仲間の繰り返しの積み重ねがこのタイプにとっての豊かなフィットネスになります。「毎週の定例」として組み込まれた活動が、意志力なしに運動し続けられる環境をつくります。',
    '非定例の活動はリズムを乱す', '毎回メンバーが変わるドロップイン型のクラス・一人でコツコツ続ける系の習慣・短期集中や大会エントリー型の特別プログラムは、このタイプのリズムを乱す傾向があります。「特別なこと」や「非日常の熱量」を前面に出したフィットネス設計は、このタイプには合いにくいです。コミュニティが変わる・メンバーが入れ替わるといった環境の変化も、継続のリスクになりやすいです。',
    $jq9udan74$[{"title":"毎週決まった曜日・時間に集まり、同じコースを","body":"毎週決まった曜日・時間に集まり、同じコースを歩く活動です。顔なじみとの挨拶や「毎週の定例」が楽しみになっているとき、充実した状態で運動を続けられます。同じ仲間と同じリズムを積み重ねることに深い価値を見出します。","short_title":"ウォーキングサークル"},{"title":"スタッフや常連客との安定した関係性が築ける","body":"運動の派手さより、スタッフや常連客との安定した関係性が築ける場所を選ぶです。どんな季節でも同じ場所に現れる、安定した存在感を発揮できるコミュニティを見つけることが最大の投資です。無理なく継続できる理想の環境です。","short_title":"顔なじみのスポーツクラブ"},{"title":"毎朝同じ場所に集まり、コミュニティの一部になる","body":"毎朝同じ公園に集まって体を動かす活動です。コミュニティの一部としての役割が運動を支えるため、「継続すること」自体が才能である強みが活かされ、意志力なしに運動し続けられる環境を作ります。無理なく継続できる理想の環境です。","short_title":"朝ラジオ体操"},{"title":"長く楽しく続けることを目的とした地域密着型","body":"競技志向ではなく長く楽しく続ける地域密着型サークルです。メンバーの増減があっても参加し続け、コミュニティの継続を陰で支える存在として居心地の良さを感じます。自身の持つ熱量を最大限に発揮でき、長期的な継続につながります。","short_title":"地域サークル"},{"title":"季節の変化を楽しみながら、同じメンバーで定期的に","body":"季節の変化を楽しみながら、同じメンバーで定期的に低山を歩く活動です。短期集中型の運動や頻繁に変わる環境よりも、安定したリズムを刻むことが、の豊かな運動になります。本来の強みを自然に引き出せるため、特性を最も活かせます。","short_title":"週末ハイキング"}]$jq9udan74$::jsonb, $j4p5x00fo$[{"title":"いつも違う顔ぶれで関係性が築けない環境","body":"いつも違う顔ぶれで関係性が築けない環境は、コミュニティとしての居心地の良さを感じられません。メンバーが入れ替わる環境の変化は、継続の大きなリスクになり、足が遠のく原因になります。ストレスが溜まりやすく避けるべきです。","short_title":"単発参加のクラス"},{"title":"仲間とのつながりがない孤独な活動","body":"仲間とのつながりがない孤独な活動は、運動を続ける意味を見出しにくいものです。コミュニティ「場」に所属することでリズムを作るため、一人向けの運動は長続きしません。ストレスが溜まりやすく避けるべきです。","short_title":"交流のない習慣"},{"title":"「非日常の熱量」を前面に出し、安定したリズムを乱す","body":"「特別なこと」や「非日常の熱量」を前面に出した運動設計は、安定したリズムを乱すため合わないです。派手な1週間よりも地味な1年を好むため、イベント依存型の意欲は機能しません。ストレスが溜まりやすく避けるべきです。","short_title":"特別なプログラム"},{"title":"予定がコロコロ変わり、定例の安心感がない","body":"予定がコロコロ変わる環境は、「毎週同じ場所に現れる」最大の強みを発揮できません。定例であることが安心感を生むため、柔軟すぎる予定はかえってストレスになります。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"不定期な活動"},{"title":"勝ち負けや実力で評価され、穏やかに続けられない","body":"勝ち負けや実力で評価される場は、穏やかに長く続けたい価値観と衝突します。他者との比較ではなく、コミュニティの維持と自身の安定した参加に価値を置くため、競争環境は息苦しさを生みます。ストレスが溜まりやすく避けるべきです。","short_title":"競争の激しいチーム"}]$j4p5x00fo$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GPMD',
    'チームで挑む活動', 'チームマラソンやリレーマラソン・社会人スポーツリーグ・昇段目標のある武道や格闘技・アドベンチャーレースやチームイベントが自然に合いやすいです。達成すべき目標と、それを共に追う仲間が揃ったとき、このタイプの運動は完成します。チームを引き上げる役割を担える環境に身を置くと、動力が最大化しやすいです。',
    '目標のない活動は動力にならない', '一人でコツコツ続ける地味な習慣・目標も記録もないゆるい活動・個人の数値のみを見るトレーニングは、このタイプには合いにくいです。チームとの結びつきがない個人フィットネスは義務感につながりやすく、続かなくなりやすいです。目標・計画・役割が揃った環境でこそ本領を発揮できるため、それらが欠けた状況では運動の意味を感じにくいです。',
    $j4mw8pa99$[{"short_title":"社会人リーグ","title":"チームの勝利という明確な目標に向けて、戦略的に練習計画を立てて挑む環境","body":"チームの勝利目標に向け、戦略的に練習計画を立てて挑むが最適です。冷静な分析とリーダーシップを発揮し結果を追求できる環境でこそ、本領が発揮されます。モチベーションの源泉と深く結びついており、非常に相性が良いです。"},{"short_title":"チーム対抗リレー","title":"各走者のタイムマネジメントや配置など、勝つための戦略を練る余地があるイベント","body":"各走者のタイムマネジメントや配置等、勝つための戦略を練る余地があります。具体的勝利条件に向かって仲間を巻き込み、効率的にチーム全体を引き上げるが最大の動力です。本来の強みを自然に引き出せるため、特性を最も活かせます。"},{"short_title":"アドベンチャーレース","title":"チームで知恵を絞り、効率的なルートや役割分担を設計して困難な課題をクリアしていく競技","body":"チームで知恵を絞り、効率的な役割分担を設計して困難な課題をクリアします。「勝つための計画を立てる」が、自身の意欲を最高潮に高めます。モチベーションの源泉と深く結びついており、非常に相性が良いです。ぜひ試してみてほしいです。"},{"short_title":"競技志向のペアスポーツ","title":"ダブルスなど、ペアとの連携や戦術が勝敗を大きく左右するスポーツ","body":"ダブルス等、ペアとの連携や戦術が勝敗を大きく左右するスポーツです。相手の弱点を突き、自分たちの強みを活かす戦略的思考が、運動の楽しさを何倍にも増幅させます。自身の持つ熱量を最大限に発揮でき、長期的な継続につながります。"},{"short_title":"仲間とのボディメイク","title":"「2ヶ月でマイナス5kg」など明確なゴールを掲げ、仲間と進捗を共有しながら体を絞る活動","body":"「2ヶ月でマイナス5kg」など明確なゴールを掲げ、仲間と進捗を共有しながら体を絞ります。一人で黙々と取り組むより、互いに励まし合い、時には成果を競い合えるような活気あるジム環境を選ぶと、圧倒的な成果を上げやすいです。モチベーションの源泉と深く結びついており、非常に相性が良いです。"}]$j4mw8pa99$::jsonb, $jcse5uam8$[{"short_title":"勝敗のない遊び","title":"明確な「勝ち」や「達成」の基準がなく、どこに向かって努力すればいいか分からない活動","body":"明確な「勝ち」や「達成」の基準がないと、どこへ努力すればいいか分からなくなります。戦略を立てる余地がない活動は、退屈な時間でしかありません。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。"},{"short_title":"受動的なフィットネス","title":"決められたメニューをただこなすだけで、持ち前の戦略眼やリーダーシップが活かせない環境","body":"決められたメニューをただこなすだけの環境では、持ち前の戦略眼やリーダーシップが活かせません。自ら目標を設定し、効率的なアプローチを設計する余白がないと意欲が湧きません。ストレスが溜まりやすく避けるべきです。"},{"short_title":"目標のない集まり","title":"「ただ楽しむだけ」で結果を求めない集団にいて、達成感や勝利の喜びが得られない状況","body":"「ただ楽しむだけ」で結果を求めない集団では、達成感や勝利の喜びが得られず不満が溜まります。結果を出すことに価値を置くため、ゴールが曖昧な環境は避けるべきです。本来の強みや特性を活かすことができず、非常に相性が悪いです。"},{"short_title":"個人完結の運動","title":"自分の成長だけでなく、チームを勝利に導くプロセスに喜びを感じるため、物足りなさを感じる運動","body":"自分の成長だけでなくチームを勝利に導くプロセスに喜びを感じるため、個人完結の運動は物足りないです。戦略を実行し、結果を分かち合う相手がいないと熱量が枯渇します。本来の強みや特性を活かすことができず、非常に相性が悪いです。"},{"short_title":"単調なルーティン","title":"毎日同じことを繰り返すだけで、工夫や改善の余地がなく飽きてしまう運動","body":"毎日同じことを繰り返すだけの運動は、工夫や改善の余地がなく飽きてしまいます。常に「どうすればもっと効率よく勝てるか」を考えられる、適度な競争が必要です。モチベーションの源泉と合致しないため、意欲を維持できず挫折します。"}]$jcse5uam8$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GPVC',
    '約束で続く活動', '固定メンバーとのランニングクラブ・定曜日・定時間のスタジオレッスン（固定仲間と）・同じペアとの定期テニスやバドミントン・チームウォーキングや定例散歩が自然に合いやすいです。「○○さんと毎週この日に」という具体的な約束が最も強い継続装置になります。仲間への責任感が動力に変わるため、コミットメントの強い関係性が継続の基盤になります。',
    '義務感のない場では続きにくい', '一人での自由参加型・いつでも辞められる活動・毎回メンバーが変わる匿名クラス・「参加してもしなくてもいいよ」型のゆるい集まりは、このタイプの継続には合いにくいです。義務感が薄く、来ても来なくても誰も気にしない環境では運動を始める理由が生まれにくいです。責任のない形式のフィットネスクラスや、気軽に入会・退会できる活動は続けにくい傾向があります。',
    $juqbuh7k2$[{"title":"「自分が休むと迷惑がかかる」という責任感を動力に","body":"毎週決まった時間に集まり、みんなで走ります。「自分が休むと迷惑がかかる」が強い継続装置になるため、具体的人物との『毎週の約束』が組み込まれた環境が、運動を確実に支えます。無理なく継続できる理想の環境です。","short_title":"ランニングクラブ"},{"title":"顔と名前を知っている固定の小グループで安定して","body":"顔なじみの仲間と受けるヨガやピラティスです。匿名の大人数より、顔と名前を知る固定の小グループとの活動が安定しやすいため、互いの存在がサボり防止になる環境選びが重要です。無理なく継続できる理想の環境です。","short_title":"スタジオレッスン"},{"title":"相手がいることで、気分に関わらず確実にコートへ","body":"相手がいることで、自分の気分に関わらず確実にコートへ向かえます。自分のためだけの動機では続きにくいが、社会的なコミットメントがあると驚くほど長く運動を続けられる強みを発揮します。無理なく継続できる理想の環境です。","short_title":"定期テニス"},{"title":"約束を守ることが運動の最大の目的になる","body":"固定メンバーでおしゃべりしながら歩く活動です。約束を守ることが運動の最大の目的になるため、強度の高さよりも「あの人が待っている」状況を作ることが、継続の最優先事項になります。無理なく継続できる理想の環境です。","short_title":"チームウォーキング"},{"title":"「地域に貢献する」という社会的意義がモチベーション","body":"「誰かの役に立つ」「地域に貢献する」社会的意義が、運動への意欲を強く後押しします。他者やコミュニティへのが動力に変わるため、利他的な目的を持つ活動は相性が良いです。この性質に合致し、無理なく継続できる理想的な環境です。","short_title":"プロギング"}]$juqbuh7k2$::jsonb, $jxxiqtilv$[{"title":"「行かなくても誰にも迷惑をかけない」環境","body":"いつ行ってもいい環境は「行かなくても迷惑をかけない」ため運動を始める理由が生まれにくいです。義務感が薄い場所では、本来の『他者のために動く』エンジンが機能しません。ストレスが溜まりやすく避けるべきです。","short_title":"出入り自由な施設"},{"title":"コミットメントが弱く、責任感を感じられない仕組み","body":"コミットメントが弱く責任感を感じられない仕組みは意欲を維持できません。気軽に入退会できる活動は、かえって「続けなくてもいい理由」を与えてしまうため長期継続には不向きです。ストレスが溜まりやすく避けるべきです。","short_title":"一過性の活動"},{"title":"顔も名前も知らず「いてもいなくても同じ」と感じる","body":"顔も名前も知らない人たちの中では「いてもいなくても同じ」と感じ、参加する意義を見失ってしまいます。特定の仲間への約束とが動力の核であるため、関係性が築けない場は避けるべきです。ストレスが溜まりやすく避けるべきです。","short_title":"交流のないクラス"},{"title":"来ても来なくても誰も気にせず、参加のハードルが上がる","body":"来ても来なくても誰も気にしない環境は、かえって参加のハードルを上げてしまいます。責任のない形式の運動は、運動を後回しにする口実を作りやすく、継続を困難にします。本来の強みや特性を活かすことができず、非常に相性が悪いです。","short_title":"責任のない集まり"},{"title":"個人的な目標だけでは、継続のエネルギーとして弱すぎる","body":"「健康になりたい」等個人的な目標だけでは継続の熱量として弱すぎます。「一人でも続けられるように」と無理をするのは、自分の特性を活かせていない証拠であり挫折の原因になります。ストレスが溜まりやすく避けるべきです。","short_title":"自己完結の筋トレ"}]$jxxiqtilv$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;
INSERT INTO public.exercise_animal_motion_guides (
    animal_code, suit_summary_title, suit_summary_body, unsuited_summary_title, unsuited_summary_body,
    suit_plans, unsuited_plans
  ) VALUES (
    'GPVD',
    'チームで燃える活動', '社会人リーグのフットサルやサッカー・草野球やソフトボールチーム・バスケットボールやバレーボールチーム・試合や昇段目標のある格闘技や武道・チームマラソンやリレーマラソンが自然に合いやすいです。チームとしての役割と責任が生まれる環境がこのタイプを継続的に運動させる前提になる。高い目標に向かってチームが一丸になっているときに、最大のパフォーマンスが発揮されます。',
    '一人・目標なしでは続かない', '一人でのジム通いやランニングマシン・目標も競争もないゆるいグループレッスン・個人の数値・記録だけを追うトレーニングは、このタイプには合いにくいです。ゆるい雰囲気のグループ活動は物足りなさを感じやすく、個人フィットネスは義務感になりやすいです。チームとしての一体感や共通の目標がない環境では、運動の意味を感じにくいです。',
    $jf1uxwh0p$[{"short_title":"スパルタンレース","title":"チームで泥臭く協力して、過酷な障害物を乗り越える競技","body":"チームで泥臭く協力し、過酷な障害物を乗り越えます。困難な目標ほど結束力が高まり燃える特性があり、一人では挫折しそうな壁を仲間の情熱と共に乗り越えるが最高の報酬です。無理なく継続できる理想の環境です。"},{"short_title":"情熱的なブートキャンプ","title":"インストラクターや仲間と大声を出し合いながら、限界まで体を追い込む高強度トレーニング","body":"指導者や仲間と大声を出し合い、限界まで体を追い込む高強度です。周囲の熱量と自分のが噛み合った瞬間に、一人では出せない爆発的熱量を生み出します。モチベーションの源泉と深く結びついており、非常に相性が良いです。"},{"short_title":"チームスポーツ","title":"勝利という結果だけでなく、そこに至るまでの「仲間との熱いドラマ」を共有できる本気の活動","body":"勝利結果だけでなく、そこに至るまでの「仲間との熱いドラマ」を共有できる本気のです。チームが崩れそうなときに強く燃えるため、感情をぶつけ合えるが本領を発揮させます。この性質に合致し、無理なく継続できる理想的な環境です。"},{"short_title":"格闘技・武道","title":"仲間と切磋琢磨しながら、厳しい稽古を乗り越えていくプロセスに燃える活動","body":"仲間と切磋琢磨し、厳しい稽古を乗り越えていくプロセスに燃えます。互いの限界を引き出し合うような、熱量が高く精神的にも追い込まれる環境が、内なる情熱に火をつけます。本来の強みを自然に引き出せるため、特性を最も活かせます。"},{"short_title":"過酷なリレーマラソン","title":"メンバー全員でタスキをつなぎ、お互いを鼓舞しながら死力を尽くして走るイベント","body":"メンバー全員でタスキをつなぎ、お互いを鼓舞しながら死力を尽くして走ります。「仲間のために走る」が、自分の限界を軽々と超えさせる最強の着火剤になります。モチベーションの源泉と深く結びついており、非常に相性が良いです。"}]$jf1uxwh0p$::jsonb, $jv092iflk$[{"short_title":"孤独なジム通い","title":"チームへの責任感も、仲間との熱量もない孤独な運動で、モチベーションが全く湧かない状況","body":"チームへの責任感も仲間との熱量もない孤独な運動は、意欲が湧きません。一人での運動が続かないのは意志力の問題ではなく、情熱を共有する「本来の力が発揮される場」がないためです。ストレスが溜まりやすく避けるべきです。"},{"short_title":"熱量の低いレッスン","title":"「ただ楽しむだけ」の活動で物足りなさを感じ、高いエネルギーを持て余してしまう環境","body":"「ただ楽しむだけ」の活動は物足りなさを感じ、高い熱量を持て余す。高い理想と情熱を持つため、限界に挑まないゆるい活動では運動の意味を見出せず、かえってストレスが溜まります。ストレスが溜まりやすく避けるべきです。"},{"short_title":"自分のための目標設定","title":"自分のためだけの目標設定では、本来の「仲間のために限界を超える」力が発揮できない運動","body":"自分のためだけの目標設定では、本来の「仲間のために限界を超える」力が発揮できません。チームの熱量とが揃ったときに最大の出力が出るため、個人完結の運動は長続きしません。ストレスが溜まりやすく避けるべきです。"},{"short_title":"表面的なレクリエーション","title":"自分が本気になっても周りがついてこない環境で、強いフラストレーションを生む活動","body":"自分が本気になっても周りがついてこない環境は、強い不満を生みます。理想の高さゆえに、熱量の低い集団にいるとチームへの不満が溜まり、運動そのものが嫌になってしまいます。ストレスが溜まりやすく避けるべきです。"},{"short_title":"無機質な運動","title":"淡々と数値を追うだけの機械的なトレーニングで、心が動かずすぐに飽きてしまう運動","body":"淡々と数値を追うだけの機械的な運動は、心が動かずすぐに飽きてしまいます。仲間との絆や、困難を乗り越えるドラマがない活動は、エンジンを回す燃料にはなりません。特有の性質と根本的に合わず、長期的な継続が非常に困難になります。"}]$jv092iflk$::jsonb
  )
  ON CONFLICT (animal_code) DO UPDATE SET
    suit_summary_title = EXCLUDED.suit_summary_title, suit_summary_body = EXCLUDED.suit_summary_body,
    unsuited_summary_title = EXCLUDED.unsuited_summary_title, unsuited_summary_body = EXCLUDED.unsuited_summary_body,
    suit_plans = EXCLUDED.suit_plans, unsuited_plans = EXCLUDED.unsuited_plans;

INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GFMC',
      $jkjchycgv$[{"t":"p","text":"気分軸とありたい軸および整える軸を共有する両者は、事前の計画に縛られずその場の直感で穏やかな活動を好む点で運動のペースが同調しやすいです。しかし活動の場において一人を好むか複数人を好むかという決定的な違いが存在します。複数人軸を持つ相手が自然な振る舞いとして集団を形成しようとする過程が、一人軸を持つ基準型にとっては運動中の予期せぬ同調圧力として機能してしまう構造があります。"}]$jkjchycgv$::jsonb,
      $jfv9hhbd9$[{"t":"p","text":"事前の約束や目標設定を一切行わず当日の思いつきだけで運動を開始するスタイルを共有することが両者の接点となります。目的地を定めない街歩きや途中で立ち寄る場所をその場で決めるような流動的な活動であれば互いの気分軸が満たされます。"},{"t":"p","text":"活動の規模を最小限に留め相手が他者を誘い込む衝動を抑えることが運動継続の鍵となります。一対一の空間であれば基準型は集団特有の義務感から解放され相手の明るい雰囲気を純粋に楽しむことができます。"},{"t":"p","text":"運動そのものを目的化せずカフェ巡りや買い物の延長線上にある移動として身体を動かす枠組みを共有します。これにより整える軸とありたい軸の共通点が活かされ双方が心地よい疲労感で活動を終えることが可能になります。"}]$jfv9hhbd9$::jsonb,
      $jaruoo5k2$[{"t":"p","text":"相手が活動の場に第三者を呼び込もうとした瞬間、基準型の参加意欲は急速に失われます。集団化による人間関係の調整や同調の必要性が一人軸を持つ基準型にとって回避すべきストレス要因となるためです。"},{"t":"p","text":"次回の活動を定期的なものとして固定しようとする相手の提案は、気分軸で動く基準型に対して強い束縛として作用します。継続を前提とした約束は基準型の自由な衝動を奪い活動自体を義務へと変質させてしまいます。"},{"t":"p","text":"相手が場を盛り上げるために発するエネルギーが静かな環境を好む基準型には過剰な刺激として受け取られることがあります。感情の共有を求める相手のアプローチに対し基準型が淡々と応じることで互いの期待値にずれが生じます。"}]$jaruoo5k2$::jsonb,
      $jl4s9e6iy$[]$jl4s9e6iy$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GFMH',
      $jmh4fde1y$[{"t":"p","text":"気分軸とありたい軸を共有する両者は、思いつきで運動を開始し精神的な安定を保つ点では一致しています。しかし一人で穏やかに整えることを好む基準型に対し相手は複数人で限界まで高めることを求めるため活動の規模と激しさに大きな隔たりがあります。基準型が静かな散策を意図していても相手のエネルギーが加わることで意図せず大規模かつ高強度のトレーニングへと発展しやすいです。"}]$jmh4fde1y$::jsonb,
      $javidc2pg$[{"t":"p","text":"事前の計画を立てずその日の直感に従って運動を開始する気軽さを共有します。目的地や内容を固定しないことで両者の気分軸が満たされ義務感のない自然な合流が可能になります。"},{"t":"p","text":"活動の強度を意図的に下げ相手が自身のエネルギーを持て余すことを許容できる環境を設定します。激しい運動ではなく新しい街の探索など好奇心を満たす方向へエネルギーを向けることで整える軸を持つ基準型も無理なく同行できます。"},{"t":"p","text":"互いの精神的な安定を活かし途中で別行動を取る選択肢を常に残しておくことが重要です。ありたい軸の共通により途中で解散しても関係性が損なわれないため無理に最後まで付き合う必要のない自由な枠組みを作ります。"}]$javidc2pg$::jsonb,
      $jkk2lu2mt$[{"t":"p","text":"相手が活動の強度や距離を突発的に引き上げようとする際、基準型は強い疲労感と心理的な抵抗を覚えます。高める軸の要求水準が整える軸の上限を容易に超えてしまうためペースの不一致が顕著になります。"},{"t":"p","text":"活動の途中で相手が他の知人を合流させようとする行動は一人軸の基準型にとって重大なストレスとなります。予期せぬ集団化は基準型の自由な空間を奪い即座に離脱を選択させる原因となります。"},{"t":"p","text":"相手の持つ外向的なエネルギーと高い熱量が静寂を好む基準型には圧迫感として作用します。同じ思いつきによる行動であってもその表現方法の激しさが基準型の身体的な快適さを損なわせます。"}]$jkk2lu2mt$::jsonb,
      $jipixs6ju$[]$jipixs6ju$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GFVC',
      $jnnatip7m$[{"t":"p","text":"気分軸と整える軸を共有する両者は、計画に縛られず穏やかな身体活動を好む点で運動のペースが合いやすいです。しかし一人で精神的に安定している基準型に対し相手は複数人との関わりの中で感情を揺れ動かす特徴を持ちます。相手の他者を気遣う温かさは基準型にとって心地よい反面、運動中に過度な配慮や集団への帰属を求められると重荷に変わります。"}]$jnnatip7m$::jsonb,
      $jyzcfzkzl$[{"t":"p","text":"目標や記録を設定せずその日の思いつきで穏やかに身体を動かす時間を共有します。散歩や軽いストレッチなど強度の低い活動であれば整える軸の共通点により互いに無理なくペースを合わせられます。"},{"t":"p","text":"相手が過度な気遣いを手放し基準型の単独行動や突然の離脱を自然なこととして受け入れることが大切です。一人軸とありたい軸を持つ基準型の行動原理を理解することで相手の心理的な負担が軽減されます。"},{"t":"p","text":"集団での活動を避け一対一の静かな環境で時間を過ごすようにします。複数人を好む相手があえて規模を縮小することで基準型は人間関係の煩わしさから解放されリラックスして運動に参加できます。"}]$jyzcfzkzl$::jsonb,
      $jo2aoor0j$[{"t":"p","text":"相手が良かれと思って集団での活動を提案したり他者との交流を促したりすると基準型は強い束縛を感じます。複数人軸の価値観が一人軸の基準型には同調圧力として機能し参加意欲を削ぎます。"},{"t":"p","text":"相手が感情の揺れから不安や悩みを共有しようとした際、基準型の客観的で淡々とした反応がすれ違いを生みます。ありたい軸の安定感がなりたい軸の相手には共感の欠如として受け取られ運動への意欲を低下させます。"},{"t":"p","text":"基準型が気分の変化により突然活動を終了させた場合、相手は自身に原因があるのではないかと過剰に思い悩んでしまいます。基準型の悪意のない自由な行動が相手の感情を不必要に揺さぶる結果となります。"}]$jo2aoor0j$::jsonb,
      $jof5soyoz$[]$jof5soyoz$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GFVH',
      $jgq71c0rx$[{"t":"p","text":"気分軸のみを共有し他の三つの軸が完全に相反する両者は、思いつきで運動するという一点以外に接点を持たない組み合わせです。基準型が一人で穏やかに精神の安定を保つ一方、相手は集団で感情を爆発させながら限界まで高めることを求めます。同じ直感的な行動であっても基準型のそれは静かな水面のようなものであり相手のそれは嵐のような激しさを持ちます。"}]$jgq71c0rx$::jsonb,
      $js71fq7pp$[{"t":"p","text":"事前の計画を一切排除しその瞬間の直感だけで運動の内容を決定する気軽さのみを共有します。気分軸の共通点を最大限に活かし互いの行動理由を論理的に説明しないことで一時的な合流が可能になります。"},{"t":"p","text":"相手が意図的に活動の規模を最小限に絞り強度を極端に落とした特別な状況を設定します。基準型の許容範囲内に相手が完全に合わせる譲歩を見せた場合にのみ穏やかな時間の共有が成立します。"},{"t":"p","text":"互いの価値観が根本的に異なることを前提とし運動を目的としない場でのみ交流を図るようにします。身体活動を伴わないカフェでの会話など軸の違いが摩擦を生みにくい環境を選ぶことが関係維持に繋がります。"}]$js71fq7pp$::jsonb,
      $jb464btqx$[{"t":"p","text":"相手が大人数を巻き込んで熱狂的な活動を展開しようとする姿勢は基準型にとって耐え難い苦痛となります。一人軸と整える軸を持つ基準型は集団の熱気と高強度の要求から即座に逃避を選択します。"},{"t":"p","text":"相手の激しい感情の起伏と他者への強い共感要求が精神的に安定している基準型には理解不能な重圧として作用します。なりたい軸の感情的な巻き込みはありたい軸の基準型の静寂を破壊してしまいます。"},{"t":"p","text":"相手が活動の強度を突発的に引き上げ限界に挑戦しようとする際、基準型は完全に興味を失います。高める軸の達成欲求は整える軸の基準型にとって無意味な疲労の強要にしか感じられません。"}]$jb464btqx$::jsonb,
      $joday7p4b$[]$joday7p4b$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GPMC',
      $j6hj3z432$[{"t":"p","text":"ありたい軸と整える軸を共有する両者は、精神的な安定を保ちながら穏やかな活動を好む点で運動のペースが合いやすいです。しかし一人で気分に従う基準型に対し相手は複数人で計画的にコミュニティを維持することを重視します。個人の自由を最優先する基準型と集団の調和を計画する相手の間には運動への参加義務を巡る静かな葛藤が存在します。"}]$j6hj3z432$::jsonb,
      $jenikemdq$[{"t":"p","text":"激しい運動を避け散歩や軽い体操など心身を穏やかに保る活動を選択します。整える軸の共通により互いに無理な負荷をかけることなくリラックスした状態で時間を共有できます。"},{"t":"p","text":"相手が主催する集まりにおいて基準型に一切の継続義務や出欠の連絡を求めない自由な参加枠を設けます。気分軸と一人軸を尊重された環境であれば基準型も抵抗なく運動の場に加わることができます。"},{"t":"p","text":"互いの精神的な安定を活かし運動に対する期待値を低く保つようにします。ありたい軸の共通により予定の変更や突然の不参加が発生しても互いに感情を乱すことなく関係を維持できます。"}]$jenikemdq$::jsonb,
      $jzwhrf34x$[{"t":"p","text":"相手が定期的な集まりを計画し次回の参加を約束させようとすると基準型は強い束縛を感じて離脱します。計画軸による継続の要求は気分軸の基準型にとって運動の自由の剥奪を意味します。"},{"t":"p","text":"集団内での交流や他者との協調を相手が自然に促す行動が一人軸の基準型には煩わしい干渉として受け取られます。コミュニティの維持という目的自体が基準型の運動スタイルと対立します。"},{"t":"p","text":"基準型がその日の気分で突然参加を取りやめる行動が計画的に場を整える相手の基盤を静かに揺るがします。基準型に悪意はないものの相手の構築した運動の調和を乱す要因となります。"}]$jzwhrf34x$::jsonb,
      $jy6via7n4$[]$jy6via7n4$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GPMH',
      $jmg2hoyi3$[{"t":"p","text":"ありたい軸のみを共有する両者は、精神的な安定という基盤以外は全て対極に位置する組み合わせです。基準型が一人で気分に従い穏やかに過ごすのに対し相手は集団を率いて計画的に高みを目指します。相手の目標達成に向けた組織的な熱量は基準型にとって全く関わりのない別世界のものとして認識され運動の場での接点は極めて少ないです。"}]$jmg2hoyi3$::jsonb,
      $jeaq9svol$[{"t":"p","text":"互いの精神的な安定を活かし価値観の違いを客観的に認め合える距離感を保つようにします。ありたい軸の共通により相手の運動スタイルを否定することなく異なる存在として尊重し合うことができます。"},{"t":"p","text":"相手が目標や計画を完全に手放す休息日においてのみ基準型の穏やかなペースに合わせる機会を設けます。高める軸を一時的に封印した状態であれば整える軸の活動を共有できます。"},{"t":"p","text":"運動や目標達成とは無関係な日常の延長線上でのみ行動を共にするようにします。買い物のついでに歩くなど身体活動に意味を持たせない枠組みを設定することで軸の違いによる摩擦を回避します。"}]$jeaq9svol$::jsonb,
      $j76bbcbxz$[{"t":"p","text":"相手が明確な目標を設定し計画的なトレーニングを提案した瞬間、基準型の関心は完全に失われます。計画軸と高める軸の組み合わせは気分軸と整える軸を持つ基準型にとって最も忌避すべき要素です。"},{"t":"p","text":"チームでの活動や集団での目標達成を相手が重視する姿勢が一人軸の基準型には理解しがたい同調圧力として映ります。複数人軸の連帯感は基準型の運動の自由を脅かす脅威となります。"},{"t":"p","text":"基準型が気分の変化で予定を放棄する行動に対し計画を重んじる相手は論理的な説明を求めますが基準型はそれを持たない。この行動原理の根本的な違いが運動を通じた対話の断絶を引き起こします。"}]$j76bbcbxz$::jsonb,
      $jjk19hbs7$[]$jjk19hbs7$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GPVC',
      $jviuahyjz$[{"t":"p","text":"整える軸のみを共有する両者は、激しい運動を好まないという表面的な行動様式だけが一致している組み合わせです。しかし基準型が一人で気分に従い穏やかに精神の安定を保つのに対し相手は集団の中で計画を守り感情を揺らしながら他者への責任を果たします。穏やかな活動強度という共通項はあるもののそこに至る動機が完全に相反するため共に行動する理由は見出しにくいです。"}]$jviuahyjz$::jsonb,
      $jsqpxt77r$[{"t":"p","text":"激しい負荷を伴わない散歩や軽いストレッチなど穏やかな活動を選択します。整える軸の共通により身体的な疲労感やペースの不一致による直接的なストレスは回避できます。"},{"t":"p","text":"相手が他者への責任感や集団のルールを完全に切り離し基準型の単独行動を許容する環境を作ります。義務感を排除した状態でのみ基準型は警戒心を解いて運動に参加できます。"},{"t":"p","text":"互いの動機の違いを理解し身体活動に深い意味や継続性を求めないようにします。その場限りの軽い運動として割り切ることで計画軸と気分軸の衝突を未然に防ぐことができます。"}]$jsqpxt77r$::jsonb,
      $j1x3u8p8c$[{"t":"p","text":"相手がチームのための行動や約束の遵守を求めると基準型は強い束縛を感じて即座に距離を置きます。複数人軸と計画軸による責任の要求は一人軸と気分軸の基準型にとって耐え難い重荷となります。"},{"t":"p","text":"基準型が気分によって突然行動を変更したり約束を反故にしたりすると相手は強い不安や感情の揺れを経験します。ありたい軸の基準型の淡々とした態度がなりたい軸の相手を深く傷つけてしまいます。"},{"t":"p","text":"相手が他者を気遣うあまり過剰な配慮を示すことが基準型には不要な干渉として受け取られます。感情の共有を求める相手と自己完結を望む基準型の間で運動中の心理的なすれ違いが絶えません。"}]$j1x3u8p8c$::jsonb,
      $jrflf74jb$[]$jrflf74jb$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GPVH',
      $jaahr9lce$[{"t":"p","text":"四つの軸全てが完全に対極に位置する両者は、行動原理から価値観に至るまで一切の共通点を持たない組み合わせです。基準型が一人で気分に従い穏やかに精神を安定させるのに対し相手は集団を率いて計画的に限界まで高め感情を燃やし尽くします。運動という文脈において両者が交わることはなく互いの世界が全く異なることを前提とした完全な棲み分けが必要となる関係です。"}]$jaahr9lce$::jsonb,
      $jupfcp22o$[{"t":"p","text":"運動や身体活動に関する話題を完全に避け互いの領域に一切干渉しないことを基本とします。共通点が存在しないことを互いに認識し無理な同調を求めないことが最大の防御策となります。"},{"t":"p","text":"相手が自身の目標や計画を完全に放棄し基準型の極めて低い強度と気まぐれなペースに一方的に合わせる特例的な状況を設定します。この場合のみ一時的な空間の共有が成立します。"},{"t":"p","text":"同じ場所にいながら全く別の活動を行う並行状態を維持します。公園で相手が激しいトレーニングを行う傍らで基準型が静かに散策をするなど空間のみを共有し行動は交わらせないようにします。"}]$jupfcp22o$::jsonb,
      $j519f3czy$[{"t":"p","text":"相手がチームでの目標達成や計画的な高強度トレーニングを提案する行為自体が基準型に対する強烈なストレスとなります。四つの軸全てが相反するため誘いそのものが攻撃として機能します。"},{"t":"p","text":"基準型の計画性のなさや気まぐれな行動に対し相手が責任感や向上心の欠如として否定的な感情を抱きます。互いの行動原理が理解不能であるため運動を通じた対話による解決が極めて困難です。"},{"t":"p","text":"相手の感情的な熱量と他者を巻き込もうとする強いエネルギーが精神的な静寂を好む基準型を心理的に追い詰めます。存在のエネルギー差がそのまま摩擦の原因となります。"}]$j519f3czy$::jsonb,
      $jmyzuwxb1$[]$jmyzuwxb1$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'SFMH',
      $jqrtwb2mh$[{"t":"p","text":"一人軸、気分軸、ありたい軸を共有する両者は、誰にも縛られずその日の直感で運動し精神的な安定を保つ点で深く共鳴する組み合わせです。唯一の違いは活動の強度であり基準型が穏やかな散策を好むのに対し相手は限界に挑むような激しい冒険を求めます。行動の起点は同じでも最終的な目的地やペースが大きく異なるため並走することは難しいですが互いの独立性を尊重し合える関係です。"}]$jqrtwb2mh$::jsonb,
      $jd2wcry13$[{"t":"p","text":"事前の約束を一切せずその日の思いつきで運動を開始する自由なスタイルを共有します。互いに計画を立てないことで気分軸が満たされ義務感のない心地よい関係が築けます。"},{"t":"p","text":"活動の強度について事前に明確な合意を形成し相手が基準型の穏やかなペースに合わせるか途中で別行動を取ることを前提とします。整える軸と高める軸の違いを認識し無理な同調を避けます。"},{"t":"p","text":"互いの単独行動を尊重し同じ目的地に向かう場合でも別々のルートやペースを選択します。一人軸とありたい軸の共通により干渉しない並行活動が最も自然な形となります。"}]$jd2wcry13$::jsonb,
      $j5vzwua1f$[{"t":"p","text":"相手が突発的に限界に挑戦しようとしたり激しい運動を提案したりすると基準型は疲労感と抵抗を覚えます。高める軸の衝動が整える軸の許容範囲を容易に超えてしまいます。"},{"t":"p","text":"相手が活動の中に競争要素や自己記録の更新を持ち込むと基準型の関心は急速に失われます。穏やかな現状維持を望む基準型にとって高みを目指す姿勢は無意味な疲労の強要に映ります。"},{"t":"p","text":"行動の起点は同じであっても途中で相手のペースが上がり基準型が取り残される状況が発生しやすいです。強度の違いが結果的に運動中の行動の分断を引き起こし一体感を損なわせます。"}]$j5vzwua1f$::jsonb,
      $j4y3be2lo$[]$j4y3be2lo$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'SFVC',