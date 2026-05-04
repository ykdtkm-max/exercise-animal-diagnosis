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
      $juejxwle3$[{"t":"p","text":"一人軸、気分軸、整える軸を共有する両者は、誰にも縛られずその日の思いつきで穏やかに身体を動かすという外形的な行動様式が完全に一致している組み合わせです。唯一の違いは基準型が精神的に安定しているのに対し相手は感情の揺れを伴う点です。相手の気分の落ち込みや不安に対して基準型が淡々と対応することで生じる微細な温度差が運動の継続において調整を要する課題となります。"}]$juejxwle3$::jsonb,
      $j0the3fk1$[{"t":"p","text":"計画や目標を一切設定せずその日の気分に従って穏やかな活動を共有します。一人軸と整える軸の共通により互いに干渉することなく心地よいペースで運動の時間を過ごすことができます。"},{"t":"p","text":"相手の感情の揺れに対して基準型が過剰に反応せず適度な距離感を保つようにします。ありたい軸の安定感を持って相手のなりたい軸の起伏を静かに見守ることで運動中の関係の均衡が保たれます。"},{"t":"p","text":"互いに無理をしてまで行動を共にしないという暗黙の了解を形成します。気分が乗らない時は自由に離脱できる環境を整えることで気分軸の自由が最大限に尊重されます。"}]$j0the3fk1$::jsonb,
      $ju92hbxon$[{"t":"p","text":"相手が感情の落ち込みや不安を共有しようとした際、基準型の客観的で淡々とした反応が相手に冷たさとして受け取られてしまいます。ありたい軸となりたい軸の感情処理の違いが運動中のすれ違いを生みます。"},{"t":"p","text":"相手が自身の感情の揺れから無意識に同調を求めたり義務感を作り出したりすると基準型は束縛を感じて距離を置きます。一人軸の自由が感情的な依存によって脅かされ運動への意欲を削ぎます。"},{"t":"p","text":"相手の不調や気分の波が場の空気を重くし精神的な安定を好む基準型の快適さを損なわせます。感情の伝染が基準型にとって運動中の予期せぬストレス要因となります。"}]$ju92hbxon$::jsonb,
      $jygbe1bnt$[]$jygbe1bnt$::jsonb
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
      'SFMC', 'SFVH',
      $jk2wv1c9m$[{"t":"p","text":"一人軸と気分軸を共有する両者は、他者に縛られず直感に従って運動を開始する点では一致している組み合わせです。しかし基準型が精神の安定を保ちながら穏やかに活動するのに対し相手は激しい感情の波と共に限界まで高める活動を求めます。同じ思いつきによる単独行動であっても基準型のそれは静かな散歩であり相手のそれは全力の疾走です。"}]$jk2wv1c9m$::jsonb,
      $jyop76570$[{"t":"p","text":"事前の計画を立てずその瞬間の直感で運動の内容を決定する自由さを共有します。互いに他者の干渉を嫌う一人軸の特性を活かし独立した個としての関係性を維持します。"},{"t":"p","text":"相手が意図的に活動の強度を極限まで下げ感情の起伏を抑えた休息日においてのみ行動を共にします。整える軸とありたい軸の領域に相手が歩み寄った場合に限り穏やかな共有が可能になります。"},{"t":"p","text":"同じ場所にいながら全く別のペースと強度で活動する並行状態を受け入れます。互いの行動に干渉せずそれぞれの目的を独立して追求することで運動中の摩擦を回避します。"}]$jyop76570$::jsonb,
      $j14lktzpb$[{"t":"p","text":"相手が突発的に全力を出し切るような高強度の活動を開始すると基準型は完全に取り残され関心を失います。高める軸の爆発的なエネルギーは整える軸の基準型には理解不能な疲労の対象となります。"},{"t":"p","text":"相手の激しい感情の起伏とそれに伴う行動の極端な変化が精神的に安定している基準型には過剰な刺激として作用します。なりたい軸の波がありたい軸の静寂を乱し運動への意欲を削ぎます。"},{"t":"p","text":"相手が自身の全力の姿勢を基準型にも無意識に期待したり共有を求めたりすると基準型は強い圧迫感を感じて即座に逃避します。強度の強要は基準型の自由を奪う最大の要因となります。"}]$j14lktzpb$::jsonb,
      $jmq39wfxn$[]$jmq39wfxn$::jsonb
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
      'SFMC', 'SPMC',
      $jzswkhvkv$[{"t":"p","text":"一人軸、ありたい軸、整える軸を共有する両者は、精神的な安定を保ちながら誰にも縛られず穏やかな活動を好む点で運動のペースが極めて似ている組み合わせです。しかし相手が穏やかな活動を習慣化し計画的に継続しようとするのに対し基準型はその継続の約束自体に強い束縛を感じます。この継続に対する価値観の決定的な違いが運動を通じた関係の長期的な維持を困難にします。"}]$jzswkhvkv$::jsonb,
      $j87p43x1e$[{"t":"p","text":"激しい負荷を伴わない穏やかな活動を一人それぞれのペースで楽しむ空間を共有します。整える軸とありたい軸の共通により互いに無理な要求をせず精神的に安定した時間を過ごせます。"},{"t":"p","text":"相手が自身の計画性や習慣化の要求を基準型に一切向けずその場限りの単発の活動として割り切るようにします。気分軸の基準型に対して次回の約束を求めないことが運動中の関係成立の絶対条件となります。"},{"t":"p","text":"互いの独立性を尊重し同じルートを歩く場合でも無言で並走するなど過度な交流を避けます。一人軸の特性を活かし干渉しない心地よさを最大限に享受するようにします。"}]$j87p43x1e$::jsonb,
      $jsb12yeui$[{"t":"p","text":"相手が活動の習慣化を提案し定期的なスケジュールを組もうとした瞬間、基準型の参加意欲は完全に消滅します。計画軸による継続の要求は気分軸の基準型にとって運動の自由の終わりを意味します。"},{"t":"p","text":"相手が過去の記録や頻度を持ち出し現状維持の指標として提示すると基準型はそれをノルマとして受け取り重圧を感じます。記録の概念自体が基準型の運動スタイルと対立します。"},{"t":"p","text":"基準型がその日の気分で突然予定をキャンセルする行動が計画通りに物事を進めたい相手の秩序を静かに乱します。互いに悪意はないものの行動の前提が異なるため運動中のすれ違いが避けられません。"}]$jsb12yeui$::jsonb,
      $jskgckbfr$[]$jskgckbfr$::jsonb
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
      'SFMC', 'SPMH',
      $jk31fliq3$[{"t":"p","text":"一人軸とありたい軸を共有する両者は、他者に依存せず精神的な安定を保ちながら独立して行動する点で運動中の相互理解を持つ組み合わせです。しかし活動の目的と手法において基準型が気分に従い穏やかに整えるのに対し相手は計画的に限界まで高め自己記録の更新を狙います。互いの存在を尊重し合うことはできても運動という枠組みの中で行動を共にすることは極めて困難な関係です。"}]$jk31fliq3$::jsonb,
      $jjdzhtpr9$[{"t":"p","text":"互いの独立した精神性と一人の時間を重んじる価値観を尊重し干渉しない関係を維持します。ありたい軸と一人軸の共通により異なる目標を持つ他者として客観的に認め合うことができます。"},{"t":"p","text":"相手が記録や計画を完全に手放す完全休養日においてのみ基準型の穏やかな散策に同行します。高める軸と計画軸を一時的に封印した状態でのみ活動のペースが一致します。"},{"t":"p","text":"同じ公園などの空間を共有しつつ全く別の活動を行う並行状態を基本とします。相手が激しいトレーニングを行う傍らで基準型が静かに過ごすなど運動中の空間の共有のみに留めます。"}]$jjdzhtpr9$::jsonb,
      $jzdczwl8v$[{"t":"p","text":"相手が明確な数値目標や計画的なトレーニングの概念を会話に持ち込むだけで基準型は強い心理的抵抗を覚えます。計画軸と高める軸の価値観は気分軸と整える軸の基準型には重圧でしかありません。"},{"t":"p","text":"相手の自己成長への強い執着と継続的な努力の姿勢が現状の穏やかさを好む基準型には理解しがたい苦行として映ります。目的意識の違いが運動中の行動の共有を不可能にします。"},{"t":"p","text":"基準型の無計画で気まぐれな行動様式に対し相手が非効率や目的の欠如を感じる場合があります。互いの行動原理が相反するため運動の場では交わらないことが最善となります。"}]$jzdczwl8v$::jsonb,
      $jta3pqmcu$[]$jta3pqmcu$::jsonb
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
      'SFMC', 'SPVC',
      $jbxw22z3l$[{"t":"p","text":"一人軸と整える軸を共有する両者は、他者に干渉されず穏やかな強度で身体を動かす点で運動のペースは一致しやすい組み合わせです。しかし基準型が気分に従い精神の安定を保つのに対し相手は厳格な計画とルーティンを守ることで感情の安定を得ます。相手のルーティンに基準型が組み込まれた瞬間、穏やかだった関係は義務と重圧に変わり相手の感情の揺れが基準型をさらに遠ざける結果となります。"}]$jbxw22z3l$::jsonb,
      $j4hdit3ym$[{"t":"p","text":"激しい運動を避け散歩や軽いストレッチなど身体的な負荷の少ない活動を選択します。整える軸の共通により互いの体力的なペースや求める強度は自然に一致します。"},{"t":"p","text":"相手が自身の厳格なルーティンから基準型を完全に除外し基準型の突発的な参加や不参加を許容する枠組みを作ります。計画軸の要求を基準型に向けないことが運動継続の鍵となります。"},{"t":"p","text":"互いの一人の時間を尊重し過度な交流や感情の共有を求めないようにします。一人軸の特性を活かし適度な距離感を保ちながら並行して運動する状態を維持します。"}]$j4hdit3ym$::jsonb,
      $jcmrbjr6q$[{"t":"p","text":"相手が毎日の決まった時間やルートでの活動を提案し習慣化を図ろうとすると基準型は強い束縛を感じて逃避します。計画軸によるルーティンの強要は気分軸の基準型の自由を完全に奪います。"},{"t":"p","text":"基準型が気分によって突然活動をキャンセルすると相手のルーティンが崩れなりたい軸の強い感情の揺れや不安を引き起こします。基準型の自由な行動が相手の運動を通じた精神的安定を破壊します。"},{"t":"p","text":"相手の感情的な動揺やルーティンへの固執が精神の安定を好む基準型には過剰な重圧として受け取られてしまいます。ありたい軸の基準型は感情的な巻き込みを嫌い運動の場での関係を断つことを選択しやすいです。"}]$jcmrbjr6q$::jsonb,
      $jpnkfsjor$[]$jpnkfsjor$::jsonb
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
      'SFMC', 'SPVH',
      $jlv1zr356$[{"t":"p","text":"一人軸のみを共有する両者は、他者と群れることを好まず単独で行動するという一点においてのみ一致している組み合わせです。しかし基準型が気分に従い穏やかに精神の安定を保つのに対し相手は緻密な計画のもと限界まで高め感情を燃やし尽くします。一人で運動するという形態は同じであってもその目的、強度、精神状態の全てが相反するため運動の場で交わることはありません。"}]$jlv1zr356$::jsonb,
      $jsc13zii1$[{"t":"p","text":"互いに一人で行動することを好む性質を尊重し一切の干渉を行わない関係を基本とします。一人軸の共通点を活かし互いの独立した領域を侵さないことが運動中の最大の防御策となります。"},{"t":"p","text":"運動や身体活動に関する話題を避け互いの価値観の違いが表面化しない日常の会話のみに留めるようにします。行動原理が根本的に異なることを前提とし無理な理解を求めないことが大切です。"},{"t":"p","text":"相手が完全な休息日として一切の計画と強度を手放した極めて稀な状況においてのみ基準型の穏やかな活動に同席します。この場合も互いのペースを強制しないことが条件となります。"}]$jsc13zii1$::jsonb,
      $jsn9oyejk$[{"t":"p","text":"相手が計画的な高強度トレーニングや自己記録の更新について語るだけで基準型は強い心理的圧迫感と疲労を覚えます。三つの軸の相反が運動前の会話の段階から摩擦を生みます。"},{"t":"p","text":"相手の感情的な起伏や目標達成に対する強い執着が精神的な静寂を好む基準型には過剰なエネルギーとして作用し運動の場から距離を置かせる原因となります。"},{"t":"p","text":"基準型の計画性のなさや現状維持の姿勢に対し相手が自己成長の放棄として否定的な見方をする可能性があります。互いの行動の根底にある価値観が全く異なるため運動を通じた理解は困難です。"}]$jsn9oyejk$::jsonb,
      $j7tovliex$[]$j7tovliex$::jsonb
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
      'SFMH', 'GFMC',
      $jtk0hxo8e$[{"t":"p","text":"直感的に行動を開始する身軽さを共有しつつも運動の目的が自己の限界突破か集団の調和かで分かれる組み合わせです。事前の計画を必要とせずその場の気分で動き出せる点では波長が合いますが、負荷が高まるにつれて方向性の違いが浮き彫りになります。自己の体験を深く掘り下げたい側と周囲との一体感を保ちながら楽しみたい側との間で満足感を得るポイントに構造的なズレが生じやすいです。"}]$jtk0hxo8e$::jsonb,
      $j0sb95ryk$[{"t":"p","text":"事前の詳細なスケジュールを組まず当日の直感に任せて行動を開始するスタイルが両者の身軽さを最大限に引き出します。"},{"t":"p","text":"集団での賑やかな雰囲気が単独で行動しがちな側の新しい刺激に対する好奇心を自然な形で刺激し、行動のきっかけとして機能します。"},{"t":"p","text":"途中で目的や内容が変更になっても互いに精神的な安定を保てるため、状況に応じた柔軟な対応を前提とすることでストレスのない関係を築けます。"}]$j0sb95ryk$::jsonb,
      $jqroepuug$[{"t":"p","text":"運動の強度や難易度をさらに引き上げようとする衝動が、適度な負荷で心地よさを保ちたい側の許容量を超え、体力的な疲労や心理的な負担を与えてしまいます。"},{"t":"p","text":"参加人数を増やして集団の輪を広げようとする動きが、単独での深い体験に没入したい側の集中力を削ぎ、モチベーションを急激に低下させる原因となります。"},{"t":"p","text":"集団のペースに合わせる状態が長く続くと、より高い負荷を求める側にとって物足りなさが蓄積し、共に運動する意義を見失いやすくなります。"}]$jqroepuug$::jsonb,
      $jka7vtdr5$[]$jka7vtdr5$::jsonb
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
      'SFMH', 'GFMH',
      $jr8fl43sl$[{"t":"p","text":"事前の取り決めなしに高い負荷の運動へ飛び込めるエネルギーレベルの高さと即興性が完全に一致する強力な組み合わせです。限界に挑む過程での失敗や予定変更にも動じない精神的な安定感も共有しています。唯一の違いはその高い熱量を集団で分かち合いたいか自己の内面で深く味わいたいかという点にあり、参加人数を最小限に抑えることで互いの高いパフォーマンス要求をぶつけ合えます。"}]$jr8fl43sl$::jsonb,
      $j1a0wcfad$[{"t":"p","text":"直感的に行動を起こすタイミングと勢いが合致しているため、思い立った瞬間に高い負荷のトレーニングや新しいアクティビティへ即座に移行するスタイルが適しています。"},{"t":"p","text":"互いに限界まで追い込むことを好むため、運動の強度を意図的に抑えることなくそれぞれの全力を引き出し合う環境を設定することで深い満足感を得られます。"},{"t":"p","text":"想定外のトラブルやパフォーマンスの不調に対しても互いに精神的な余裕を持って受け流せるため、挑戦的な目標に対しても過度なプレッシャーを感じずに取り組めます。"}]$j1a0wcfad$::jsonb,
      $jxu6f387h$[{"t":"p","text":"集団の規模を拡大して熱量を高めようとする動きが、単独での深い没入感を求める側の集中を妨げ、自己の体験に対する純度を低下させる原因となります。"},{"t":"p","text":"参加者が増えることで生じるペースの同調圧力が、自己の限界に挑みたい側の自由度を奪い、本来のパフォーマンスを発揮できない窮屈さを生み出します。"},{"t":"p","text":"集団の調和を気にかける側からの過剰な配慮や心配が、自己完結的に行動したい側にとっては不必要な干渉として受け取られ、心理的な距離を生む要因となります。"}]$jxu6f387h$::jsonb,
      $jyk35q784$[]$jyk35q784$::jsonb
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
      'SFMH', 'GFVC',
      $j3o1k1a53$[{"t":"p","text":"事前の計画に縛られない自由さは共有しているものの運動に対する根本的な要求が大きく異なる組み合わせです。自己の限界に挑む単独での高負荷な体験を求める側と集団の感情的な調和を重んじながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$j3o1k1a53$::jsonb,
      $jor70k57b$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や会話を楽しむ活動を共有することで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jor70k57b$::jsonb,
      $jelgr1qpe$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、周囲との調和や穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"感情の起伏を伴いながら運動を楽しむ側にとって、常に一定の精神状態を保ちながら唐突に激しい行動に出る側の振る舞いが理解しがたく、不信感につながります。"}]$jelgr1qpe$::jsonb,
      $jcx6ovusg$[]$jcx6ovusg$::jsonb
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
      'SFMH', 'GFVH',
      $j8m3g2rla$[{"t":"p","text":"計画を持たずに高い負荷の運動へ飛び込むという行動の核心部分が共鳴する組み合わせです。思い立った瞬間に全力で動き出せる起動力の高さは一致していますが、その熱量を周囲に感染させたい側と自己の体験として完結させたい側とで方向性が分かれます。また感情を爆発させて取り組む姿勢と常に精神的な安定を保つ姿勢の違いが運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$j8m3g2rla$::jsonb,
      $j5beq8o4u$[{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、運動の強度を意図的に抑えることなく互いの限界を引き出し合うような挑戦的な環境を設定することが望ましいです。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j5beq8o4u$::jsonb,
      $jivricrlq$[{"t":"p","text":"集団全体を巻き込んで熱狂を生み出そうとするアプローチが、単独での深い体験に没入したい側の集中力を削ぎ、運動に対する純粋なモチベーションを低下させます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"高い負荷を求める目的が集団の熱量向上か個人の限界突破かで対立し、同じ空間で激しく動いていても互いに見ているゴールが異なるため一体感を得にくいです。"}]$jivricrlq$::jsonb,
      $j5z94y6su$[]$j5z94y6su$::jsonb
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
      'SFMH', 'GPMC',
      $jon03cyiz$[{"t":"p","text":"精神的な安定を保ちながら運動に向き合うという一点のみを共有し、それ以外の全ての行動原理が対立する非常に難易度の高い組み合わせです。直感的に高い負荷を求め単独で新しい刺激を追求する側にとって、集団の調和を重んじ計画的かつ穏やかに習慣を積み重ねる側の世界観は強い拘束感と退屈さを伴います。逆に秩序と安定を重んじる側にとって、予測不可能なタイミングで突発的に激しい行動を起こす側の存在は、コミュニティの調和を脅かす不確定要素として強い心理的ストレスを与えます。"}]$jon03cyiz$::jsonb,
      $jvpa5x8w7$[{"t":"p","text":"互いに運動スタイルが根本的に異なる事実を尊重し、同じ空間にいても完全に別の行動をとるという不可干渉のルールを徹底することが重要です。"},{"t":"p","text":"固定化されたコミュニティの活動を重んじる側が、例外的に日常の枠組みを外す特別な機会を設けた場合に限り、直感的に動く側の予測不可能な提案を受け入れる余白が生まれます。"},{"t":"p","text":"運動の目的や強度が全く異なることを前提とし、運動そのものではなく互いの独立した時間を確保するための環境づくりにおいて協力し合う視点が有効です。"}]$jvpa5x8w7$::jsonb,
      $jigq1t00e$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な振る舞いが、緻密な計画と反復によって心理的な安定を保っている側の秩序を破壊し、強い感情的な動揺を引き起こす原因となります。"},{"t":"p","text":"限界に挑むような高強度の運動を突発的に求める側のアプローチは、身体的な調和と穏やかなペースを計画的に維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"}]$jigq1t00e$::jsonb,
      $jj67n33g7$[]$jj67n33g7$::jsonb
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
      'SFMH', 'GPMH',
      $jbw36fjka$[{"t":"p","text":"精神的な安定を保ちながら高い負荷を求めるという運動の核心部分が一致しており、全力を出し切る心地よさを共有できる関係性です。しかしその力を発揮する前提条件が大きく異なり、一方はその日の衝動に従って単独で動くことを好むのに対し、もう一方はチームの目標達成のために綿密な計画を立てて動くことを重視します。お互いの能力の高さは認め合えるものの、運動の目的をどこに置くかのすり合わせが必要になります。"}]$jbw36fjka$::jsonb,
      $j1euohlzk$[{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、単発の高強度な運動であれば言葉を交わさずとも息を合わせることができ、目標や計画を脇に置いた即興のセッションが有効です。"},{"t":"p","text":"精神的な波が少なく互いの違いを客観的に受け入れられる性質を持っているため、一方は計画通りに動きもう一方はその日の気分で動くという別々のやり方を許容し合うことが望ましいです。"},{"t":"p","text":"集団での目標達成を目指す側があえて計画を持たない自由な日を設けることで、衝動的に動く側のペースに合わせる余白が生まれ、純粋な身体的限界への挑戦というテーマで噛み合います。"}]$j1euohlzk$::jsonb,
      $jcb0yzpvw$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"突発的に高いパフォーマンスを発揮して満足する側と、それを次の計画のデータとして蓄積したい側とで、運動後の振り返りに対する温度差が生じ、義務感によるストレスが発生します。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jcb0yzpvw$::jsonb,
      $jxifsmjlm$[]$jxifsmjlm$::jsonb
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
      'SFMH', 'GPVC',
      $jbpvpnpir$[{"t":"p","text":"全ての行動原理と価値観が対極に位置する、最も理解し合うことが困難な組み合わせです。単独で直感的に限界へ挑み精神的な安定を保つ側と、集団の調和を重んじ計画的に穏やかなペースを守りながら感情の起伏を伴う側とでは、運動に求めるものが何一つ交わりません。互いの存在がそれぞれの運動スタイルに対する根本的な脅威となり得るため、無理に行動を共にすることは深刻なストレスと疲労を招く結果となります。"}]$jbpvpnpir$::jsonb,
      $jy9hzi3sq$[{"t":"p","text":"互いの運動に対する哲学が完全に相反する事実を明確に認識し、運動の場を一切共有しないという選択が最も互いを尊重する結果となります。"},{"t":"p","text":"どうしても行動を共にする必要がある場合は、運動そのものを目的とせず、移動や観光といった別の枠組みの中で身体を動かす要素を取り入れるアプローチが求められます。"},{"t":"p","text":"互いのやり方に干渉せずそれぞれの独立した活動を遠くから見守る姿勢を保つことで、不要な摩擦を回避し精神的な平穏を維持できます。"}]$jy9hzi3sq$::jsonb,
      $j7oamsazl$[{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、緻密にスケジュールを管理して段階的な成長を狙う側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j7oamsazl$::jsonb,
      $j14chbt89$[]$j14chbt89$::jsonb
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
      'SFMH', 'GPVH',
      $j61go3d52$[{"t":"p","text":"限界まで体を追い込むという高い強度への要求のみを共有し、それ以外の全てのアプローチが対立する組み合わせです。単独で直感的に行動し精神的な安定を保つ側と、集団を率いて計画的に目標を達成し感情を爆発させる側とでは、全力を出すための前提条件が全く異なります。互いの能力の高さは認め合えるものの、運動の目的やプロセスにおけるすり合わせが極めて困難であり、同じ空間で活動する際には常に緊張感が伴います。"}]$j61go3d52$::jsonb,
      $jd8sxg3oq$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"計画的に限界を追求する側があえて事前のプログラムを放棄し、その場の直感のみで全力を出し切る非日常的なセッションを設けることで、直感的に動く側の爆発的なエネルギーと同調することができます。"},{"t":"p","text":"互いに単独での行動を基本としているため、同じ目標に向かって協力するのではなく、同じ空間でそれぞれが独立して限界に挑む並行した全力のスタイルをとることが望ましいです。"}]$jd8sxg3oq$::jsonb,
      $jxl54k3cp$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jxl54k3cp$::jsonb,
      $j98znxhtl$[]$j98znxhtl$::jsonb
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
      'SFMH', 'SFMC',
      $j2px4oh7b$[{"t":"p","text":"単独で直感的に行動し精神的な安定を保ちながら運動に向き合うという基盤を完全に共有する組み合わせです。思い立った瞬間に一人で動き出す身軽さや事前の計画に縛られない自由なスタイルが一致しているため、行動のペースやリズムにおいて深い共鳴を示します。唯一の違いは運動の強度に対する要求にあり、限界まで体を追い込みたい側と心地よい負荷で心身を整えたい側とで運動の最終的な目的が分かれます。"}]$j2px4oh7b$::jsonb,
      $jqcqerunr$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、同じ空間にいながらもそれぞれの独立した運動スタイルを尊重し合うことが良好な関係を保つ鍵となります。"},{"t":"p","text":"高い負荷を求める側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境を楽しむ活動を共有することで無理のない時間を過ごすことができます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた自由な時間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jqcqerunr$::jsonb,
      $j8sz8us2s$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、適度な負荷で心地よさを保ちたい側の許容量を超え、体力的な疲労や心理的な負担を与えてしまいます。"},{"t":"p","text":"限界に挑むような激しい運動を求める側のアプローチが、身体的な調和と穏やかなペースを維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、さらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$j8sz8us2s$::jsonb,
      $jpkus9zx6$[]$jpkus9zx6$::jsonb
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
      'SFMH', 'SFVC',
      $jzud393x8$[{"t":"p","text":"単独で直感的に行動するという点では一致しているものの、運動に対する根本的な要求と精神的なアプローチが大きく異なる組み合わせです。事前の計画に縛られない自由さは共有していますが、自己の限界に挑む単独での高負荷な体験を求める側と、感情の起伏を伴いながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$jzud393x8$::jsonb,
      $jp850g39m$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や感情の共有を楽しむ活動を共にすることで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jp850g39m$::jsonb,
      $j78hs2jco$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、感情の起伏を伴いながら穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j78hs2jco$::jsonb,
      $jppc417bc$[]$jppc417bc$::jsonb
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
      'SFMH', 'SFVH',
      $jtqvc6t7q$[{"t":"p","text":"単独で高い負荷に挑み事前の計画に縛られず直感的に行動するという運動の核心部分を完全に共有する、非常に親和性の高い組み合わせです。互いに妥協なく全力を出し切る姿勢を当然のものとして理解し合えるため、行動を共にする際の熱量は完全に一致します。唯一の違いはその高負荷を生み出す源泉が精神的な安定によるものか感情の爆発によるものかという内面的な差異にあり、運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$jtqvc6t7q$::jsonb,
      $j1jpfbaff$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j1jpfbaff$::jsonb,
      $jzd1nh44i$[{"t":"p","text":"感情の起伏により自身のパフォーマンスに対して強い自己嫌悪に陥っている側に対し、精神的に安定している側がその不調を深刻に受け止めず軽く流してしまうことで心理的なすれ違いが生じます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、感情の高ぶりからさらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$jzd1nh44i$::jsonb,
      $j6pyan6g4$[]$j6pyan6g4$::jsonb
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
      'SFMH', 'SPMC',
      $jm3qymjor$[{"t":"p","text":"単独行動を好み精神的な安定を保ちながら運動に向き合うという基盤は共有しているものの、運動に対する哲学が根本的に異なる組み合わせです。直感と新鮮な刺激を求めて高負荷な挑戦を好む側と、計画的かつ穏やかに習慣を積み重ねることに価値を見出す側とでは、行動の動機が交わることが少ないです。一緒に運動を組み立てることは困難ですが、自立心と精神的な成熟度が高いため、相手のやり方を否定することなく適度な距離感を保ちながら共存できる関係性です。"}]$jm3qymjor$::jsonb,
      $j1izo4irm$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、それぞれの独立した運動スタイルを尊重し合い行動の境界線を明確に引くことで良好な関係が保たれます。"},{"t":"p","text":"計画的に動く側があえて日常のルーティンから外れる特別な日を設けた際にのみ、直感的に動く側の突発的な提案に乗るという限定的な関わり方が機能します。"},{"t":"p","text":"精神的な安定という共通項を活かし、運動のアプローチが全く異なる事実を互いに興味深い個性として受け入れる姿勢を持つことが、このペアの居心地の良さを支える基盤となります。"}]$j1izo4irm$::jsonb,
      $ju44dcbuo$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な動きが、緻密な計画を立てて実行する側のペースを乱し、計画遂行の妨げとなる場面が頻発しストレスが生じやすくなります。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$ju44dcbuo$::jsonb,
      $jhb0sf4cs$[]$jhb0sf4cs$::jsonb
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
      'SFMH', 'SPMH',
      $jogomirtq$[{"t":"p","text":"単独で高い負荷に挑み精神的な安定を保ちながら限界を追求するという運動の核心部分を共有する、非常に親和性の高い組み合わせです。互いに妥協なく全力を出し切る姿勢を当然のものとして理解し合えるため、行動を共にする際の熱量は完全に一致します。しかしその高強度な運動をその瞬間の直感的な体験として消費するか、計画的な記録の積み上げとして蓄積するかというアプローチの違いが存在し、長期的な目標設定においては互いの哲学がすれ違う構造となっています。"}]$jogomirtq$::jsonb,
      $jakxdqh89$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"直感的に動きたい側の突発的なエネルギーを計画を好む側がその場限りの即席プログラムとして柔軟に組み立てることで、単一の衝動が明確な達成感へと昇華されます。"},{"t":"p","text":"精神的な安定という共通の基盤を活かし、計画や記録へのこだわりの差を押し付けず、それぞれのやり方で高みを目指す自立した関係性を保つことが推奨されます。"}]$jakxdqh89$::jsonb,
      $jgtae2x62$[{"t":"p","text":"運動の成果を詳細に記録し次回の計画へと論理的に繋げようとする側のアプローチが、その瞬間の体験のみを重視する側には過剰な分析や不要な制約として感じられ、モチベーションを急激に削ぐ原因となります。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、緻密にスケジュールを管理して段階的な成長を狙う側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、事前に設定した数値目標の達成にこだわる側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$jgtae2x62$::jsonb,
      $jkkbshsg5$[]$jkkbshsg5$::jsonb
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
      'SFMH', 'SPVC',
      $jssngxozw$[{"t":"p","text":"単独行動を好むという一点のみを共有し、それ以外の全ての行動原理が対立する非常に難易度の高い組み合わせです。直感的に高い負荷を求め常に新しい刺激を追求する側にとって、計画的かつ穏やかに同じルーティンを繰り返すことで安心を得る側の世界観は強い拘束感と退屈さを伴います。逆に秩序と安定を重んじる側にとって、予測不可能なタイミングで突発的に激しい行動を起こす側の存在は、築き上げたルーティンを脅かす不確定要素として強い心理的ストレスを与えます。"}]$jssngxozw$::jsonb,
      $jkbzcbieg$[{"t":"p","text":"互いに集団に依存せず単独で完結する運動スタイルを持っている事実を尊重し、同じ空間にいても完全に別の行動をとるという不可干渉のルールを徹底することが重要です。"},{"t":"p","text":"固定化されたルーティンを重んじる側が、例外的に日常の枠組みを外す特別な機会を設けた場合に限り、直感的に動く側の予測不可能な提案を受け入れる余白が生まれます。"},{"t":"p","text":"運動の目的や強度が全く異なることを前提とし、運動そのものではなく互いの独立した時間を確保するための環境づくりにおいて協力し合う視点が有効です。"}]$jkbzcbieg$::jsonb,
      $j8c0qffsa$[{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な振る舞いが、緻密な計画と反復によって心理的な安定を保っている側の秩序を破壊し、強い感情的な動揺を引き起こす原因となります。"},{"t":"p","text":"常に新しい刺激を求め同じことの繰り返しに耐えられない側がその価値観を無意識に表明することで、ルーティンを守り抜くことにアイデンティティを見出す側は自身の存在意義を否定されたように感じます。"},{"t":"p","text":"限界に挑むような高強度の運動を突発的に求める側のアプローチは、身体的な調和と穏やかなペースを計画的に維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"}]$j8c0qffsa$::jsonb,
      $j6j1pohjt$[]$j6j1pohjt$::jsonb
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
      'SFMH', 'SPVH',
      $j0g3sk4ag$[{"t":"p","text":"単独で限界を超えるような高強度な運動をストイックに追求するという点において極めて高い共鳴を示す組み合わせです。互いに妥協を許さず全力を出し切る姿勢が一致しているため、同じ空間で激しいトレーニングを行う際の熱量は完全に合致します。しかしその高負荷を生み出す源泉が直感的な衝動によるものか緻密に計算された計画に基づくものかという決定的な違いが存在し、精神的な安定と感情の起伏という内面的な差異も重なり行動に至るプロセスは大きく異なっています。"}]$j0g3sk4ag$::jsonb,
      $jwc9kzx4m$[{"t":"p","text":"互いに高い負荷を求めるストイックな性質が一致しているため、手加減や妥協を一切排除し、純粋に身体の限界に挑むような激しい運動環境を共有することが最も効果的です。"},{"t":"p","text":"計画的に限界を追求する側があえて事前のプログラムを放棄し、その場の直感のみで全力を出し切る非日常的なセッションを設けることで、直感的に動く側の爆発的なエネルギーと完全に同調することができます。"},{"t":"p","text":"互いに単独での行動を基本としているため、同じ目標に向かって協力するのではなく、同じ空間でそれぞれが独立して限界に挑む並行した全力のスタイルをとることが望ましいです。"}]$jwc9kzx4m$::jsonb,
      $j49vtqbcn$[{"t":"p","text":"運動の成果を詳細に記録し次回の緻密な計画へと繋げることで成長を実感する側のアプローチが、その瞬間の直感的な体験のみを重視する側には過剰な分析や窮屈な制約として感じられます。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、長期的な視点で段階的に負荷をコントロールしようとする側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"感情の起伏により自身のパフォーマンスに対して強い自己嫌悪に陥っている側に対し、精神的に安定している側がその不調を深刻に受け止めず軽く流してしまうことで心理的なすれ違いが生じます。"}]$j49vtqbcn$::jsonb,
      $jv2mxrvrc$[]$jv2mxrvrc$::jsonb
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
      'SFVC', 'GFMC',
      $jrygiz1ay$[{"t":"p","text":"事前の準備を必要とせず、穏やかな強度で動き出すという初動の感覚は一致しやすいです。しかし、一人で静かに内面と向き合うことで心が整う側と、複数人で場を共有し明るく楽しむことで活力を得る側という根本的な違いが存在します。運動を通じた感情のデトックスを求める側に対し、相手は常に一定の心理的安定を保ちながら動くため、トレーニングに対する重みや意味づけに温度差が生じやすいです。"}]$jrygiz1ay$::jsonb,
      $j80qoadpl$[{"t":"p","text":"事前の計画を立てずその日の気分で穏やかに動くという共通のペースを最大限に活かすことが推奨されます。目標や記録を設定せずただ外の空気を楽しむといった余白のある活動であれば両者が自然体で参加できます。"},{"t":"p","text":"複数人で盛り上がる環境ではなく少人数で静かな環境を選ぶことで内面を整えたい側の心理的負担を軽減できます。相手の明るいエネルギーを適度に取り入れつつも静寂を保てる場所を設定することが鍵となります。"},{"t":"p","text":"互いの心理的安定度の違いを理解し感情の揺れがある日は無理に合わせずそれぞれのペースで過ごす選択肢を持っておくことが重要です。参加の義務感をなくすことでより長期的な関係性が築けます。"}]$j80qoadpl$::jsonb,
      $jtvxhr29v$[{"t":"p","text":"複数人で賑やかに楽しむことを善とする側がよかれと思って参加者を増やしたり場を盛り上げようとした際、静かに内面を整えたい側は心理的な圧迫感や居場所のなさを感じやすいです。"},{"t":"p","text":"感情の揺れが大きくその日の状態によって参加を見送りたい側に対し、心理的に安定している側がその繊細な理由を深く理解できず単なる不参加として軽く受け流してしまうことで見えない溝が深まります。"},{"t":"p","text":"気軽な誘いであってもそれが頻繁に繰り返されると一人でいる時間を必要とする側にとっては次第に断ることへの罪悪感が蓄積し、結果として運動そのものに対する疲労感へと繋がっていきます。"}]$jtvxhr29v$::jsonb,
      $j0bvz5xj4$[]$j0bvz5xj4$::jsonb
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
      'SFVC', 'GFMH',
      $jj2l32cmc$[{"t":"p","text":"思い立った時にすぐ行動に移せるという点だけは一致します。しかし一人で穏やかに感情を整えたい側と、複数人で高強度の活動を通じて心理的安定を得る側とでは、運動に求める本質的な目的が対極にあります。相手の持つ高いエネルギーと集団志向は、内省的な静けさを求める側にとって圧倒的な負荷となりやすく、一緒にトレーニングを行うには大きな妥協が必要となります。"}]$jj2l32cmc$::jsonb,
      $j6sns63ca$[{"t":"p","text":"計画に縛られないという唯一の共通点を活かし、ふと思いついたタイミングで短時間の活動を共有することが有効です。長時間の拘束を避けることで心理的な負担を最小限に抑えることができます。"},{"t":"p","text":"活動の強度や規模を意図的に抑え、相手が本来持つ高いエネルギーを一時的に封印してもらう環境を作ることが求められます。静かな場所での散策など刺激の少ない活動を選ぶことが重要となります。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを前提とし、無理に同じ体験を共有しようとせず、それぞれの活動の合間に少しだけ時間を共有するといった付かず離れずの距離感を保つことが推奨されます。"}]$j6sns63ca$::jsonb,
      $j0vri634a$[{"t":"p","text":"高強度の活動と集団の熱気を求める側がそのペースを押し付けた際、穏やかに心を整えたい側は急激なエネルギーの消耗を感じ、トレーニングそのものからの逃避を引き起こす原因となります。"},{"t":"p","text":"感情の起伏が激しい日に静けさを求める側に対し、心理的に安定している側が持ち前の明るさと行動力で介入しようとすると、その善意が逆に深刻な心理的負担として作用してしまいます。"},{"t":"p","text":"相手の次々と新しい刺激を求めるペースに巻き込まれることで内面と向き合う時間が奪われ、結果として運動そのものに対する拒絶感や疲労感が蓄積していく構造が存在します。"}]$j0vri634a$::jsonb,
      $jri1okkbt$[]$jri1okkbt$::jsonb
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
      'SFVC', 'GFVC',
      $j2z1ctmxa$[{"t":"p","text":"事前の計画なしに感情の揺れと連動しながら穏やかに動くという基本的な行動様式は非常に似通っています。唯一の相違点は、一人で内面を整えることを好むか、複数人で温かな関係性を築くことを好むかという点にあります。運動を通じた繊細な共感が生まれやすい一方で、他者との関わりを求める相手の姿勢が、時に一人になりたい側の静かなトレーニング領域を侵食する可能性があります。"}]$j2z1ctmxa$::jsonb,
      $jurmm27dv$[{"t":"p","text":"感情の起伏に寄り添いながら無理のない穏やかな強度で動くという共通のペースを大切にすることが推奨されます。お互いのその日の状態を尊重し合える関係性がトレーニングの基盤となります。"},{"t":"p","text":"複数人での活動を好む相手に対し、少人数や一対一での静かな時間を提案することで一人で心を整えたい側の心理的安全性も確保できます。互いの心地よい人数のバランスを見つけることが鍵となります。"},{"t":"p","text":"感情が沈んでいる日には無理に励まし合うのではなく、ただ静かに同じ空間を共有するだけで十分であるという認識を持つことが重要です。言葉を交わさずとも成立する運動習慣を築くことが望ましいです。"}]$jurmm27dv$::jsonb,
      $jg63hm5gp$[{"t":"p","text":"複数人での温かな交流を求める側がよかれと思って継続的な参加や他者との関わりを促した際、一人で静かに過ごしたい側はそれを重い義務感として受け取ってしまう傾向があります。"},{"t":"p","text":"互いに感情の揺れが大きいため双方が同時に不調に陥った場合、相手を支える余裕がなくなり、トレーニングの継続そのものが困難になるリスクを常に抱えています。"},{"t":"p","text":"一人になりたいという欲求を表明した際、他者との繋がりを重視する側がそれを自身への拒絶と誤認しやすく、繊細な感情を持つ者同士ゆえの深い心理的ダメージに発展する可能性があります。"}]$jg63hm5gp$::jsonb,
      $jg6jmozo6$[]$jg6jmozo6$::jsonb
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
      'SFVC', 'GFVH',
      $j0h0eguaf$[{"t":"p","text":"計画に縛られず感情の赴くままに行動を起こすという点では深い共鳴が生じます。しかしその感情を穏やかに内面で処理し一人で整えたい側と、複数人を巻き込みながら高強度の活動で感情を爆発させたい側とでは、運動の出力方向が完全に異なります。感情の起伏という共通の基盤を持ちながらも、相手の激しいエネルギー放出は静けさを求める側にとって過剰な刺激となりやすいです。"}]$j0h0eguaf$::jsonb,
      $jv0edeo2c$[{"t":"p","text":"計画を立てずその日の感情に従って動くという共通の特性を活かし、お互いの気分が合致した瞬間にのみ活動を共にすることが推奨されます。事前の約束をしないことが心理的負担を下げることに繋がります。"},{"t":"p","text":"相手の激しい感情表現や高強度のトレーニングに無理に付き合うのではなく、活動の前後や相手が意図的にペースを落とした静かな瞬間にのみ時間を共有するという選択が有効です。"},{"t":"p","text":"感情の揺れ動きを理解し合える強みを活かし、運動そのものよりもその背景にある感情の変化について語り合う時間を設けることで、行動様式の違いを超えた共感が得られます。"}]$jv0edeo2c$::jsonb,
      $jhr8p4gj8$[{"t":"p","text":"高強度の活動を通じて感情を爆発させようとする相手のペースに巻き込まれると、穏やかに心を整えたい側は処理能力を超えた刺激を受け、強い疲労感とトレーニングへの拒絶を抱きます。"},{"t":"p","text":"複数人で熱狂的な場を作り出そうとする相手の行動は、一人で静かに内面と向き合いたい側にとって自身の安全な領域を脅かされるような強い圧迫感として作用します。"},{"t":"p","text":"互いに感情の起伏が激しいため、相手の熱量が高まっている日に自身が静けさを求めていると、その温度差が明確な対立構造を生み出し、運動を通じたコミュニケーションが断絶します。"}]$jhr8p4gj8$::jsonb,
      $jjslq2gyf$[]$jjslq2gyf$::jsonb
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
      'SFVC', 'GPMC',
      $jjq1d6jg8$[{"t":"p","text":"穏やかな強度で無理なく活動するという点では一致しています。しかし一人でその日の気分に合わせて感情と連動しながら動く側に対し、相手は複数人で計画的に安定したコミュニティを形成することを重視しています。穏やかなトレーニング環境という外枠は共有できるものの、そこに付随する継続の義務や集団への所属という要素が、内省的な側にとって大きな負担となります。"}]$jjq1d6jg8$::jsonb,
      $jvfrspu7q$[{"t":"p","text":"相手が提供する穏やかで安定した環境に対し、義務感を伴わない不定期な参加が許容される関係性を築くことが推奨されます。気が向いた時だけ合流できる余白がトレーニング継続の鍵となります。"},{"t":"p","text":"計画的な継続を好む相手の特性を尊重しつつ、自身の感情の揺れや気まぐれさを事前に伝え、参加できない日があっても問題視されない合意を形成しておくことが有効です。"},{"t":"p","text":"複数人での活動が基本となる相手のコミュニティにおいて、深く関わりすぎず適度な距離感を保ちながら静かに参加するポジションを確保することで、互いの領域を守ることができます。"}]$jvfrspu7q$::jsonb,
      $jygkyq393$[{"t":"p","text":"計画的かつ継続的な参加を重んじる側がよかれと思って定期的な活動へのコミットメントを求めた際、気分で動きたい側はそれを強い拘束として感じ、運動そのものへの意欲を喪失します。"},{"t":"p","text":"感情の揺れによって参加を見送る側に対し、心理的に安定している側がその繊細な理由を理解できず単なる計画の不履行として処理してしまうことで、心理的な距離が広がる傾向があります。"},{"t":"p","text":"集団の和を大切にする相手の空間において一人で静かに過ごしたいという欲求を出すことが難しく、結果としてその場にいること自体が精神的な消耗に繋がってしまう場面が生じます。"}]$jygkyq393$::jsonb,
      $j45wr6518$[]$j45wr6518$::jsonb
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
      'SFVC', 'GPMH',
      $jsm456ctp$[{"t":"p","text":"運動に対する動機、環境、強度、心理状態のすべてにおいて接点が存在しない組み合わせです。一人で気分に合わせて穏やかに感情を整えたい側にとって、複数人で計画的に高強度の目標達成を目指す相手の存在は、自身の求める安全で静かなトレーニング領域を根本から否定する要素の集合体です。運動という文脈において互いの価値観を共有することは極めて困難な関係性と言えます。"}]$jsm456ctp$::jsonb,
      $j5arnn3a6$[{"t":"p","text":"運動の目的や方法が完全に異なることを前提とし、トレーニングそのものを共有しようとするのではなく、運動以外の時間や全く別の活動を通じて関係性を築くことが強く推奨されます。"},{"t":"p","text":"相手が目標や計画から完全に離れ休息を目的とするような例外的な日にのみ、穏やかな散策などを共有することで互いの違いを脅威と感じずに過ごす時間を持つことができます。"},{"t":"p","text":"互いの行動様式が対極にあることを客観的に認識しその違いを否定するのではなく、自分にはない特性として興味を持って観察する視点を持つことが摩擦を避ける鍵となります。"}]$j5arnn3a6$::jsonb,
      $jwdhnmy5w$[{"t":"p","text":"目標達成や記録向上を目指して高強度の活動を求める相手の姿勢は、穏やかに心を整えたい側にとって常に評価や競争に晒されているような極度の緊張感とプレッシャーを与えます。"},{"t":"p","text":"集団での計画的な行動を重んじる相手に対し一人の気分で動きたい側が合わせようとすると、自身の感情やペースが完全に無視されることになり深刻な心理的疲労を引き起こします。"},{"t":"p","text":"感情の揺れに敏感な側が不調を訴えた際、心理的に安定し目標に向かう相手にはその繊細さが理解されず、怠惰や意欲の欠如と誤認されることで決定的な関係の断絶に繋がります。"}]$jwdhnmy5w$::jsonb,
      $jv58xzgda$[]$jv58xzgda$::jsonb
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
      'SFVC', 'GPVC',
      $jr4gl1o64$[{"t":"p","text":"感情の繊細さを持ちながら穏やかな強度で動くという点では深い理解が得られます。しかし一人でその日の気分に従って動きたい側に対し、相手は複数人での計画的な活動を通じて集団への責任を果たそうとします。感情の揺れを共有できる温かさはあるものの、相手の持つ計画性や集団への帰属意識が、自由と静けさを求める側のトレーニングにおいて重い足かせとなります。"}]$jr4gl1o64$::jsonb,
      $ju9ja71a5$[{"t":"p","text":"感情の繊細さと穏やかな活動を好むという共通点を最大限に活かし、互いの心の状態に寄り添いながら無理のないペースで静かな時間を共有することが推奨されます。"},{"t":"p","text":"相手が重視する計画性や集団での活動に対し、自身の参加を不定期かつ義務のないものとして事前に合意しておくことで、心理的な負担を感じずに相手の温かな空間に参加できます。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が計画通りに進まないことで動揺している際にはその感情を否定せずに受け止める姿勢を持つことが関係性の安定に寄与します。"}]$ju9ja71a5$::jsonb,
      $jfu1oxn9a$[{"t":"p","text":"集団への責任感から計画的な参加を求める相手の期待に対し、気分で動きたい側はそれに応えられない自分に罪悪感を抱き、結果としてトレーニングから距離を置きたくなります。"},{"t":"p","text":"気分による突然の不参加が発生した際、計画を重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"一人で静かに過ごすことで心を整えたい側にとって、複数人での活動を前提とする相手の環境はたとえ強度が穏やかであっても常に他者の感情に晒されるという点で精神的な消耗を伴います。"}]$jfu1oxn9a$::jsonb,
      $jvt4sj0a4$[]$jvt4sj0a4$::jsonb
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
      'SFVC', 'GPVH',
      $jfoeqt83y$[{"t":"p","text":"感情の起伏が大きく内面状態と行動が連動するという点では理解し合えます。しかし一人で気分に合わせて穏やかに整えたい側に対し、相手は複数人で計画的に高強度の活動を行い感情を熱く燃やそうとします。同じ感情の揺れを持ちながらも、そのエネルギーを静寂に向けるか熱狂に向けるかという出力方向が完全に逆であり、相手の熱量は静けさを求める側にとって大きな脅威となります。"}]$jfoeqt83y$::jsonb,
      $jqd192n6o$[{"t":"p","text":"感情が行動の起点になるという唯一の共通点を活かし、互いの心の状態について深く語り合う時間を設けることで、行動様式の違いを超えた精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手が持つ高い熱量や計画的な集団行動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手の熱狂的な活動を遠くから見守りつつ自身は一人の静かなペースを保つという明確な境界線を引くことが重要となります。"}]$jqd192n6o$::jsonb,
      $j17sk6pkb$[{"t":"p","text":"集団で計画的に高強度の活動を推進しようとする相手の熱量は、一人で穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い圧迫感として作用します。"},{"t":"p","text":"感情の揺れを共有しているため、相手が目標に向かって熱く感情を昂らせている時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と集団への責任を重んじる相手が参加を強要した際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$j17sk6pkb$::jsonb,
      $j0hjx72eq$[]$j0hjx72eq$::jsonb
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
      'SFVC', 'SFMC',
      $j0jqv2ipp$[{"t":"p","text":"事前の計画なしに一人で穏やかに動くという外形的な行動様式は完全に一致しています。唯一の違いは感情の揺れと連動して動くか、常に一定の心理的安定を保ちながら気まぐれに動くかという点にあります。トレーニングのペースや好む環境が非常に似ているため一緒に過ごす上での摩擦は極めて少ないですが、内面的な感情の重みにおいて微細な温度差が存在します。"}]$j0jqv2ipp$::jsonb,
      $jx3r0ssw6$[{"t":"p","text":"計画を立てず一人ひとりのペースを尊重しながら穏やかに動くという共通の基盤を活かし、互いに干渉しすぎない自然体での活動を共有することが推奨されます。"},{"t":"p","text":"感情の揺れが大きい日は心理的に安定している相手の淡々としたペースに身を委ねることで、自身の感情の波を穏やかに静める効果的なトレーニング時間として活用することができます。"},{"t":"p","text":"相手の心理的な安定感を冷たさと捉えるのではなく感情に振り回されない頼もしい特性として肯定的に受け止めることで、より安心感のある運動習慣を築くことが可能となります。"}]$jx3r0ssw6$::jsonb,
      $jodegdkzt$[{"t":"p","text":"感情の揺れや不調を訴えた際、心理的に安定している相手がそれを深刻に受け止めず淡々と処理してしまうことで、繊細な側はトレーニングを通じた共感が得られないという孤独感を感じます。"},{"t":"p","text":"気分によって予定を変更した際、相手は気に留めないものの、繊細な側は勝手に罪悪感を抱き込みその感情の処理において一人で疲弊してしまうという非対称な構造が存在します。"},{"t":"p","text":"行動様式が似ているからこそ内面的な感情の重みの違いが浮き彫りになりやすく、相手の軽やかさが時に自身の繊細な感情を否定されているように錯覚させる危険性を孕んでいます。"}]$jodegdkzt$::jsonb,
      $jbzs2ykmz$[]$jbzs2ykmz$::jsonb
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
      'SFVC', 'SFMH',
      $jvbhi3x06$[{"t":"p","text":"計画に縛られず単独で思い立った時に行動するという初動のスタイルは一致します。しかし穏やかに感情を整えたい側と、高強度の活動を通じて心理的な安定や刺激を得たい側とでは、動き出した後のトレーニング展開が大きく異なります。同じように気まぐれにスタートしても相手の求めるスピードや強度にはついていくことができず、結果として別々のペースで動くことになります。"}]$jvbhi3x06$::jsonb,
      $jj5ahk5da$[{"t":"p","text":"思い立った時にすぐ行動できるという共通の特性を活かし、活動のスタート地点や目的地だけを共有し、道中はそれぞれのペースで動くといった柔軟なトレーニング形式が推奨されます。"},{"t":"p","text":"相手が高強度の活動を求めることを前提とし、無理にペースを合わせようとせず自身は穏やかな活動に専念するという明確な役割分担を意識することが重要です。"},{"t":"p","text":"相手が意図的に強度を落とし休息や探索を目的とするような日にのみ行動を共にすることで、互いのペースの違いによる摩擦を避けつつ有意義な時間を共有することが可能となります。"}]$jj5ahk5da$::jsonb,
      $jvfvde8tp$[{"t":"p","text":"気まぐれに行動を開始した後、相手が急激に強度やスピードを上げた際、穏やかに心を整えたい側は取り残される感覚に陥り、強い疲労感と不満を抱くことになります。"},{"t":"p","text":"感情の揺れによって活動を控えたい日であっても、心理的に安定し刺激を求める相手の突発的な行動に巻き込まれると、自身の内面と向き合うトレーニング時間が奪われ精神的に消耗します。"},{"t":"p","text":"互いに単独での行動を好むため、ペースや目的の違いが明確になった瞬間に歩み寄る努力が放棄されやすく、一緒に運動する意味を見失いやすいという構造的な脆さを抱えています。"}]$jvfvde8tp$::jsonb,
      $jqiuyj2ep$[]$jqiuyj2ep$::jsonb
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
      'SFVC', 'SFVH',
      $jlrf0qkuj$[{"t":"p","text":"計画なしに一人で感情の揺れと連動しながら動くという内面的なメカニズムは非常に似通っています。唯一にして最大の違いはその感情を穏やかに整える方向に向かうか、高強度の活動で爆発させる方向に向かうかという点にあります。感情の起伏を共有できるため深い共感関係を築ける一方で、相手の激しいエネルギー放出は静けさを求める側にとって許容範囲を超える刺激となりえます。"}]$jlrf0qkuj$::jsonb,
      $j2joxgxjx$[{"t":"p","text":"感情の揺れに従って単独で動くという共通の特性を活かし、お互いの気分が合致したタイミングで互いに干渉しない距離感を保ちながら活動を共有することが推奨されます。"},{"t":"p","text":"相手が感情を高強度で爆発させたい日には無理に同行せず、互いの感情が落ち着き静けさを求めているタイミングを見計らって穏やかなトレーニング時間を共にすることが有効です。"},{"t":"p","text":"感情の起伏が激しいという共通点を理解し合い、不調な日には互いに距離を置き無理に励ましたり活動を強要したりしないという暗黙のルールを設けることが関係を安定させます。"}]$j2joxgxjx$::jsonb,
      $jhebahnhv$[{"t":"p","text":"感情が高ぶった相手が高強度の活動に突入した際、穏やかに心を整えたい側はその激しいエネルギーに圧倒され自身のペースを乱されることに対する強い拒絶感を抱きます。"},{"t":"p","text":"互いに感情の揺れが大きいため双方が同時にネガティブな感情に支配された場合、負の感情が共鳴し合いトレーニングの継続そのものが極めて不安定な状態に陥る危険性を孕んでいます。"},{"t":"p","text":"感情に従って行動するがゆえに相手の激しい感情表現を自身への攻撃や圧力と誤認しやすく、繊細な者同士の衝突は修復に時間がかかる深い心理的ダメージを生む可能性があります。"}]$jhebahnhv$::jsonb,
      $j3702lmwi$[]$j3702lmwi$::jsonb
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
      'SFVC', 'SPMC',
      $jbk0xystf$[{"t":"p","text":"単独で穏やかな活動を好むという外形的なスタイルは一致しています。しかしその日の気分と感情の揺れに従って動く側に対し、相手は計画表かつ継続的な習慣を通じて心理的安定を維持しようとします。静かで穏やかなトレーニング環境を共有できる安心感はあるものの、相手の持つ規則正しさや継続への意志が、気まぐれで繊細な側にとって無言のプレッシャーとして機能します。"}]$jbk0xystf$::jsonb,
      $j2pt4fsmg$[{"t":"p","text":"一人で穏やかに動くという共通の好みを活かし、相手の計画的な活動に対して自身は気が向いた時だけ参加するという不定期な関わり方を許容してもらうことが推奨されます。"},{"t":"p","text":"相手の規則正しい習慣を尊重しつつ自身の感情の揺れや気まぐれさを事前に伝え、計画通りに行動できない日があっても互いに気にしないという合意を形成しておくことが有効です。"},{"t":"p","text":"心理的に安定している相手の淡々としたペースを自身の感情の揺れを静めるための安全な拠り所として活用することで、互いの違いを補完し合う関係性を築くことが可能となります。"}]$j2pt4fsmg$::jsonb,
      $j76a7tvyw$[{"t":"p","text":"計画的な習慣を重んじる相手がよかれと思って定期的な活動への参加を促した際、気分で動きたい側はそれを強い拘束や義務感として受け取り心理的な負担を増大させます。"},{"t":"p","text":"感情の揺れによって予定をキャンセルした際、心理的に安定している相手は気に留めないものの、繊細な側は計画を乱したことへの罪悪感を抱き込み一人で疲弊してしまいます。"},{"t":"p","text":"規則正しく淡々と行動する相手の姿が感情に振り回されやすい側にとって、時に自身の不安定さを際立たせる鏡のように機能し、劣等感や自己否定を引き起こす原因となります。"}]$j76a7tvyw$::jsonb,
      $j50ham6wb$[]$j50ham6wb$::jsonb
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
      'SFVC', 'SPMH',
      $j5byeffe8$[{"t":"p","text":"他者に干渉されず単独で行動することを好むという点だけは一致します。しかし気分に合わせて穏やかに感情を整えたい側と、計画的に高強度の目標達成を目指し心理的安定を得る側とでは、運動の目的やアプローチが対極にあります。互いに単独行動を好むため直接的な衝突は避けやすいものの、相手のストイックな姿勢は静けさを求める側にとって近寄りがたい異質なものとして映ります。"}]$j5byeffe8$::jsonb,
      $j3nfo5b5j$[{"t":"p","text":"単独で行動するという唯一の共通点を尊重し、無理に活動を共有しようとせず同じ空間にいながらも完全に別の活動を行うといった独立した関係性を保つことが推奨されます。"},{"t":"p","text":"相手が目標や計画から離れ意図的に強度を落として休息をとるような例外的な日にのみ、穏やかな散策などを共有することで互いの領域を侵さずに時間を過ごすことができます。"},{"t":"p","text":"互いの運動に対する価値観が根本的に異なることを前提とし、相手のストイックな姿勢を自身のペースを脅かすものではなく単なる異なる生き方として客観的に観察する視点を持つことが有効です。"}]$j3nfo5b5j$::jsonb,
      $jzwse23o0$[{"t":"p","text":"計画的かつ高強度の目標達成を追求する相手の姿勢が、穏やかに心を整えたい側にとって常に評価や競争の基準を突きつけられているような無言のプレッシャーとして作用します。"},{"t":"p","text":"感情の揺れによって活動を休止したい日であっても、心理的に安定し計画を遂行する相手の存在が自身の感情的な不安定さを否定されているような錯覚を引き起こし心理的負担となります。"},{"t":"p","text":"互いに他者への干渉を好まないため、一度ペースや目的の違いによる違和感が生じるとそれをすり合わせる努力が行われず、心理的な距離が決定的に離れてしまう傾向があります。"}]$jzwse23o0$::jsonb,
      $j3e433g3p$[]$j3e433g3p$::jsonb
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
      'SFVC', 'SPVC',
      $jqx75ko72$[{"t":"p","text":"単独で感情の繊細さと連動しながら穏やかに動くという基本的な性質は非常に似通っています。唯一の違いはその日の気分で動くか、計画的なルーティンを守るかという点にあります。感情の揺れを共有しながら静かな時間を過ごせるため深い安心感が得られる一方で、相手のルーティンへの固執が気まぐれに動きたい側の自由を制限し、トレーニングにおける予期せぬ摩擦を生む可能性があります。"}]$jqx75ko72$::jsonb,
      $jxbzhb77j$[{"t":"p","text":"一人で穏やかに感情と向き合うという共通の基盤を最大限に活かし、互いの心の状態に寄り添いながら静かで刺激の少ない環境での活動を共有することが推奨されます。"},{"t":"p","text":"相手の計画的なルーティンを尊重しつつ自身の参加は不定期であることを事前に合意し、相手の規則正しい生活の中に時折交わるような柔軟な関わり方を構築することが有効です。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手がルーティンを崩されて動揺している際にはその感情を否定せずに受け止め、静かに寄り添う姿勢を持つことがトレーニング関係の安定に寄与します。"}]$jxbzhb77j$::jsonb,
      $j1gb9javf$[{"t":"p","text":"計画的なルーティンを重んじる相手がその規則正しい活動への同調を求めた際、気分で動きたい側は自由を奪われるような強い拘束感を感じ、心理的な逃避を引き起こします。"},{"t":"p","text":"気分によって予定をキャンセルした際、ルーティンを重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"感情の揺れを共有しているがゆえに、相手の計画通りに進まないことへの苛立ちや不安がダイレクトに伝わりやすく、穏やかに心を整えたい側にとって過度な精神的消耗をもたらします。"}]$j1gb9javf$::jsonb,
      $jhy53ei73$[]$jhy53ei73$::jsonb
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
      'SFVC', 'SPVH',
      $jqt23t8p8$[{"t":"p","text":"単独で行動し感情の起伏と深く連動するという内面的なメカニズムは共有しています。しかしその感情を穏やかに整えるために気分で動く側に対し、相手は計画的かつ高強度のトレーニングを通じて自己を超越しようとします。感情の揺れという共通項を持ちながらも、相手のストイックな自己研鑽の姿勢は、静けさと安心を求める側にとって常に自身を否定されているような強い圧迫感を与えます。"}]$jqt23t8p8$::jsonb,
      $jfnzqxvc1$[{"t":"p","text":"単独で行動し感情と連動するという共通の特性を活かし、互いの内面的な葛藤や感情の揺れについて語り合うことで、行動様式の違いを超えた深い精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手の計画的で高強度の活動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手のストイックな姿勢を遠くから見守りつつ自身は一人の穏やかなペースを保つという明確な境界線を引くことが重要となります。"}]$jfnzqxvc1$::jsonb,
      $jb7lwhmmt$[{"t":"p","text":"計画的に高強度の目標達成を追求し自己を超越しようとする相手の熱量は、穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い恐怖感として作用します。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が目標に向かってストイックに自身を追い込んでいる時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と自己研鑽を重んじる相手がその姿勢を求めた際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$jb7lwhmmt$::jsonb,
      $jk6pi6quq$[]$jk6pi6quq$::jsonb
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
      'SFVH', 'GFMC',
      $jbvtfo3ie$[{"t":"p","text":"事前の計画を持たずにその日の感覚で動く点ではプレースタイルが一致しています。しかし基準型が一人で内面的な感情の爆発を高める方向へ向かうのに対し、相手は複数人で和やかに場を整える方向へ向かうため、行動の目的が根本的に異なります。基準型にとって集団での緩やかな運動は集中を削ぐ要因となりやすく、相手が提供しようとする和やかな場が逆にモチベーションを低下させる原因となります。"}]$jbvtfo3ie$::jsonb,
      $jrmhkw9sw$[{"t":"p","text":"事前の計画を立てず、その日の気分で突発的に行動を開始するという共通の強みを活かすことが重要です。気分の一致により、行動を起こすまでの心理的ハードルを互いに下げることができます。"},{"t":"p","text":"相手が参加人数を最小限に絞り、一時的に運動の強度を上げるなど、基準型の集中を妨げない環境を整えることが効果的です。相手が特別な日として高強度な活動を提案した際、基準型の感情のスイッチが入りやすくなります。"},{"t":"p","text":"互いに記録や計画に縛られないため、当日の急な予定変更や中止に対しても寛容でいられます。この自由度の高さが、結果的に長期的な関係の維持に寄与します。"}]$jrmhkw9sw$::jsonb,
      $jp7uk20ve$[{"t":"p","text":"相手が複数人を巻き込んで緩やかな雰囲気を作ろうとした際、基準型の集中力が途切れ、運動への意欲が急速に失われます。集団での和やかな交流という相手の得意とする環境が、基準型にとっては最も避けたい状況となります。"},{"t":"p","text":"基準型が感情のスイッチを入れて極限まで自分を高めようとする姿に対し、相手は過剰な追い込みであると捉え、引いてしまう傾向があります。運動に対する熱量と強度の差が、互いの理解を妨げる壁となります。"},{"t":"p","text":"基準型のなりたいに基づく感情の激しい起伏や爆発的なエネルギーを、ありたいに基づく相手の安定志向が受け止めきれない場面が生じます。基準型の真剣な取り組みが、相手には単なる大げさな振る舞いとして映ってしまう危険性があります。"}]$jp7uk20ve$::jsonb,
      $j6cy0bpo1$[]$j6cy0bpo1$::jsonb
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
      'SFVH', 'GFMH',
      $jkbdxasmi$[{"t":"p","text":"事前の計画なしに高強度の活動へ突入するプレースタイルは強く共鳴します。しかし基準型が一人で内面的な感情の爆発を動力とするのに対し、相手は複数人を巻き込んで外部とのエネルギー循環を動力とします。基準型が極限まで集中を高めようとする場面で、相手の集団志向がその集中を妨げるノイズとして機能してしまう構造的なすれ違いが存在します。"}]$jkbdxasmi$::jsonb,
      $j961iffyc$[{"t":"p","text":"計画を持たずにその日の衝動で高強度な活動に向かうという、両者の最も強い欲求をそのまま実行に移すことが最良の選択となります。互いの爆発的なエネルギーが同じ方向に向かうため、高い満足感を得られます。"},{"t":"p","text":"相手の持つ周囲を巻き込む強い熱量が、基準型の内面的な感情のスイッチを入れる外部刺激として機能する場面があります。相手の提案に乗る形で、基準型が自身の限界を超えるきっかけを掴むことができます。"},{"t":"p","text":"ありたいとなりたいの違いはあるものの、極限まで自分を追い込んだという身体的な達成感を共有することで繋がりを深められます。高強度な活動を終えた後の疲労感と充実感が、両者を結びつける共通言語となります。"}]$j961iffyc$::jsonb,
      $j03pfky3o$[{"t":"p","text":"相手が活動の場に多くの人を呼び込もうとした瞬間、基準型は自身の領域が侵されたと感じて意欲を失います。集団の規模が拡大するほど、基準型の内面に向かう集中力は削がれていきます。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら追い込む姿が、ありたいに基づく相手には過剰な自己抑圧に見えてしまいます。同じ高強度であっても、その背後にある心理的メカニズムの違いが違和感を生みます。"},{"t":"p","text":"基準型が全力を出し切って完全に活動を停止した状態になっても、相手はまだ周囲とエネルギーを循環させようと動き続けます。この活動終了後の温度差が、互いのペースに対する不満へと繋がります。"}]$j03pfky3o$::jsonb,
      $jk1ymvh2h$[]$jk1ymvh2h$::jsonb
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
      'SFVH', 'GFVC',
      $jym17uufj$[{"t":"p","text":"事前の計画に縛られず、その時の感情や内面の状態に強く連動して動くという行動原理は一致しています。しかし基準型が一人で極限まで自分を高めるために感情を爆発させるのに対し、相手は複数人の感情に寄り添いながら場を整えるために感情を働かせます。同じ感情連動型でありながら、そのエネルギーが内向きの爆発に向かうか外向きの調和に向かうかで、完全にベクトルが分かれます。"}]$jym17uufj$::jsonb,
      $j6f9sbmqn$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調の波が存在することを互いに深く理解し合えます。調子が上がらない日は無理に動かなくてよいという前提が、両者の間に安心感をもたらします。"},{"t":"p","text":"事前の計画を立てず、その日の気分や感情の赴くままに行動を開始するというスタイルが一致しています。ふとした瞬間に互いの波長が合い、自然な形で活動を共にできる日が存在します。"},{"t":"p","text":"基準型が全力を出し切って完全に休息を必要としている日に、相手の穏やかで整えるようなペースが心地よく感じられます。相手の温かな存在感が、基準型の回復を促すサポートとして機能します。"}]$j6f9sbmqn$::jsonb,
      $j0b1u4g7c$[{"t":"p","text":"基準型の感情のスイッチが入リ、極限まで自分を高めようと加速する際、相手の穏やかなペースを障害と感じてしまいます。基準型の求める強度と速度が、相手にとっての安全な環境を破壊する結果となります。"},{"t":"p","text":"基準型がさらに強い刺激を求めて追い込みをかけると、相手は心身ともにその要求に応えられず、強い疎外感を抱きます。強度の不一致が、そのまま心理的な距離へと直結してしまいます。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に底を打った場合、互いを引き上げる動力が完全に失われます。不調の連鎖が起きやすく、関係性が停滞するリスクを常に抱えています。"}]$j0b1u4g7c$::jsonb,
      $jiw6q6is8$[]$jiw6q6is8$::jsonb
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
      'SFVH', 'GFVH',
      $jnm7ttbwd$[{"t":"p","text":"事前の計画なしに感情の爆発を伴って高強度の活動へ向かうという核心部分は完全に一致しています。唯一の違いは基準型が一人で内面に向かって全力を出し切るのに対し、相手は複数人を巻き込んで熱狂を外部へ広げようとする点にあります。互いの熱量と行動原理は深く理解できるものの、その熱を向ける先が個人の内側か集団全体かで決定的な違いが生じます。"}]$jnm7ttbwd$::jsonb,
      $j4pdp6szn$[{"t":"p","text":"計画なし、感情の爆発、高強度という三つの要素が完全に合致しているため、その日の衝動をそのまま共有できます。互いの感情のスイッチが入った瞬間に、最高のパフォーマンスを共に引き出すことができます。"},{"t":"p","text":"言葉を交わさずとも、極限まで自分を追い込んだ時の内面的な熱量を正確に理解し合えます。この深い共感は、他のタイプとは得られない強固な結びつきを生み出します。"},{"t":"p","text":"相手が参加人数を基準型のみに絞り込んだ場合、互いの爆発的なエネルギーが相乗効果を生みます。一対一という限定された環境下においてのみ、両者のポテンシャルが最大限に発揮されます。"}]$j4pdp6szn$::jsonb,
      $jqenj8u3v$[{"t":"p","text":"相手がその熱狂をより多くの人と共有しようと集団を形成し始めた瞬間、基準型は内面への集中を妨げられたと感じて離脱を選択します。集団の拡大が、基準型の意欲を直接的に削ぐ原因となります。"},{"t":"p","text":"両者ともになりたいの性質を持つため感情の波が激しく、互いの不調が重なった際には活動が完全に停止します。感情の起伏が激しい者同士であるため、関係性の安定性に欠ける面があります。"},{"t":"p","text":"基準型が全力を出し切って活動を終えようとするタイミングで、相手はまだ周囲を巻き込んで熱狂を続けようとします。この活動の終息地点におけるエネルギーの不一致が、互いのペースを乱す要因となります。"}]$jqenj8u3v$::jsonb,
      $j79y4mn1r$[]$j79y4mn1r$::jsonb
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
      'SFVH', 'GPMC',
      $jw53afs9e$[{"t":"p","text":"行動原理から目的まで一切の共通点を持たない組み合わせです。基準型が一人で気分に任せて感情を爆発させ極限まで自分を高めることを求めるのに対し、相手は複数人で計画的に感情を安定させ場を整えることを目的とします。相手が理想とする安定的で継続的な集団活動は基準型にとって最も意欲を削がれる環境であり、互いの存在そのものが自身のプレースタイルを否定する構造となっています。"}]$jw53afs9e$::jsonb,
      $jn3oakmi9$[{"t":"p","text":"運動という文脈から完全に離れ、互いの価値観の違いを客観的に観察し合うことで、新たな視点を得ることができます。全く異なる行動原理を持つからこそ、人間としての興味深い対話が成立します。"},{"t":"p","text":"相手が設定する集団活動に対して、基準型が一切の義務感を負わず完全に気が向いた時だけ参加するという自由が担保された場合にのみ接点が生まれます。この極端な非継続性を受け入れることが唯一の条件となります。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている稀な日に限り、相手の穏やかで整えるようなペースに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jn3oakmi9$::jsonb,
      $jjk9vm7td$[{"t":"p","text":"相手がコミュニティの維持のために継続的な参加や計画的な行動を求めた瞬間、基準型は強い束縛を感じて完全に心を閉ざします。相手の善意に基づく提案が、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手が築き上げてきた集団の穏やかな調和が破壊されます。基準型の個人的な熱量が、相手のコミュニティ運営において異物として機能してしまいます。"},{"t":"p","text":"運動に対する根本的な目的が、瞬間の爆発と長期的な安定という相容れない方向を向いています。この目的の決定的な違いにより、共に活動する上での妥協点を見出すことが極めて困難です。"}]$jjk9vm7td$::jsonb,
      $j7oplhvov$[]$j7oplhvov$::jsonb
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
      'SFVH', 'GPMH',
      $juwv1zdv8$[{"t":"p","text":"高い強度で自己を追い込むという外形的な行動は一致しています。しかし基準型が一人で気分に任せて感情の爆発を動力とするのに対し、相手は複数人で計画的に感情を安定させながら集団の目標達成へ向かいます。同じ高強度であっても、基準型にとっては内面的な衝動の解放であり、相手にとっては計画的な成果の積み上げであるため、その過程で求める環境が全く異なります。"}]$juwv1zdv8$::jsonb,
      $jwin5kj9c$[{"t":"p","text":"高強度で自分を追い込むという共通の価値観を基盤として、互いの限界に挑戦する姿勢を尊重し合えます。全力を出し切った後の身体的な達成感は、両者を結びつける確かな共通言語となります。"},{"t":"p","text":"相手が一時的に計画や集団の枠組みを取り払い、その日の衝動だけで高強度な活動に付き合うことができれば、基準型の感情のスイッチが入リやすくなります。枠組みを外した純粋な追い込みの場が接点となります。"},{"t":"p","text":"互いに高いパフォーマンスを発揮すること自体に価値を置いているため、運動中の真剣な態度に共感できます。目的は異なれど、その瞬間に全力を尽くすというプロセスにおいて深く理解し合えます。"}]$jwin5kj9c$::jsonb,
      $jtxkk3ij6$[{"t":"p","text":"相手が集団の目標達成や事前の計画に沿った行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の枠組みが、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら活動する姿に対し、ありたいに基づく相手は感情的で非効率的であると評価してしまいます。感情の起伏を動力とするか安定を動力とするかの違いが相互不理解を生みます。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた計画が崩壊します。基準型の衝動的なプレースタイルが、相手の計画性を根本から脅かす結果となります。"}]$jtxkk3ij6$::jsonb,
      $jvkt7oaig$[]$jvkt7oaig$::jsonb
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
      'SFVH', 'GPVC',
      $jc0nchnpu$[{"t":"p","text":"内面的な感情や状態に強く連動して行動するという性質は共有しています。しかし基準型が一人で気分に任せて極限まで自分を高めるために感情を使うのに対し、相手は複数人で計画的に場を整えるために感情を使います。同じ感情連動型でありながら、基準型は自己の爆発へ、相手は他者への配慮と責任感へと向かうため、互いの感情の使い方が衝突する関係にあります。"}]$jc0nchnpu$::jsonb,
      $j9c6ueu1m$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調が存在することを互いに深く理解し合えます。理屈ではなく感情の状態によって行動が左右されるという事実を共有できます。"},{"t":"p","text":"相手が集団への責任や事前の計画を完全に手放し、基準型の自由なペースを許容した特別な状況下においてのみ、共に行動する余地が生まれます。義務感を排除することが絶対条件となります。"},{"t":"p","text":"互いに感情を動力としているため、その日の波長が偶然一致した際には、深い精神的な繋がりを感じながら活動できます。感情のベクトルは異なっても、感情そのものの重要性は理解し合えます。"}]$j9c6ueu1m$::jsonb,
      $jns975thh$[{"t":"p","text":"相手が周囲への配慮や計画的な行動を基準型に求めた瞬間、基準型は自身の内面的な爆発を妨げられたと感じて強く反発します。相手の利他的な行動が、基準型にとっては不当な束縛として機能します。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手の穏やかで整えるようなペースが基準型の集中を妨げる障害となります。基準型の求める限界突破と相手の求める安全確保が真っ向から対立します。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に低下した場合、互いに相手をサポートする余力がなくなり、関係性が完全に停滞します。感情の起伏に依存する危うさを常に抱えています。"}]$jns975thh$::jsonb,
      $jlb487qge$[]$jlb487qge$::jsonb
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
      'SFVH', 'GPVH',
      $jr49l9eoq$[{"t":"p","text":"感情の爆発を動力として高強度な活動へ向かうという核心部分は強く共鳴します。しかし基準型が一人で気分に任せて行動するのに対し、相手は複数人で計画的に目標へ向かって行動します。互いの持つ熱量や限界に挑む姿勢は深く理解できるものの、基準型が個人的な衝動を重視するのに対し、相手は集団の計画的な成長を重視するため、活動の枠組みにおいて決定的なすれ違いが生じます。"}]$jr49l9eoq$::jsonb,
      $jctdlgl0j$[{"t":"p","text":"感情の爆発と高強度という二つの要素が合致しているため、互いの熱量をぶつけ合いながら限界を超えることができます。感情が高ぶった際の爆発的なパフォーマンスを共有できます。"},{"t":"p","text":"基準型の感情のスイッチが入ったタイミングで、相手の持つ強い熱量がさらなる推進力として機能します。互いのエネルギーが共鳴し、一人では到達できない領域まで自身を引き上げることができます。"},{"t":"p","text":"全力を出し切ることの価値を互いに深く理解しているため、運動に対する真剣な姿勢を尊重し合えます。妥協を許さないという点において、強固な信頼関係を築くことができます。"}]$jctdlgl0j$::jsonb,
      $j1c8am3z5$[{"t":"p","text":"相手が集団の目標達成や事前の計画に沿った行動を基準型に求めた瞬間、基準型は自身の自由な衝動を奪われたと感じて意欲を失います。相手のリーダーシップが、基準型にとっては窮屈な管理として機能します。"},{"t":"p","text":"基準型がその日の気分によって突発的に行動を変更した際、相手が綿密に組み立てた集団の計画が崩壊します。基準型の衝動性が、相手の計画性と集団運営を根本から脅かします。"},{"t":"p","text":"両者ともになりたいの性質を持ち、かつ高強度を求めるため、感情が高ぶった際には互いに限界を超えて過剰に追い込んでしまい、心身ともに深刻な消耗を招く危険性があります。"}]$j1c8am3z5$::jsonb,
      $jkg4gkdqy$[]$jkg4gkdqy$::jsonb
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
      'SFVH', 'SFMC',
      $jj5tcqhjh$[{"t":"p","text":"事前の計画を立てず、集団に属さずに個人の感覚で行動を開始するというプレースタイルの起点は完全に一致しています。しかし基準型がなりたいに基づいて感情を爆発させ極限まで高める方向へ向かうのに対し、相手はありたいに基づいて感情を安定させ穏やかに整える方向へ向かいます。動き出すまでのアプローチは同じでも、動き出した後の出力と目的が正反対であるため、並走することは難しいです。"}]$jj5tcqhjh$::jsonb,
      $j70vj2fpz$[{"t":"p","text":"事前の計画や他者との調整を必要とせず、互いの思いつきで自由に行動を開始できるという気楽さを共有できます。行動を起こすまでの心理的ハードルが極めて低い関係性を築けます。"},{"t":"p","text":"互いに個人の領域を尊重し干渉し合わないという暗黙の了解が存在するため、同じ空間にいながら別々のペースで活動することにストレスを感じません。自律性を保ったまま共存できます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている日に限り、相手の穏やかで整えるようなペースと同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が重なります。"}]$j70vj2fpz$::jsonb,
      $jt43lbvnj$[{"t":"p","text":"基準型の感情のスイッチが入った際、突発的に高強度な活動に突入した瞬間、相手はその激しいペースについていくことを放棄し、心理的な距離を置きます。強度の決定的な違いが、即座に活動の分離を引き起こします。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させる姿が、ありたいに基づいて心の平穏を保とうとする相手の領域を乱すノイズとなります。基準型の熱量が、相手にとっては単なる不快な刺激として機能してしまいます。"},{"t":"p","text":"基準型がさらに強い刺激を求めてエスカレートしていく過程で、相手は自身のペースを守るために完全に撤退を選択します。基準型の追い込みが、結果として相手を遠ざける原因となります。"}]$jt43lbvnj$::jsonb,
      $jmf563mtu$[]$jmf563mtu$::jsonb
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
      'SFVH', 'SFMH',
      $jbu1b5i11$[{"t":"p","text":"事前の計画なしに個人の衝動で高強度な活動へ突入するという核心部分は完全に一致しています。唯一の違いは基準型がなりたいに基づいて感情の爆発を動力とするのに対し、相手はありたいに基づいて精神的な安定を保ちながら新たな体験を求める点にあります。行動のスタイルは極めて近いものの、基準型が内面的な感情の消化を目的とするのに対し、相手は外部からの刺激の獲得を目的とします。"}]$jbu1b5i11$::jsonb,
      $jvraet7tj$[{"t":"p","text":"計画を持たず個人の衝動のままに高強度な活動に向かうというプレースタイルが完全に合致しています。互いの爆発的なエネルギーを干渉することなく、同じ空間で最大限に発揮できます。"},{"t":"p","text":"互いに他者への依存や束縛を嫌うため、それぞれが自身の限界に挑む姿を適度な距離感で尊重し合えます。自律した個人同士が高いレベルで刺激を与え合う関係が成立します。"},{"t":"p","text":"基準型が感情の波によって不調に陥っている際、相手のありたいに基づく精神的な安定感が、基準型の感情を落ち着かせるサポートとして機能する場面があります。"}]$jvraet7tj$::jsonb,
      $j64q05r7l$[{"t":"p","text":"相手が新たな体験や刺激を求めて次々と行動を提案した際、基準型は自身の内面的な感情の消化に集中できず、その提案を強い圧力として感じてしまいます。相手の探索欲求が、基準型の集中を妨げます。"},{"t":"p","text":"基準型が全力を出し切って完全に活動を停止した状態になっても、相手は精神的に安定したまま次の活動へ向かおうとします。この活動終了後のエネルギーの落差が、互いのペースに対する違和感を生みます。"},{"t":"p","text":"基準型がなりたいに基づいて感情を激しく上下させる姿に対し、ありたいに基づく相手はその起伏の激しさを理解できず、無駄な消耗であると捉えてしまいます。"}]$j64q05r7l$::jsonb,
      $jgspooafr$[]$jgspooafr$::jsonb
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
      'SFVH', 'SFVC',
      $jq41xokh7$[{"t":"p","text":"事前の計画なしに個人の内面的な感情と連動して行動を開始するという核心部分は完全に一致しています。唯一の違いは基準型がその感情を爆発させて極限まで高める方向へ向かうのに対し、相手はその感情を穏やかに落ち着かせて整える方向へ向かう点にあります。行動の起点と感情の重要性は深く共有できるものの、その感情をどのように処理するかという出力の段階で決定的な違いが生じます。"}]$jq41xokh7$::jsonb,
      $j1l0x3yrn$[{"t":"p","text":"感情の波に連動して行動するという性質が完全に一致しているため、理屈ではなくその日の感覚だけで行動を共にできます。互いの気分が偶然重なった際、非常に心地よい時間を共有できます。"},{"t":"p","text":"なりたい同士であるため、調子が上がらない日は無理に動かなくてよいという前提を深く理解し合えます。互いの不調を責めることなく、自然に受け入れることができる関係性が築けます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息を必要としている日に、相手の穏やかで整えるようなペースが完璧に同調します。基準型のエネルギーがゼロの状態において、相手の存在が最大の癒しとなります。"}]$j1l0x3yrn$::jsonb,
      $j54o3gced$[{"t":"p","text":"基準型の感情のスイッチが入った際、極限まで自分を高めようと加速した瞬間、相手はその激しいペースに圧倒され、強い疲労感と疎外感を抱きます。強度の決定的な違いが、相手の心を深く傷つける結果となります。"},{"t":"p","text":"基準型がさらに強い刺激を求めて追い込みをかけると、相手は自身の能力不足を突きつけられたように感じ、自己肯定感を低下させてしまいます。基準型の熱量が、相手に対する無言の圧力として機能します。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に底を打った場合、互いを引き上げる動力が完全に失われます。不調の連鎖が起きやすく、関係性が停滞するリスクを常に抱えています。"}]$j54o3gced$::jsonb,
      $jjigu5a2v$[]$jjigu5a2v$::jsonb
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
      'SFVH', 'SPMC',
      $j21coy3if$[{"t":"p","text":"集団に属さず個人の領域で行動するという外形的な特徴だけが一致しています。しかし基準型が気分に任せて感情を爆発させ極限まで高めることを求めるのに対し、相手は計画的に感情を安定させ穏やかに整えることを求めます。基準型にとっての運動が瞬間の衝動の解放であるのに対し、相手にとっての運動は長期的な習慣の形成であるため、同じ一人での活動であってもその哲学が真っ向から対立します。"}]$j21coy3if$::jsonb,
      $jvv6v5sp8$[{"t":"p","text":"集団での活動を好まず個人の領域を重視するという価値観が共通しているため、互いの行動に干渉しない適度な距離感を保つことができます。自律性を尊重し合う関係が自然に成立します。"},{"t":"p","text":"相手がありたいに基づいて精神的に安定しているため、基準型のなりたいに基づく激しい感情の起伏を否定せず、客観的に受け流すことができます。この相手の寛容さが、基準型に安心感を与えます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている稀な日に限り、相手の穏やかで計画的なペースに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jvv6v5sp8$::jsonb,
      $jsymwh5uy$[{"t":"p","text":"相手が運動を毎日の習慣として計画的に継続しようと提案した瞬間、基準型は強い束縛を感じて完全に意欲を失います。相手にとっての理想的な環境が、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手が築き上げてきた穏やかな日常のルーティンが破壊されます。基準型の衝動性が、相手の計画性を根本から脅かします。"},{"t":"p","text":"基準型がその日の気分によって活動を不定期に行うプレースタイルが、相手の長期的な習慣形成の妨げとなります。運動に対する目的が瞬間の爆発と長期的な継続で完全に分かれているため、共に活動する接点を見出すことが困難です。"}]$jsymwh5uy$::jsonb,
      $jstr5aiys$[]$jstr5aiys$::jsonb
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
      'SFVH', 'SPMH',
      $jnsxnxrit$[{"t":"p","text":"集団に属さず個人の領域で極限まで自分を追い込むというプレースタイルは強く共鳴します。しかし基準型が気分に任せて感情の爆発を動力とするのに対し、相手は綿密な計画に基づいて精神を安定させながら記録の更新を動力とします。同じ高強度であっても、基準型にとっては内面的な衝動の解放であり、相手にとっては計画的な成果の積み上げであるため、その過程で求めるアプローチが全く異なります。"}]$jnsxnxrit$::jsonb,
      $jomqb48q3$[{"t":"p","text":"個人の領域で極限まで自分を追い込むという共通の価値観を基盤として、互いの限界に挑戦する姿勢を深く尊重し合えます。全力を出し切ることの価値を、言葉を交わさずとも共有できます。"},{"t":"p","text":"互いに他者への依存や干渉を嫌うため、それぞれが自身の目標に向かって集中する姿を適度な距離感で認め合えます。自律した個人同士が高いレベルで刺激を与え合う関係が成立します。"},{"t":"p","text":"基準型の感情のスイッチが入ったタイミングで、相手の計画的な高強度の活動に合流することができれば、互いのエネルギーが相乗効果を生みます。枠組みを外した純粋な追い込みの場が接点となります。"}]$jomqb48q3$::jsonb,
      $jvnckssyb$[{"t":"p","text":"相手が記録の更新や事前の計画に沿った継続的な行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の計画性が、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた成長の計画が崩壊します。基準型の衝動的なプレースタイルが、相手の長期的な目標達成を根本から脅かす結果となります。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら活動する姿に対し、ありたいに基づく相手は感情的で非効率的であると評価してしまいます。感情の起伏を動力とするか安定を動力とするかの違いが相互不理解を生みます。"}]$jvnckssyb$::jsonb,
      $j0ovg0ln9$[]$j0ovg0ln9$::jsonb
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
      'SFVH', 'SPVC',
      $j8rwycqrr$[{"t":"p","text":"個人の領域で内面的な感情と連動しながら行動するという性質は共有しています。しかし基準型が気分に任せて感情を爆発させ極限まで高めるために行動するのに対し、相手は計画的にルーティンをこなし感情を安定させるために行動します。同じ感情連動型でありながら、基準型は衝動の解放へ、相手は不安の解消と安定へと向かうため、互いの行動の目的が衝突する関係にあります。"}]$j8rwycqrr$::jsonb,
      $jed6z2hlv$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調が存在することを互いに深く理解し合えます。理屈ではなく感情の状態によって行動が左右されるという事実を共有できます。"},{"t":"p","text":"個人の領域を重視するという価値観が共通しているため、互いの行動に過度な干渉をしない適度な距離感を保つことができます。自律性を尊重し合う関係が自然に成立します。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている日に限り、相手の穏やかで計画的なルーティンに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jed6z2hlv$::jsonb,
      $jtrbmoxkt$[{"t":"p","text":"相手が運動を毎日の習慣として計画的に継続しようと提案した瞬間、基準型は強い束縛を感じて完全に意欲を失います。相手にとっての精神安定剤であるルーティンが、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発力かつ高強度な行動をとることで、相手が築き上げてきた穏やかな日常のルーティンが破壊されます。基準型の衝動性が、相手の精神的な安定を根本から脅かします。"},{"t":"p","text":"基準型がその日の気分によって活動をキャンセルした際、相手は自身のルーティンが崩れたことに対して強い不安と動揺を覚えます。なりたい同士であるため、相手の動揺が基準型にも伝播し、関係性が悪化しやすいです。"}]$jtrbmoxkt$::jsonb,
      $jn2frhl2u$[]$jn2frhl2u$::jsonb
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
      'SFVH', 'SPVH',
      $jgf7oe913$[{"t":"p","text":"個人の領域で感情と連動しながら極限まで自分を追い込むという核心部分は完全に一致しています。唯一の違いは基準型が事前の計画なしにその日の衝動で行動を開始するのに対し、相手は綿密な計画に基づいて行動を開始する点にあります。行動のスタイルと求める強度は極めて近いものの、基準型が瞬間の爆発を重視するのに対し、相手は計画的な自己超越を重視するため、継続性に対する価値観が分かれます。"}]$jgf7oe913$::jsonb,
      $jiig6msw2$[{"t":"p","text":"個人の領域で感情と連動しながら極限まで自分を追い込むというプレースタイルが完全に合致しています。互いの爆発的なエネルギーを干渉することなく、同じ空間で最大限に発揮できます。"},{"t":"p","text":"なりたい同士であるため、調子が上がらない日は無理に動かなくてよいという前提を深く理解し合えます。互いの不調を責めることなく、自然に受け入れることができる関係性が築けます。"},{"t":"p","text":"全力を出し切った後の身体的・精神的な達成感を、言葉を交わさずとも深く共有できます。この極限状態での共感が、他のタイプとは得られない強固な結びつきを生み出します。"}]$jiig6msw2$::jsonb,
      $jx9gslbzv$[{"t":"p","text":"相手が記録の更新や事前の計画に沿った継続的な行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の計画性が、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた成長の計画が崩壊し、相手は強い自己嫌悪に陥ります。なりたい同士であるため、相手の負の感情が基準型にも伝播し、関係性が悪化しやすいです。"},{"t":"p","text":"両者ともになりたいの性質を持ち、かつ高強度を求めるため、感情が高ぶった際には互いに限界を超えて過剰に追い込んでしまい、心身ともに深刻な消耗を招く危険性があります。"}]$jx9gslbzv$::jsonb,
      $jfsxwv2o8$[]$jfsxwv2o8$::jsonb
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
      'SPMC', 'GFMC',
      $jygquikwk$[{"t":"p","text":"一人で静かに計画を遂行したい側と、複数人でその場の気分を共有したい側では、運動の前提条件が大きく異なります。前者が日常のルーティンとしての安定を求めるのに対し、後者は交流を通じた楽しさを優先するため、一緒に動く際は活動の境界線を明確に引く必要があります。互いの運動スタイルを干渉させず、空間のみを共有する並行的な関わり方が、長期的な関係維持の鍵となります。"}]$jygquikwk$::jsonb,
      $jldkxcb00$[{"t":"p","text":"互いの運動に対する目的や価値観の違いを前提として受け入れ、無理に同じメニューをこなすことを避けるのが賢明です。一方が計画通りに黙々と動く傍らで、もう一方は自身の気分に合わせて自由に活動するなど、独立した時間を確保しながら同じ空間にいるスタイルが適しています。"},{"t":"p","text":"接点を持つ場合はあらかじめ日時や場所を明確に定め、それ以外の時間は完全に独立した活動を保証することが重要です。予測可能な範囲でのみ関わることで、計画的な側が習慣を乱されることへの懸念を払拭でき、安心感を持って運動に臨むことができます。"},{"t":"p","text":"運動の成果や過程について共有する際は、相手の基準を評価せず、事実のみを報告し合う形式が望ましいです。感情的な同調を求めず、客観的な記録の交換にとどめることで、適度な距離感を保ちながら互いの存在を励みにすることができます。"}]$jldkxcb00$::jsonb,
      $j0f9bsgok$[{"t":"p","text":"突発的な予定の変更や事前の合意がない状態での参加要請は、計画的な習慣を維持しようとする側の強い抵抗を引き起こします。予測不可能性は運動を継続するためのシステムを脅かす要因として認識され、心理的なハードルを著しく高めてしまいます。"},{"t":"p","text":"運動の強度や頻度に関して一方が自身の基準を他方に適用しようとすると、深刻な対立が生じます。特に集団での活動を無意識に強要する態度は、一人で静かに整えたい側にとって過剰な刺激となり、運動そのものへの意欲を削ぐ原因となります。"},{"t":"p","text":"感情的な共有や一体感を過度に求めるコミュニケーションは、淡々と活動をこなしたい側にとって負担となります。運動を社会的交流の場として捉えるか、個人的な調整の場として捉えるかの違いが、現場での温度差やストレスを増幅させます。"}]$j0f9bsgok$::jsonb,
      $j46nix40v$[]$j46nix40v$::jsonb
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
      'SPMC', 'GFMH',
      $jawqwjzca$[{"t":"p","text":"静かな習慣を一人で積み上げたい側と、集団で高強度の刺激をその場の気分で楽しみたい側では、運動に対する価値観が対極に位置します。前者が求める予測可能性と穏やかさは、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。互いの運動領域を完全に切り離し、干渉しない関係を築くことが、心理的な安全性を保つための前提条件となります。"}]$jawqwjzca$::jsonb,
      $j94r4ymic$[{"t":"p","text":"日常的な運動習慣を共有しようとせず、完全に独立した活動として位置づけることが最も効果的です。互いの運動スタイルが根本的に異なることを認識し、無理に合わせようとせず各自のペースで活動することを尊重し合う関係が望ましいです。"},{"t":"p","text":"接点を持つ場合は年に数回の特別なイベントに限定し、事前に日程を確定させておくことが重要です。計画的な側が心の準備をする期間を設けることで、突発的な誘いによるストレスを回避し、一時的な交流として楽しむ余裕が生まれます。"},{"t":"p","text":"イベント終了後は速やかに各自の日常のルーティンに戻り、継続的な合同活動を求めないことが肝要です。非日常の熱狂と日常の静寂を明確に区別することで、自身の習慣を崩される不安を感じることなく、良好な距離感を維持できます。"}]$j94r4ymic$::jsonb,
      $j7qi453l5$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的な習慣を重んじる側にとって最大のストレス要因となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$j7qi453l5$::jsonb,
      $jabfjs4wr$[]$jabfjs4wr$::jsonb
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
      'SPMC', 'GFVC',
      $j0j4vo35i$[{"t":"p","text":"一人で淡々と計画を実行したい側と、仲間との交流を通じて理想の姿を目指したい側では、運動の場に求める社会的密度が異なります。運動強度が穏やかである点は共通していますが、活動の起点が個人的な習慣か集団的な繋がりかという違いがあるため、適切な物理的・心理的距離の確保が求められます。互いの自律性を尊重し、過度な同調を避けることが、共存のための鍵となります。"}]$j0j4vo35i$::jsonb,
      $jnxs026k1$[{"t":"p","text":"運動の場を共有する際は、会話や感情的な交流を必須としない環境を選ぶことが有効です。同じスタジオや公園にいながらも、各自が独立して自身のメニューに集中できる状況を整えることで、互いのニーズを阻害せずに活動を継続できます。"},{"t":"p","text":"交流を深める場合は運動中ではなく前後の時間に限定し、活動自体は個人のペースを尊重することが重要です。時間の区切りを明確にすることで、一方は静寂の中で体を整え、もう一方は対話を通じて満足感を得るという役割分担が成立します。"},{"t":"p","text":"目標や成果について語る際は、現状を維持する姿勢と理想を追求する姿勢の違いを認め合うことが求められます。相手のアプローチを否定せず、異なる価値観に基づく運動スタイルとして受け入れることで、無用なプレッシャーを回避できます。"}]$jnxs026k1$::jsonb,
      $jrmn66n1d$[{"t":"p","text":"運動中に過度なコミュニケーションや感情の共有を求められると、一人で集中したい側はペースを乱され、心理的な疲労を感じやすくなります。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"理想の姿に向かって共に頑張ることを強要されると、現状の維持や調整を目的とする側は強いプレッシャーを感じます。目標の共有を前提とするアプローチは、自律的に動きたい側の意欲を削ぎ、関係性の悪化を招く原因となります。"},{"t":"p","text":"集団での活動を優先するあまり個人の計画やルーティンが軽視されると、計画的な側は不満を募らせます。集団の和を重んじる側と個人の自律性を重んじる側のバランスが崩れることが、合同トレーニングにおける対立の火種となります。"}]$jrmn66n1d$::jsonb,
      $j0oumlwio$[]$j0oumlwio$::jsonb
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
      'SPMC', 'GFVH',
      $jjk4pb1jy$[{"t":"p","text":"一人で静かに計画的な習慣を維持したい側と、集団で熱狂的に高い目標を追求したい側では、運動のあらゆる構成要素が対極にあります。行動原理や環境設定において共通項が皆無であるため、無理に合同で活動しようとすれば、互いの運動スタイルを破壊し合う結果になりかねません。異なる世界で活動していることを前提とし、運動という文脈では干渉を避けることが、互いの意欲を守るための最善策となります。"}]$jjk4pb1jy$::jsonb,
      $j7kdfoiqn$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$j7kdfoiqn$::jsonb,
      $jvlf7h5i6$[{"t":"p","text":"集団での高負荷なトレーニングに突発的に巻き込もうとする行為は、計画的で穏やかな習慣を好む側にとって耐え難い苦痛となります。自身の調整リズムを無視した価値観の押し付けは、運動継続に対する強い心理的障壁となってしまいます。"},{"t":"p","text":"常に高い目標を掲げ、熱狂的に努力することを求められると、現状維持や調整を良しとする側は強い拒絶感を示します。熱量の差がそのまま心理的な断絶となり、一緒に動くこと自体が苦行のように感じられるリスクがあります。"},{"t":"p","text":"計画性や静寂を否定し、その場のノリや集団の勢いを正義とする態度は、相手の運動スタイルを否定することに等しいです。根本的な理解の欠如が、トレーニングの現場において致命的な対立や意欲の減退を生む原因となります。"}]$jvlf7h5i6$::jsonb,
      $j0bzk39vm$[]$j0bzk39vm$::jsonb
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
      'SPMC', 'GPMC',
      $jtdmhzzj2$[{"t":"p","text":"一人で習慣を維持したい側と、コミュニティ全体で計画的に活動したい側では、運動の実施形態にのみ差異があります。計画性や穏やかな強度、現状維持を好む点は共通しているため、集団に属しながらも個人の自律性を保てる環境であれば、非常に安定した協力関係を築けます。互いの活動領域を尊重し、無理な同調を強いないことが、長期的な共存のための鍵となります。"}]$jtdmhzzj2$::jsonb,
      $j9h6u1gw3$[{"t":"p","text":"集団の活動に参加する場合でも、個人のペースやメニューを維持できる「自律的な枠組み」を確保することが重要です。同じ時間帯に集まりながらも、各自が独立して動ける環境を整えることで、一方はコミュニティの繋がりを感じ、もう一方は自身のルーティンを遂行できます。"},{"t":"p","text":"活動の計画立案や記録の管理といったシステム面での協力を通じて関わることが有効です。直接一緒に体を動かさなくても、トレーニングの仕組みやログの共有によって連帯感を持つことができ、互いの継続を支え合う関係を構築できます。"},{"t":"p","text":"集団への参加頻度や関わり方について、あらかじめ明確なルールや境界線を定めておくことが推奨されます。義務感を感じさせない範囲での参加を保証し、一人の時間を尊重する姿勢を示すことが、計画的な側の安心感と意欲維持に寄与します。"}]$j9h6u1gw3$::jsonb,
      $j5y8gwd2g$[{"t":"p","text":"集団のルールや同調圧力を過度に押し付けられると、一人で活動したい側は強い息苦しさを感じ、運動そのものから遠ざかってしまいます。個人の自律性が脅かされる状況は、習慣の継続を阻害する大きな要因として認識されます。"},{"t":"p","text":"全員が同じメニューやペースで動くことを強要されると、自身の計画を重んじる側は強く反発します。画一的な行動の要求は、個人の緻密な調整システムを破壊する行為とみなされ、心理的なストレスを増大させます。"},{"t":"p","text":"コミュニティの維持や運営に対する責任を過剰に求められると、個人的な活動を重視する側は負担に感じます。運動を個人の調整の場として捉えている側にとって、集団への貢献を前提とするアプローチは、継続の動機を削ぐ結果となります。"}]$j5y8gwd2g$::jsonb,
      $jzjx0lwea$[]$jzjx0lwea$::jsonb
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
      'SPMC', 'GPMH',
      $j0154myi3$[{"t":"p","text":"一人で静かに習慣を維持したい側と、チームで計画的に高い目標を追求したい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が現状の安定と継続を最優先するのに対し、後者は集団での成果や記録更新を重視するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$j0154myi3$::jsonb,
      $j1a8cyyeh$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手の目標の高さやチームでの活動を評価しつつも、自身の現状維持のスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な上方修正を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$j1a8cyyeh$::jsonb,
      $jfkltxo5u$[{"t":"p","text":"チームでの高い目標達成や記録更新に巻き込もうとする行為は、個人の穏やかな習慣を維持したい側にとって強いプレッシャーとなります。目標の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、意欲を失います。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な対立を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、継続のためのシステムを脅かす行為として強く反発されます。"}]$jfkltxo5u$::jsonb,
      $jnl288xgt$[]$jnl288xgt$::jsonb
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
      'SPMC', 'GPVC',
      $jm0g5et8z$[{"t":"p","text":"一人で習慣を維持したい側と、チームの責任として計画的に理想を追求したい側では、運動の動機付けの源泉が異なります。計画性と穏やかな強度は共通しているため、活動の枠組みを共有することは可能ですが、一方は個人的なリズムを、もう一方は集団の維持を重視します。互いの動機を尊重し、責任や義務を強いない関わり方を徹底することが、互いの継続を支え合うための基盤となります。"}]$jm0g5et8z$::jsonb,
      $jgx4jfgrb$[{"t":"p","text":"一緒に活動する場合は、互いに独立したメニューを同じ時間帯に行うなど、並行的な関わり方が適しています。集団としての責任を負わせず、個人のペースを完全に守れる環境を整えることで、一方は静かに整え、もう一方はチームの安定を感じることができます。"},{"t":"p","text":"互いの計画の進捗を共有する際は、義務感や責任感を伴わない軽い報告にとどめることが望ましいです。プレッシャーを感じさせないフラットなコミュニケーションを心がけることで、計画的な側が自身のルーティンに集中できる環境を維持できます。"},{"t":"p","text":"相手がチームのために活動していることを尊重しつつ、自身は個人の習慣に専念するという役割分担を明確にすることが推奨されます。互いの領域を侵さない境界線を引くことで、無用な干渉を避け、安定した協力関係を築くことが可能になります。"}]$jgx4jfgrb$::jsonb,
      $j3befx74z$[{"t":"p","text":"チームへの貢献や参加の義務を強く求められると、一人で活動したい側は強い心理的負担を感じ、運動の継続が困難になります。責任感の押し付けは、個人の静かな習慣を維持する上での重大な障害として認識されてしまいます。"},{"t":"p","text":"理想の姿に向かって共に努力することを強要されると、現状維持を目的とする側は反発し、意欲を失います。目標設定の方向性の違いを無視したアプローチは、現場での温度差を広げ、深刻な摩擦を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のルーティンを変更するよう圧力をかけられると、計画的な側は不満を募らせます。個人の自律性が軽視される状況は、運動を継続するためのシステムを壊す行為として強く拒絶されます。"}]$j3befx74z$::jsonb,
      $jxcoe6079$[]$jxcoe6079$::jsonb
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
      'SPMC', 'GPVH',
      $j7f7xkc2a$[{"t":"p","text":"一人で静かに習慣を維持したい側と、チームを牽引して熱狂的に高い目標を追求したい側では、計画性という一点を除いて運動のスタイルが大きく異なります。計画が目指す方向性や求められる熱量が根本的に違うため、直接的な合同トレーニングは困難を伴います。互いの計画の自律性を尊重し、システムや論理の面でのみ接点を持つことで、互いの運動意欲を削ぐことなく共存することが可能になります。"}]$j7f7xkc2a$::jsonb,
      $jt5p7e6z4$[{"t":"p","text":"運動の計画立案やデータ管理といった、裏方的な役割でのみ協力関係を築くことが有効です。直接一緒に活動することは避け、トレーニングの仕組みや目標設定の論理的な側面でのみ接点を持つことで、熱量の差によるストレスを回避できます。"},{"t":"p","text":"互いの活動については完全に独立したものとして扱い、干渉しないことが最善の策です。計画性という共通項を活かし、互いの自己管理能力を客観的に尊重し合う関係を築くことで、異なる世界での継続を認め合うことができます。"},{"t":"p","text":"相手の熱量やチームでの活動を評価しつつも、自身の静かな習慣には巻き込まれないよう明確な境界線を引くことが重要です。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jt5p7e6z4$::jsonb,
      $jitmmt2wh$[{"t":"p","text":"チームの目標達成のために高強度の活動に巻き込もうとする行為は、個人の穏やかな習慣を維持したい側にとって最大のストレスとなります。熱量の押し付けは強い反発を招き、運動を継続するための心理的な安全性を著しく損なってしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を否定し、より高い目標を目指すよう強要されると、静かに継続したい側は深く傷つき、意欲を失います。価値観の根本的な違いを理解せず、自身の向上心を他者に投影する態度は、現場での深刻な対立を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールを犠牲にするよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の領域への過度な介入やルーティンの破壊は、信頼関係を根底から揺るがす行為として認識されます。"}]$jitmmt2wh$::jsonb,
      $jw3xq7a97$[]$jw3xq7a97$::jsonb
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
      'SPMC', 'SFMC',
      $j1ex7kw2t$[{"t":"p","text":"一人で計画的に習慣を維持したい側と、一人でその日の気分に合わせて穏やかに活動したい側では、行動の起点にのみ差異があります。一人で穏やかに現状を維持する点は共通しているため、互いのペースを尊重し合えれば、非常に心地よい共存関係を築けます。計画か気分かという違いを「補完」として捉え、無理な同調を避けることが、互いの自律的な運動を継続させるための鍵となります。"}]$j1ex7kw2t$::jsonb,
      $j84dy3sx5$[{"t":"p","text":"一緒に活動する場合は、あらかじめ時間や場所だけを緩やかに決め、内容はその場で各自が自由に選択できる枠組みを整えることが適しています。計画性と気分の両方を満たす妥協点を見つけることで、一方は予定通りの安心感を得、もう一方は自由な感覚を保つことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度ではなく、活動そのものを楽しめたかどうかの主観的な感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる行動原理を持つ者同士でも、良好なモチベーションを維持し合えます。"},{"t":"p","text":"相手の気まぐれな行動を否定せず、自身の計画に影響を与えない範囲で寛容に受け入れる態度が求められます。互いの行動原理の違いを理解し、干渉しすぎない距離感を保つことが、一人で動くことを好む者同士の長期的な関係に寄与します。"}]$j84dy3sx5$::jsonb,
      $jtfxe3pqr$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やキャンセルに対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"活動の記録や進捗管理を相手にも求めると、気分で動きたい側はプレッシャーを感じ、回避行動をとるようになります。管理的なアプローチは、本来リラックスや調整を目的としていた運動の場から楽しさを奪い、継続の動機を削ぐ結果となります。"}]$jtfxe3pqr$::jsonb,
      $j903l2s6p$[]$j903l2s6p$::jsonb
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
      'SPMC', 'SFMH',
      $jz1izhplt$[{"t":"p","text":"一人で計画的に穏やかな習慣を維持したい側と、一人で直感に従い高強度の刺激を求める側では、運動の実施形態こそ共通していますが、その中身が大きく異なります。計画性と強度において対極にあるため、活動を共有しようとすれば互いのリズムを崩す結果になりかねません。一人で活動するという自律性を尊重し合い、運動の内容については完全に独立させることで、互いの意欲を損なわずに共存することが可能になります。"}]$jz1izhplt$::jsonb,
      $jp8g4wuqu$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の突発的で高強度な活動を評価しつつも、自身は計画的で穏やかな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jp8g4wuqu$::jsonb,
      $jbe0uypxl$[{"t":"p","text":"突発的に高強度の活動に誘われると、計画的で穏やかな習慣を好む側は強いストレスを感じ、運動のリズムを乱されてしまいます。自身の調整システムを無視した誘いは、継続に対する心理的な障壁となり、意欲の減退を招く原因となります。"},{"t":"p","text":"厳密な計画や継続的なルーティンを相手に求めると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"互いの活動スタイルを否定し合うと、根本的な対立に発展し、運動そのものが苦痛なものとなってしまいます。穏やかな継続と突発的な高強度のどちらが正しいかを議論することは避け、異なる価値観に基づく独立した活動として認める態度が必要です。"}]$jbe0uypxl$::jsonb,
      $jrlkgyic5$[]$jrlkgyic5$::jsonb
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
      'SPMC', 'SFVC',
      $jx1b8y7tr$[{"t":"p","text":"一人で計画的に習慣を維持したい側と、一人で気分に従い理想の姿を模索する側では、運動の実施形態や強度は共通していますが、行動の起点が異なります。一方は予定通りの遂行を、もう一方は感情の充足を優先するため、一緒に動く際は互いのリズムを尊重し合う必要があります。一人で穏やかに活動するという共通項を基盤にしつつ、過度な同調を避けることが、互いの心地よい継続を支える鍵となります。"}]$jx1b8y7tr$::jsonb,
      $j6nnci3du$[{"t":"p","text":"一緒に活動する場合は、互いに独立したメニューを同じ空間で行うなど、並行的な関わり方が適しています。会話や感情的な交流を必須とせず、個人のペースを完全に守れる環境を整えることで、一方は計画をこなし、もう一方は自身の内面と向き合うことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度や理想への接近度ではなく、活動そのものの心地よさや感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる動機を持つ者同士でも、互いの存在を穏やかな刺激として受け入れることができます。"},{"t":"p","text":"相手の気まぐれな行動や理想を追求する姿勢を否定せず、自身の計画に影響を与えない範囲で寛容に受け入れる態度が求められます。互いの価値観の違いを理解し、干渉しすぎない距離感を保つことが、一人で静かに動くことを好む者同士の長期的な関係に寄与します。"}]$j6nnci3du$::jsonb,
      $j0qfkdy1x$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"理想の姿に向かって努力することを強要されると、現状維持や調整を目的とする側はプレッシャーを感じ、回避行動をとるようになります。目標設定の方向性の違いを無視したアプローチは、現場での温度差を広げ、摩擦を生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やキャンセルに対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$j0qfkdy1x$::jsonb,
      $jrxwpr0kn$[]$jrxwpr0kn$::jsonb
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
      'SPMC', 'SFVH',
      $jxq1nn1lp$[{"t":"p","text":"一人で計画的に穏やかな習慣を維持したい側と、一人で直感に従い高強度で理想を追求する側では、運動の実施形態こそ共通していますが、その中身や熱量が根本的に異なります。一方は安定した継続を、もう一方は爆発的な成果を求めるため、合同で活動しようとすれば互いの意欲を削ぎ合う結果になりかねません。一人で活動するという自律性を尊重し合い、運動の内容については完全に独立させることで、互いのスタイルを崩さずに共存することが可能になります。"}]$jxq1nn1lp$::jsonb,
      $jaqekp4m3$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な干渉を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の突発的で高強度な活動や理想を追求する姿勢を評価しつつも、自身は計画的で穏やかな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jaqekp4m3$::jsonb,
      $j1z0kqpam$[{"t":"p","text":"突発的に高強度の活動に誘われると、計画制で穏やかな習慣を好む側は強いストレスを感じ、運動のリズムを乱されてしまいます。自身の調整システムを無視した誘いは、継続に対する心理的な障壁となり、意欲の減退を招く原因となります。"},{"t":"p","text":"厳密な計画や継続的なルーティンを相手に求めると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"常に高い目標を掲げ、熱狂的に努力することを求められると、現状維持や調整を良しとする側は強い拒絶感を示します。価値観の根本的な違いを理解せず、自身の向上心を他者に投影する態度は、現場での深刻な対立を生む原因となります。"}]$j1z0kqpam$::jsonb,
      $jxyinxh6d$[]$jxyinxh6d$::jsonb
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
      'SPMC', 'SPMH',
      $j9icukw6m$[{"t":"p","text":"一人で計画的に穏やかな習慣を維持したい側と、一人で計画的に高強度の目標に挑戦する側では、運動の実施形態や計画性は共通していますが、強度の設定において差異があります。互いに自律的な計画を重んじる点は一致しているため、強度の違いを「個人の選択」として尊重し合えれば、非常に安定した協力関係を築けます。互いの限界や現状を比較せず、計画通りの遂行を認め合うことが、長期的な共存のための鍵となります。"}]$j9icukw6m$::jsonb,
      $jzb5uya8r$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに異なる強度のメニューを実行する並行的な関わり方が適しています。計画性を共有しながらも、個人のペースや負荷を完全に守れる環境を整えることで、一方は安定を、もう一方は成長を追求できます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、強度の違いや成果を比較せず、計画通りに実行できたかどうかの継続性に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を励みにすることができます。"},{"t":"p","text":"相手の高強度な挑戦を評価しつつも、自身は穏やかな習慣の維持に専念するという境界線を明確にすることが推奨されます。互いの目標設定の方向性が異なることを早期に合意しておくことで、無理な上方修正を求められるストレスを回避できます。"}]$jzb5uya8r$::jsonb,
      $jfs3uz3t9$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、穏やかな習慣を好む側は強い心理的負担を感じ、運動のリズムを乱されてしまいます。強度の押し付けは、自律的に動きたい側の意欲を削ぎ、運動そのものを苦痛に変えてしまう原因となります。"},{"t":"p","text":"現状維持の姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、トレーニングの場が不快な空間へと変質してしまいます。強度の違いを価値の優劣として捉える発言は、計画的な継続を重んじる者同士の信頼関係を根底から揺るがします。"},{"t":"p","text":"互いの記録や成果を過度に比較し合うと、競争意識が芽生え、本来の目的である自身の調整や成長が疎かになってしまいます。異なる目標を持っていることを忘れ、優劣を競うようなコミュニケーションは、運動継続のモチベーションを低下させます。"}]$jfs3uz3t9$::jsonb,
      $jslor69ck$[]$jslor69ck$::jsonb
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
      'SPMC', 'SPVC',
      $jzhz943x8$[{"t":"p","text":"一人で計画的に習慣を維持したい側と、一人で計画的に理想のルーティンを追求する側では、運動の実施形態や強度は完全に一致していますが、継続の背景にある心理的動機が異なります。一方は現状の安定を、もう一方は理想への接近を重視するため、一緒に動く際は互いの目標設定の厳格さに干渉しないことが重要です。互いの計画性を認め合い、穏やかな空間を共有することで、非常に安定した協力関係を築けます。"}]$jzhz943x8$::jsonb,
      $j58nd61q3$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに独立したメニューを実行する並行的な関わり方が最適です。計画性と穏やかさを共有しながら、個人のペースや調整リズムを完全に守れる環境を整えることで、互いの継続を支え合うことができます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、理想への接近度や完璧さではなく、計画通りに実行できたかどうかの事実に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を安心材料にすることができます。"},{"t":"p","text":"相手の理想を追求する姿勢を評価しつつも、自身は現状維持の習慣に専念するという境界線を明確にすることが推奨されます。互いの動機の違いを理解し、無理な完璧主義を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$j58nd61q3$::jsonb,
      $j5pk1gg23$[{"t":"p","text":"理想のルーティンを完璧にこなすことを相手にも求めると、現状維持を目的とする側は強いプレッシャーを感じ、運動への意欲を失ってしまいます。完璧主義の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻なストレスを生む原因となります。"},{"t":"p","text":"計画が少しでも狂った際に過度に落ち込んだり、相手を責めたりする態度は、穏やかに継続したい側にとって大きな負担となります。柔軟性の欠如や感情的な揺れが、トレーニングの現場において無用な摩擦を生み、運動の継続を阻害する要因となります。"},{"t":"p","text":"互いのルーティンの優劣や完璧さを比較し合うと、競争意識が芽生え、本来の目的である自身の調整が疎かになってしまいます。異なる動機を持っていることを忘れ、自身のやり方を正当化するようなコミュニケーションは、良好な関係を破壊します。"}]$j5pk1gg23$::jsonb,
      $jjjqlkw9k$[]$jjjqlkw9k$::jsonb
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
      'SPMC', 'SPVH',
      $ja739rqzt$[{"t":"p","text":"一人で計画的に穏やかな習慣を維持したい側と、一人で計画的に高強度の理想を追求する側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が現状の安定と継続を最優先するのに対し、後者は自己の限界突破や理想への接近を重視するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$ja739rqzt$::jsonb,
      $j6ah9u76t$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに異なる強度と目標のメニューを実行する並行的な関わり方が適しています。計画性を共有しながらも、個人のペースや負荷を完全に守れる環境を整えることで、一方は安定を、もう一方は成長を追求できます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、強度の違いや理想への接近度を比較せず、計画通りに実行できたかどうかの継続性に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を励みにすることができます。"},{"t":"p","text":"相手の高強度な挑戦や理想を追求する姿勢を評価しつつも、自身は穏やかな習慣の維持に専念するという境界線を明確にすることが推奨されます。互いの目標設定の方向性が異なることを早期に合意しておくことで、無理な上方修正を求められるストレスを回避できます。"}]$j6ah9u76t$::jsonb,
      $j98y5id9k$[{"t":"p","text":"高強度のトレーニングや高い理想の追求に無理に付き合わせようとすると、穏やかな習慣を好む側は強い心理的負担を感じ、運動のリズムを乱されてしまいます。価値観の押し付けは、自律的に動きたい側の意欲を削ぎ、運動そのものを苦痛に変えてしまう原因となります。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、トレーニングの場が不快な空間へと変質してしまいます。強度の違いを価値の優劣として捉える発言は、計画的な継続を重んじる者同士の信頼関係を根底から揺るがします。"},{"t":"p","text":"互いの記録や成果を過度に比較し合うと、競争意識が芽生え、本来の目的である自身の調整が疎かになってしまいます。異なる目標を持っていることを忘れ、優劣を競うようなコミュニケーションは、運動継続のモチベーションを低下させます。"}]$j98y5id9k$::jsonb,
      $js58bliyk$[]$js58bliyk$::jsonb
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
      'SPMH', 'GFMC',
      $jisoqqqgv$[{"t":"p","text":"一人でストイックに計画を遂行し高みを目指したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動のあらゆる前提条件が対極にあります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は交流を通じた楽しさと現状の肯定を優先するため、一緒に動く際は活動の境界線を厳格に引く必要があります。互いの運動スタイルを完全に切り離し、干渉しない関係を築くことが、互いの意欲を守るための唯一の道となります。"}]$jisoqqqgv$::jsonb,
      $jaxrul8zq$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度、強度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jaxrul8zq$::jsonb,
      $ja2u5a5kl$[{"t":"p","text":"集団での穏やかなレクリエーション活動に突発的に巻き込もうとする行為は、一人で高い目標を追求する側にとって耐え難い苦痛となります。自身の緻密な計画や調整リズムを無視した誘いは、運動継続に対する強い心理的障壁となってしまいます。"},{"t":"p","text":"運動に対する熱量や目的の違いを無視して「みんなで楽しく」という価値観を強要されると、ストイックに自分を追い込みたい側は著しく消耗します。楽しさを優先する姿勢が、自己超越を目指す側の真剣さを削ぐように感じられ、深刻な対立を生む原因となります。"},{"t":"p","text":"一方がその場のノリで予定を変更したり、計画にない交流を求めたりすると、計画的な側は強い不信感を抱きます。運動を自己更新の場として捉える側にとって、予測不可能性や過度な社交は、トレーニングの質を低下させる不純物として認識されます。"}]$ja2u5a5kl$::jsonb,
      $jenuruurk$[]$jenuruurk$::jsonb
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
      'SPMH', 'GFMH',
      $j84n16dmz$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分に従い高強度の刺激を楽しみたい側では、高めるという目的は共通していますが、そのプロセスが大きく異なります。一方は孤独な自己管理と数値による進捗を重視し、もう一方は集団のエネルギーと即興的な盛り上がりを求めます。互いの「高める」ための手法が相反するため、同じ空間で活動する際は、互いの領域を侵さないための明確な合意が必要となります。"}]$j84n16dmz$::jsonb,
      $jpkhg9z65$[{"t":"p","text":"「高める」という共通の目的を認めつつも、その手法が「孤独な計画」と「集団の即興」という正反対のものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方は集団の熱狂を楽しむという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な盛り上がりを重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jpkhg9z65$::jsonb,
      $jtkofy0xu$[{"t":"p","text":"その場のノリで予定外の高強度なグループセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"集団の熱狂や一体感を過度に強要されると、一人で集中して限界に挑みたい側は著しく消耗します。周囲の騒がしさや感情的な盛り上がりが、自己との対話を妨げるノイズとなり、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"一方が気分で計画を変更したり、トレーニングを中断して交流を優先したりすると、ストイックな側は強い不満を募らせます。運動を真剣な自己更新の場として捉える側にとって、不真面目に見える態度は、信頼関係を損なう決定的な要因となります。"}]$jtkofy0xu$::jsonb,
      $jyn104og2$[]$jyn104og2$::jsonb
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
      'SPMH', 'GFVC',
      $jb7zclgk0$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動のあらゆる構成要素が対極にあります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は交流を通じた楽しさと現状の肯定を優先するため、一緒に動く際は活動の境界線を厳格に引く必要があります。互いの運動スタイルを完全に切り離し、干渉しない関係を築くことが、互いの意欲を守るための唯一の道となります。"}]$jb7zclgk0$::jsonb,
      $j0xq0n549$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度、強度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$j0xq0n549$::jsonb,
      $jl9h6oz25$[{"t":"p","text":"集団での穏やかなレクリエーション活動に突発的に巻き込もうとする行為は、一人で高い目標を追求する側にとって耐え難い苦痛となります。自身の緻密な計画や調整リズムを無視した誘いは、運動継続に対する強い心理的障壁となってしまいます。"},{"t":"p","text":"運動に対する熱量や目的の違いを無視して「みんなで楽しく」という価値観を強要されると、ストイックに自分を追い込みたい側は著しく消耗します。楽しさを優先する姿勢が、自己超越を目指す側の真剣さを削ぐように感じられ、深刻な対立を生む原因となります。"},{"t":"p","text":"一方がその場のノリで予定を変更したり、計画にない交流を求めたりすると、計画的な側は強い不信感を抱きます。運動を自己更新の場として捉える側にとって、予測不可能性や過度な社交は、トレーニングの質を低下させる不純物として認識されます。"}]$jl9h6oz25$::jsonb,
      $jmfsl6ptk$[]$jmfsl6ptk$::jsonb
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
      'SPMH', 'GFVH',
      $jb8wzbztl$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分に従い高みを目指したい側では、高めるという目的は共通していますが、そのプロセスが大きく異なります。一方は孤独な自己管理と数値による進捗を重視し、もう一方は集団のエネルギーと即興的な盛り上がりを求めます。互いの「高める」ための手法が相反するため、同じ空間で活動する際は、互いの領域を侵さないための明確な合意が必要となります。"}]$jb8wzbztl$::jsonb,
      $jihpdjlvf$[{"t":"p","text":"「高める」という共通の目的を認めつつも、その手法が「孤独な計画」と「集団の即興」という正反対のものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方は集団の熱狂を楽しむという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な盛り上がりを重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jihpdjlvf$::jsonb,
      $jr4pd341s$[{"t":"p","text":"その場のノリで予定外の高強度なグループセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"集団の熱狂や一体感を過度に強要されると、一人で集中して限界に挑みたい側は著しく消耗します。周囲の騒がしさや感情的な盛り上がりが、自己との対話を妨げるノイズとなり、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"一方が気分で計画を変更したり、トレーニングを中断して交流を優先したりすると、ストイックな側は強い不満を募らせます。運動を真剣な自己更新の場として捉える側にとって、不真面目に見える態度は、信頼関係を損なう決定的な要因となります。"}]$jr4pd341s$::jsonb,
      $jbftldx4q$[]$jbftldx4q$::jsonb
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
      'SPMH', 'GPMC',
      $jn7tfdngi$[{"t":"p","text":"一人でストイックに高みを目指したい側と、コミュニティ全体で計画的に穏やかに整えたい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は集団の維持と現状の肯定を優先するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jn7tfdngi$::jsonb,
      $j1xsjev90$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手のコミュニティでの活動を評価しつつも、自身のストイックなスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$j1xsjev90$::jsonb,
      $jpunn6wf6$[{"t":"p","text":"コミュニティの行事や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で高い目標を追求する側にとって強いプレッシャーとなります。集団への参加の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆にストイックな姿勢を「無理しすぎ」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"コミュニティの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、自己更新のためのシステムを脅かす行為として強く反発されます。"}]$jpunn6wf6$::jsonb,
      $jx53zo1im$[]$jx53zo1im$::jsonb
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
      'SPMH', 'GPMH',
      $jf8kahlbf$[{"t":"p","text":"一人で計画的に高みを目指したい側と、チームで計画的に高みを目指したい側では、計画性と高めるという目的が共通しています。しかし、活動の単位が個人かチームかという違いがあるため、一緒に動く際は「個人の追求」と「チームの成果」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$jf8kahlbf$::jsonb,
      $j9i1oqe13$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"チームを率いる側が個人のストイックな活動を尊重し、無理にチーム活動に組み込まない配慮をすることが重要です。一方は孤独な追求を、もう一方はチームの勝利を目指すという役割分担を明確にすることで、互いの専門性を認め合う関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$j9i1oqe13$::jsonb,
      $jt47dke66$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かな自己超越を妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"一方がチームの和や盛り上がりを優先し、トレーニングの質よりも社交を重視し始めると、ストイックな側は失望を感じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、関係性を損なう決定的な要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$jt47dke66$::jsonb,
      $jydk1gs7n$[]$jydk1gs7n$::jsonb
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
      'SPMH', 'GPVC',
      $jlxj6t3j1$[{"t":"p","text":"一人でストイックに高みを目指したい側と、チームの責任として計画的に穏やかに整えたい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者はチームの維持と現状の肯定を優先するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jlxj6t3j1$::jsonb,
      $jgl15pwjp$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手のチームでの献身的な活動を評価しつつも、自身のストイックなスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$jgl15pwjp$::jsonb,
      $j40wlsvq7$[{"t":"p","text":"チームへの貢献や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で高い目標を追求する側にとって強いプレッシャーとなります。責任感の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆にストイックな姿勢を「チームの和を乱す」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、自己更新のためのシステムを脅かす行為として強く反発されます。"}]$j40wlsvq7$::jsonb,
      $jvh28kl36$[]$jvh28kl36$::jsonb
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
      'SPMH', 'GPVH',
      $jq4kby1yg$[{"t":"p","text":"一人で計画的に高みを目指したい側と、チームを牽引して計画的に高みを目指したい側では、計画性と高めるという目的が共通しています。しかし、活動の単位が個人かチームかという違いがあるため、一緒に動く際は「個人の追求」と「チームの成果」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$jq4kby1yg$::jsonb,
      $jj7o2tgrn$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"キャプテンとしてチームを率いる側が、個人のストイックな活動を「別動隊」として尊重し、無理にチーム活動に組み込まない配慮をすることが重要です。一方は孤独な追求を、もう一方はチームの勝利を目指すという役割分担を明確にすることで、互いの専門性を認め合う関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jj7o2tgrn$::jsonb,
      $jldyfedo8$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かな自己超越を妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"一方がチームの盛り上がりや一体感を優先し、トレーニングの質よりも社交を重視し始めると、ストイックな側は失望を感じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、関係性を損なう決定的な要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$jldyfedo8$::jsonb,
      $juq18a2va$[]$juq18a2va$::jsonb
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
      'SPMH', 'SFMC',
      $jjq94yj5u$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に合わせて穏やかに整えたい側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚とリラックスを求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$jjq94yj5u$::jsonb,
      $jxmf3ukup$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の気まぐれで穏やかな活動を評価しつつも、自身は計画的でストイックな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jxmf3ukup$::jsonb,
      $j82uflv5r$[{"t":"p","text":"厳格な計画や数値目標を相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"運動に対する真剣さや熱量の差を巡って対立が生じると、互いのスタイルを否定し合う結果となります。ストイックな側が相手を「怠惰」と見なし、穏やかな側が相手を「堅物」と見なすような偏見は、トレーニングの現場において致命的な断絶を生みます。"}]$j82uflv5r$::jsonb,
      $juluu0zcy$[]$juluu0zcy$::jsonb
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
      'SPMH', 'SFMH',
      $jxt042o19$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に従い高強度の刺激を求める側では、一人で高みを目指すという目的は共通していますが、計画性の有無が大きな隔たりとなります。一方は緻密な進捗管理を、もう一方は直感的な爆発力を重視するため、一緒に動く際は「予定」と「即興」の衝突を避ける工夫が必要です。互いの「高める」ための手法の違いを認め合い、干渉しない距離を保つことが、互いの成長を支える鍵となります。"}]$jxt042o19$::jsonb,
      $jg71mi5ia$[{"t":"p","text":"「高める」という共通の目的を認めつつも、そのプロセスが「計画」と「直感」という異なるものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方はその瞬間の直感に従って限界に挑むという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な爆発力を重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jg71mi5ia$::jsonb,
      $jrthzrxkl$[{"t":"p","text":"その場の直感で予定外の高強度なセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"厳密な計画や数値目標を相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"一方が気分でトレーニングの内容を変更したり、中断したりすることに対して、ストイックな側が不真面目だと批判すると深刻な対立が生じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、信頼関係を損なう決定的な要因となります。"}]$jrthzrxkl$::jsonb,
      $jmh0zt6vg$[]$jmh0zt6vg$::jsonb
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
      'SPMH', 'SFVC',
      $jsr15gbax$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分を共有し穏やかに整えたい側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚と理想の追求を求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$jsr15gbax$::jsonb,
      $jr1o25jue$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の気分を重視し穏やかに整える姿勢を評価しつつも、自身は計画的でストイックな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jr1o25jue$::jsonb,
      $jfere6p94$[{"t":"p","text":"厳格な計画や数値目標を相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"理想の姿に向かって努力することを強要されると、ストイックに自分を追い込みたい側は、そのアプローチの曖昧さに苛立ちを感じます。目標設定の方向性や厳格さの違いを無視したアプローチは、現場での温度差を広げ、摩擦を生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$jfere6p94$::jsonb,
      $jwzihvmck$[]$jwzihvmck$::jsonb
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
      'SPMH', 'SFVH',
      $j2c8z9nnv$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に従い高強度で理想を追求する側では、一人で高みを目指すという目的は共通していますが、計画性の有無が大きな隔たりとなります。一方は緻密な進捗管理を、もう一方は直感的な爆発力を重視するため、一緒に動く際は「予定」と「即興」の衝突を避ける工夫が必要です。互いの「高める」ための手法の違いを認め合い、干渉しない距離を保つことが、互いの成長を支える鍵となります。"}]$j2c8z9nnv$::jsonb,
      $js5nu4yn2$[{"t":"p","text":"「高める」という共通の目的を認めつつも、そのプロセスが「計画」と「直感」という異なるものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方はその瞬間の直感に従って限界に挑むという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な爆発力を重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$js5nu4yn2$::jsonb,
      $jr456ocon$[{"t":"p","text":"その場の直感で予定外の高強度なセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"厳密な計画や数値目標を相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"一方が気分でトレーニングの内容を変更したり、中断したりすることに対して、ストイックな側が不真面目だと批判すると深刻な対立が生じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、信頼関係を損なう決定的な要因となります。"}]$jr456ocon$::jsonb,
      $j6q86wgcw$[]$j6q86wgcw$::jsonb
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
      'SPMH', 'SPMC',
      $jk21i3sd9$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に穏やかに整えたい側では、一人で活動するという形態や計画性は共通していますが、強度の設定において差異があります。互いに自律的な計画を重んじる点は一致しているため、強度の違いを「個人の選択」として尊重し合えれば、非常に安定した協力関係を築けます。互いの限界や現状を比較せず、計画通りの遂行を認め合うことが、長期的な共存のための鍵となります。"}]$jk21i3sd9$::jsonb,
      $jetupwkod$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに異なる強度のメニューを実行する並行的な関わり方が適しています。計画性を共有しながらも、個人のペースや負荷を完全に守れる環境を整えることで、一方は安定を、もう一方は成長を追求できます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、強度の違いや成果を比較せず、計画通りに実行できたかどうかの継続性に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を励みにすることができます。"},{"t":"p","text":"相手の穏やかな習慣の維持を評価しつつも、自身はストイックな挑戦に専念するという境界線を明確にすることが推奨されます。互いの目標設定の方向性が異なることを早期に合意しておくことで、無理な下方修正を求められるストレスを回避できます。"}]$jetupwkod$::jsonb,
      $jjy72396x$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、穏やかな習慣を好む側は強い心理的負担を感じ、運動のリズムを乱されてしまいます。強度の押し付けは、自律的に動きたい側の意欲を削ぎ、運動そのものを苦痛に変えてしまう原因となります。"},{"t":"p","text":"現状維持の姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、トレーニングの場が不快な空間へと変質してしまいます。強度の違いを価値の優劣として捉える発言は、計画的な継続を重んじる者同士の信頼関係を根底から揺るがします。"},{"t":"p","text":"互いの記録や成果を過度に比較し合うと、競争意識が芽生え、本来の目的である自身の成長が疎かになってしまいます。異なる目標を持っていることを忘れ、優劣を競うようなコミュニケーションは、運動継続のモチベーションを低下させます。"}]$jjy72396x$::jsonb,
      $j5a8nmpk7$[]$j5a8nmpk7$::jsonb
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
      'SPMH', 'SPVC',
      $jxsi42dgt$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に理想のルーティンを追求する側では、一人で活動するという形態や計画性、なりたい姿を目指す姿勢が共通しています。しかし、強度の設定において差異があるため、一緒に動く際は「限界突破」か「完成度」のどちらを優先するかで温度差が生じます。互いの計画の厳格さを認め合い、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$jxsi42dgt$::jsonb,
      $jz077b00c$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法やルーティンの構築について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"一方は限界への挑戦を、もう一方は理想的な動作の反復を重視するという、アプローチの違いを明確にすることが重要です。互いの専門性を認め合い、異なる次元での自己超越を目指すパートナーとして尊重し合うことで、良好な関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jz077b00c$::jsonb,
      $j5jm983kz$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、完成度を重視する側は自身のルーティンを乱されることに強いストレスを感じます。強度の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻な対立を招きます。"},{"t":"p","text":"理想の動作やルーティンの完璧さを相手にも求めると、限界突破を優先する側は、その細かさに苛立ちを感じます。完璧主義の押し付けは、自己超越を目指す側の勢いを削ぐ不純物として認識され、関係性を損なう要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$j5jm983kz$::jsonb,
      $jbcny9pf9$[]$jbcny9pf9$::jsonb
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
      'SPMH', 'SPVH',
      $jgtc9n6n1$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に高強度の理想を追求する側では、運動のあらゆる構成要素が一致しています。共に孤独を愛し、緻密な計画に基づき、高い目標に向かって自分を追い込むストイックな姿勢を共有しています。互いの自律性を最大限に尊重し、沈黙の中で互いの限界に挑む姿を見せ合うことが、最も強力なモチベーションの源泉となります。"}]$jgtc9n6n1$::jsonb,
      $ji0mgn4wq$[{"t":"p","text":"言葉によるコミュニケーションを最小限に抑え、同じ空間で互いに限界に挑む姿を視認し合う「サイレント・セッション」が最も効果的です。互いの集中力を削ぐことなく、存在そのものを強力なライバルかつ理解者として認識することで、一人では到達できない高みを目指せます。"},{"t":"p","text":"計画の立案やデータの分析において、高度に専門的な情報交換を行うことが推奨されます。最新のトレーニング理論やサプリメント、リカバリー手法などについて客観的なデータに基づき議論することで、互いのパフォーマンス向上に直接的に寄与し合えます。"},{"t":"p","text":"互いの独立性を神聖なものとして扱い、トレーニング中の干渉を一切行わないという暗黙の了解を徹底することが重要です。適度な距離感を保ちながら、数値的な成果を競い合うことで、ストイックな者同士にしか分からない深い信頼関係を構築できます。"}]$ji0mgn4wq$::jsonb,
      $jshgdzg62$[{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"},{"t":"p","text":"一方が自身の計画や手法の絶対性を主張し、相手のやり方を否定し始めると、深刻な対立が生じます。自律的な追求を重んじる者同士にとって、手法への介入は自己の尊厳を脅かす行為として認識され、修復不可能な断絶を招きます。"},{"t":"p","text":"トレーニング以外の日常的な社交を過度に求められると、ストイックな側は集中力を削がれることに強い不快感を示します。運動を純粋な自己更新の場として聖域化している認識にズレが生じることが、関係性を損なう決定的な要因となります。"}]$jshgdzg62$::jsonb,
      $jv5kbjgpk$[]$jv5kbjgpk$::jsonb
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
      'SPVC', 'GFMC',
      $j0tjslwp4$[{"t":"p","text":"一人で完璧なルーティンを遂行したい側と、複数人でその場の気分を共有したい側では、運動の前提条件が大きく異なります。前者が予測可能なスケジュールと静寂の中での調整を求めるのに対し、後者は突発的な交流や賑やかな場を優先するため、一緒に動く際は活動の境界線を明確に引く必要があります。互いの運動スタイルを干渉させず、空間のみを共有する並行的な関わり方が、長期的な関係維持の鍵となります。"}]$j0tjslwp4$::jsonb,
      $jgq00p4b6$[{"t":"p","text":"運動の場を共有する際は、あらかじめ日時や場所を厳格に定め、それ以外の要素については互いに干渉しないことが重要です。計画的な側が自身のルーティンを完遂できるよう、一人の時間を尊重する姿勢を示すことで、安心感を持って同じ空間に滞在することが可能になります。"},{"t":"p","text":"交流を深める場合は運動中ではなく前後の時間に限定し、活動自体は個人のペースを尊重することが推奨されます。時間の区切りを明確にすることで、一方は静寂の中で体を整え、もう一方は対話を通じて満足感を得るという、異なるニーズを同時に満たすことができます。"},{"t":"p","text":"相手の社交的な振る舞いを否定せず、自身の計画に影響を与えない範囲で寛容に受け入れる態度が求められます。互いの行動原理の違いを理解し、無理に合わせようとしない距離感を保つことが、一人で動くことを好む側にとっての心理的な安全に寄与します。"}]$jgq00p4b6$::jsonb,
      $jg1s05l6k$[{"t":"p","text":"突発的な予定の変更や事前の合意がない状態での参加要請は、完璧なルーティンを維持しようとする側にとって最大のストレス要因となります。予測不可能性は運動を継続するためのシステムを脅かす不純物として認識され、強い拒絶反応を引き起こします。"},{"t":"p","text":"運動の最中に過度なコミュニケーションや感情の共有を求められると、一人で集中して動作を反復したい側はペースを乱されます。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"集団での活動を優先するあまり個人の計画やメニューが軽視されると、計画的な側は不満を募らせます。集団の和を重んじる側と個人の自律性を重んじる側のバランスが崩れることが、合同トレーニングにおける決定的な対立を生む原因となります。"}]$jg1s05l6k$::jsonb,
      $jdulswmig$[]$jdulswmig$::jsonb
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
      'SPVC', 'GFMH',
      $juc1rmvfm$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、複数人でその場の気分に従い高強度の刺激を楽しみたい側では、運動のあらゆる構成要素が対極にあります。前者が求める予測可能性と静寂は、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。異なる世界で活動していることを前提とし、運動という文脈では干渉を避けることが、互いの意欲を守るための最善策となります。"}]$juc1rmvfm$::jsonb,
      $jgzmesaz4$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jgzmesaz4$::jsonb,
      $jni1ti3iz$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的で穏やかな習慣を重んじる側にとって耐え難い苦痛となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$jni1ti3iz$::jsonb,
      $jqky42oqg$[]$jqky42oqg$::jsonb
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
      'SPVC', 'GFVC',
      $jvimxbqyg$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動の強度は共通していますが、活動の起点が異なります。一方は予定通りの遂行を、もう一方は感情の充足を優先するため、一緒に動く際は互いのリズムを尊重し合う必要があります。一人で穏やかに活動するという共通項を基盤にしつつ、過度な同調を避けることが、互いの心地よい継続を支える鍵となります。"}]$jvimxbqyg$::jsonb,
      $jqwzargzt$[{"t":"p","text":"一緒に活動する場合は、互いに独立したメニューを同じ空間で行うなど、並行的な関わり方が適しています。会話や感情的な交流を必須とせず、個人のペースを完全に守れる環境を整えることで、一方は計画をこなし、もう一方は自身の内面と向き合うことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度や理想への接近度ではなく、活動そのものの心地よさや感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる動機を持つ者同士でも、互いの存在を穏やかな刺激として受け入れることができます。"},{"t":"p","text":"相手の気分を重視し穏やかに整える姿勢を評価しつつも、自身は計画的で完璧なルーティンの維持に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jqwzargzt$::jsonb,
      $jrfgcb7sm$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"運動の最中に過度なコミュニケーションや感情の共有を求められると、一人で集中して動作を反復したい側はペースを乱されます。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$jrfgcb7sm$::jsonb,
      $jrkfwtot3$[]$jrkfwtot3$::jsonb
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
      'SPVC', 'GFVH',
      $jaxq2rybp$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、複数人でその場の気分に従い高みを目指したい側では、運動のあらゆる構成要素が対極にあります。前者が求める予測可能性と静寂は、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。異なる世界で活動していることを前提とし、運動という文脈では干渉を避けることが、互いの意欲を守るための最善策となります。"}]$jaxq2rybp$::jsonb,
      $jhyqyrhpu$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jhyqyrhpu$::jsonb,
      $jjxua8lfs$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的で穏やかな習慣を重んじる側にとって耐え難い苦痛となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$jjxua8lfs$::jsonb,
      $jwcb5q1vm$[]$jwcb5q1vm$::jsonb
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
      'SPVC', 'GPMC',
      $jmp3wqxkd$[{"t":"p","text":"一人で完璧なルーティンを遂行したい側と、コミュニティ全体で計画的に穏やかに整えたい側では、計画性と穏やかな強度が共通しています。しかし、活動の単位が個人かコミュニティかという違いがあるため、一緒に動く際は「個人のリズム」と「集団の維持」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jmp3wqxkd$::jsonb,
      $jft6h87c6$[{"t":"p","text":"集団の活動に参加する場合でも、個人のペースやメニューを維持できる「自律的な枠組み」を確保することが重要です。同じ時間帯に集まりながらも、各自が独立して動ける環境を整えることで、一方はコミュニティの繋がりを感じ、もう一方は自身のルーティンを遂行できます。"},{"t":"p","text":"活動の計画立案や記録の管理といったシステム面での協力を通じて関わることが有効です。直接一緒に体を動かさなくても、トレーニングの仕組みやログの共有によって連帯感を持つことができ、互いの継続を支え合う関係を構築できます。"},{"t":"p","text":"集団への参加頻度や関わり方について、あらかじめ明確なルールや境界線を定めておくことが推奨されます。義務感を感じさせない範囲での参加を保証し、一人の時間を尊重する姿勢を示すことが、計画的な側の安心感と意欲維持に寄与します。"}]$jft6h87c6$::jsonb,
      $jgpdm6kru$[{"t":"p","text":"コミュニティの行事や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で完璧なルーティンを追求する側にとって強いプレッシャーとなります。集団への参加の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"集団のルールや同調圧力を過度に押し付けられると、一人で活動したい側は強い息苦しさを感じ、運動そのものから遠ざかってしまいます。個人の自律性が脅かされる状況は、習慣の継続を阻害する大きな要因として認識されます。"},{"t":"p","text":"コミュニティの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、完璧な調整のためのシステムを脅かす行為として強く反発されます。"}]$jgpdm6kru$::jsonb,
      $j7q6q9rvn$[]$j7q6q9rvn$::jsonb
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
      'SPVC', 'GPMH',
      $ja79a8kkk$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、チームで計画的に高みを目指したい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が現状の安定と完璧な調整を最優先するのに対し、後者はチームの勝利や記録更新を重視するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$ja79a8kkk$::jsonb,
      $jveqqyqqu$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手のチームでの活動を評価しつつも、自身の完璧なルーティンを守るスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$jveqqyqqu$::jsonb,
      $j0r8bpw8g$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かなルーティンを妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆に完璧主義な姿勢を「チームの和を乱す」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、完璧な調整のためのシステムを脅かす行為として強く反発されます。"}]$j0r8bpw8g$::jsonb,
      $jmsyxj24r$[]$jmsyxj24r$::jsonb
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
      'SPVC', 'GPVC',
      $jg4j55abo$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、チームの責任として計画的に穏やかに整えたい側では、計画性と穏やかな強度が共通しています。しかし、活動の単位が個人かチームかという違いがあるため、一緒に動く際は「個人のリズム」と「集団の維持」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jg4j55abo$::jsonb,
      $jplbhliip$[{"t":"p","text":"集団の活動に参加する場合でも、個人のペースやメニューを維持できる「自律的な枠組み」を確保することが重要です。同じ時間帯に集まりながらも、各自が独立して動ける環境を整えることで、一方はチームの安定を感じ、もう一方は自身のルーティンを遂行できます。"},{"t":"p","text":"活動の計画立案や記録の管理といったシステム面での協力を通じて関わることが有効です。直接一緒に体を動かさなくても、トレーニングの仕組みやログの共有によって連帯感を持つことができ、互いの継続を支え合う関係を構築できます。"},{"t":"p","text":"チームへの参加頻度や関わり方について、あらかじめ明確なルールや境界線を定めておくことが推奨されます。義務感を感じさせない範囲での参加を保証し、一人の時間を尊重する姿勢を示すことが、計画的な側の安心感と意欲維持に寄与します。"}]$jplbhliip$::jsonb,
      $jzwoezks0$[{"t":"p","text":"チームへの貢献や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で完璧なルーティンを追求する側にとって強いプレッシャーとなります。責任感の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"理想の姿に向かって共に努力することを強要されると、現状維持を目的とする側は反発し、意欲を失います。目標設定の方向性の違いを無視したアプローチは、現場での温度差を広げ、深刻な摩擦を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、完璧な調整のためのシステムを脅かす行為として強く反発されます。"}]$jzwoezks0$::jsonb,
      $jm7r971wl$[]$jm7r971wl$::jsonb
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
      'SPVC', 'GPVH',
      $jrhlouu2f$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、チームを牽引して計画的に高みを目指したい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が現状の安定と完璧な調整を最優先するのに対し、後者はチームを率いて限界を突破することを重視するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jrhlouu2f$::jsonb,
      $j2xt2x4uc$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手の熱量やチームでの活動を評価しつつも、自身の完璧なルーティンを守るスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$j2xt2x4uc$::jsonb,
      $jjc7kjkv1$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かなルーティンを妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆に完璧主義な姿勢を「チームの和を乱す」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、完璧な調整のためのシステムを脅かす行為として強く反発されます。"}]$jjc7kjkv1$::jsonb,
      $j6y8bpd3d$[]$j6y8bpd3d$::jsonb
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
      'SPVC', 'SFMC',
      $jxdwxqn09$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、一人でその日の気分に合わせて穏やかに整えたい側では、一人で活動するという形態や強度は共通していますが、計画性の有無が大きな隔たりとなります。一方は予定通りの遂行を、もう一方は自由な感覚を優先するため、一緒に動く際は「予定」と「即興」の衝突を避ける工夫が必要です。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$jxdwxqn09$::jsonb,
      $j5owwx4dl$[{"t":"p","text":"一緒に活動する場合は、あらかじめ時間や場所だけを緩やかに決め、内容はその場で各自が自由に選択できる枠組みを整えることが適しています。計画性と気分の両方を満たす妥協点を見つけることで、一方は予定通りの安心感を得、もう一方は自由な感覚を保つことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度ではなく、活動そのものを楽しめたかどうかの主観的な感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる行動原理を持つ者同士でも、良好なモチベーションを維持し合えます。"},{"t":"p","text":"相手の気まぐれな行動を否定せず、自身の計画に影響を与えない範囲で寛容に受け入れる態度が求められます。互いの行動原理の違いを理解し、干渉しすぎない距離感を保つことが、一人で動くことを好む者同士の長期的な関係に寄与します。"}]$j5owwx4dl$::jsonb,
      $jt570n97o$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"活動の記録や進捗管理を相手にも求めると、気分で動きたい側はプレッシャーを感じ、回避行動をとるようになります。管理的なアプローチは、本来リラックスや調整を目的としていた運動の場から楽しさを奪い、継続の動機を削ぐ結果となります。"}]$jt570n97o$::jsonb,
      $jz4osnldv$[]$jz4osnldv$::jsonb
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
      'SPVC', 'SFMH',
      $ju1axjsry$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、一人でその日の気分に従い高強度の刺激を求める側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚と爆発的な負荷を求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$ju1axjsry$::jsonb,
      $j330wqf14$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客談的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の直感的で高強度な活動を評価しつつも、自身は計画的で穏やかなルーティンの維持に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$j330wqf14$::jsonb,
      $j2fwc1ohb$[{"t":"p","text":"突発的に高強度の活動に誘われると、計画的で穏やかな習慣を好む側は強いストレスを感じ、運動のリズムを乱されてしまいます。自身の調整システムを無視した誘いは、継続に対する心理的な障壁となり、意欲の減退を招く原因となります。"},{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"互いの活動スタイルを否定し合うと、根本的な対立に発展し、運動そのものが苦痛なものとなってしまいます。穏やかな継続と突発的な高強度のどちらが正しいかを議論することは避け、異なる価値観に基づく独立した活動として認める態度が必要です。"}]$j2fwc1ohb$::jsonb,
      $jmpahl5cz$[]$jmpahl5cz$::jsonb
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
      'SPVC', 'SFVC',
      $jy62ngec7$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、一人でその日の気分を共有し穏やかに整えたい側では、運動の実施形態や強度は共通していますが、行動の起点が異なります。一方は予定通りの遂行を、もう一方は感情の充足を優先するため、一緒に動く際は互いのリズムを尊重し合う必要があります。一人で穏やかに活動するという共通項を基盤にしつつ、過度な同調を避けることが、互いの心地よい継続を支える鍵となります。"}]$jy62ngec7$::jsonb,
      $jr1ce9hb0$[{"t":"p","text":"一緒に活動する場合は、互いに独立したメニューを同じ空間で行うなど、並行的な関わり方が適しています。会話や感情的な交流を必須とせず、個人のペースを完全に守れる環境を整えることで、一方は計画をこなし、もう一方は自身の内面と向き合うことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度や理想への接近度ではなく、活動そのものの心地よさや感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる動機を持つ者同士でも、互いの存在を穏やかな刺激として受け入れることができます。"},{"t":"p","text":"相手の気分を重視し穏やかに整える姿勢を評価しつつも、自身は計画的で完璧なルーティンの維持に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jr1ce9hb0$::jsonb,
      $j88ohgzww$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"理想の姿に向かって努力することを強要されると、現状維持や調整を目的とする側はプレッシャーを感じ、回避行動をとるようになります。目標設定の方向性の違いを無視したアプローチは、現場での温度差を広げ、摩擦を生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$j88ohgzww$::jsonb,
      $jgn6fjnxa$[]$jgn6fjnxa$::jsonb
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
      'SPVC', 'SFVH',
      $jqkemzsot$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、一人でその日の気分に従い高強度で理想を追求する側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚と爆発的な負荷を求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$jqkemzsot$::jsonb,
      $jd90s6x7d$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の直感的で高強度な活動を評価しつつも、自身は計画的で穏やかなルーティンの維持に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jd90s6x7d$::jsonb,
      $j0lwjzxq9$[{"t":"p","text":"突発的に高強度の活動に誘われると、計画制で穏やかな習慣を好む側は強いストレスを感じ、運動のリズムを乱されてしまいます。自身の調整システムを無視した誘いは、継続に対する心理的な障壁となり、意欲の減退を招く原因となります。"},{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"常に高い目標を掲げ、熱狂的に努力することを求められると、現状維持や調整を良しとする側は強い拒絶感を示します。価値観の根本的な違いを理解せず、自身の向上心を他者に投影する態度は、現場での深刻な対立を生む原因となります。"}]$j0lwjzxq9$::jsonb,
      $jnk64sjse$[]$jnk64sjse$::jsonb
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
      'SPVC', 'SPMC',
      $j2zqsu36g$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、一人で計画的に穏やかに整えたい側では、運動の実施形態や強度は完全に一致していますが、継続の背景にある心理的動機が異なります。一方は理想への接近を、もう一方は現状の安定を重視するため、一緒に動く際は互いの目標設定の厳格さに干渉しないことが重要です。互いの計画性を認め合い、穏やかな空間を共有することで、非常に安定した協力関係を築けます。"}]$j2zqsu36g$::jsonb,
      $jtiiusqzw$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに独立したメニューを実行する並行的な関わり方が最適です。計画性と穏やかさを共有しながら、個人のペースや調整リズムを完全に守れる環境を整えることで、互いの継続を支え合うことができます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、理想への接近度や完璧さではなく、計画通りに実行できたかどうかの事実に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を安心材料にすることができます。"},{"t":"p","text":"相手の現状維持の習慣を評価しつつも、自身は完璧なルーティンの追求に専念するという境界線を明確にすることが推奨されます。互いの動機の違いを理解し、無理な完璧主義を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$jtiiusqzw$::jsonb,
      $j0d06rjdw$[{"t":"p","text":"理想のルーティンを完璧にこなすことを相手にも求めると、現状維持を目的とする側は強いプレッシャーを感じ、運動への意欲を失ってしまいます。完璧主義の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻なストレスを生む原因となります。"},{"t":"p","text":"計画が少しでも狂った際に過度に落ち込んだり、相手を責めたりする態度は、穏やかに継続したい側にとって大きな負担となります。柔軟性の欠如や感情的な揺れが、トレーニングの現場において無用な摩擦を生み、運動の継続を阻害する要因となります。"},{"t":"p","text":"互いのルーティンの優劣や完璧さを比較し合うと、競争意識が芽生え、本来の目的である自身の調整が疎かになってしまいます。異なる動機を持っていることを忘れ、自身のやり方を正当化するようなコミュニケーションは、良好な関係を破壊します。"}]$j0d06rjdw$::jsonb,
      $j3zvuok8g$[]$j3zvuok8g$::jsonb
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
      'SPVC', 'SPMH',
      $j17j1n83f$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、一人で計画的に高みを目指したい側では、一人で活動するという形態や計画性、なりたい姿を目指す姿勢が共通しています。しかし、強度の設定において差異があるため、一緒に動く際は「完成度」か「限界突破」のどちらを優先するかで温度差が生じます。互いの計画の厳格さを認め合い、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$j17j1n83f$::jsonb,
      $j2fwuwq1p$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法やルーティンの構築について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"一方は理想的な動作の反復を、もう一方は限界への挑戦を重視するという、アプローチの違いを明確にすることが重要です。互いの専門性を認め合い、異なる次元での自己超越を目指すパートナーとして尊重し合うことで、良好な関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$j2fwuwq1p$::jsonb,
      $j16yglsz0$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、完成度を重視する側は自身のルーティンを乱されることに強いストレスを感じます。強度の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻な対立を招きます。"},{"t":"p","text":"理想の動作やルーティンの完璧さを相手にも求めると、限界突破を優先する側は、その細かさに苛立ちを感じます。完璧主義の押し付けは、自己超越を目指す側の勢いを削ぐ不純物として認識され、関係性を損なう要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$j16yglsz0$::jsonb,
      $joeyucq4k$[]$joeyucq4k$::jsonb
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
      'SPVC', 'SPVH',
      $j399l5fxy$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、一人で計画的に高強度の理想を追求する側では、一人で活動するという形態や計画性、なりたい姿を目指す姿勢が共通しています。しかし、強度の設定において差異があるため、一緒に動く際は「完成度」か「自己超越」のどちらを優先するかで温度差が生じます。互いの計画の厳格さを認め合い、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$j399l5fxy$::jsonb,
      $jbfj2xgmz$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法やルーティンの構築について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"一方は理想的な動作の反復を、もう一方は自己の限界突破を重視するという、アプローチの違いを明確にすることが重要です。互いの専門性を認め合い、異なる次元での自己超越を目指すパートナーとして尊重し合うことで、良好な関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jbfj2xgmz$::jsonb,
      $j2ciae8pb$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、完成度を重視する側は自身のルーティンを乱されることに強いストレスを感じます。強度の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻な対立を招きます。"},{"t":"p","text":"理想の動作やルーティンの完璧さを相手にも求めると、自己超越を優先する側は、その細かさに苛立ちを感じます。完璧主義の押し付けは、自己超越を目指す側の勢いを削ぐ不純物として認識され、関係性を損なう要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$j2ciae8pb$::jsonb,
      $jf7fbf8gb$[]$jf7fbf8gb$::jsonb
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
      'SPVH', 'GFMC',
      $jb2njyooy$[{"t":"p","text":"一人でストイックに計画を遂行し高みを目指したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動のあらゆる前提条件が対極にあります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は交流を通じた楽しさと現状の肯定を優先するため、一緒に動く際は活動の境界線を厳格に引く必要があります。互いの運動スタイルを完全に切り離し、干渉しない関係を築くことが、互いの意欲を守るための唯一の道となります。"}]$jb2njyooy$::jsonb,
      $jifk7o81h$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度、強度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jifk7o81h$::jsonb,
      $jwqxw4d94$[{"t":"p","text":"集団での穏やかなレクリエーション活動に突発的に巻き込もうとする行為は、一人で高い目標を追求する側にとって耐え難い苦痛となります。自身の緻密な計画や調整リズムを無視した誘いは、運動継続に対する強い心理的障壁となってしまいます。"},{"t":"p","text":"運動に対する熱量や目的の違いを無視して「みんなで楽しく」という価値観を強要されると、ストイックに自分を追い込みたい側は著しく消耗します。楽しさを優先する姿勢が、自己超越を目指す側の真剣さを削ぐように感じられ、深刻な対立を生む原因となります。"},{"t":"p","text":"一方がその場のノリで予定を変更したり、計画にない交流を求めたりすると、計画的な側は強い不信感を抱きます。運動を自己更新の場として捉える側にとって、予測不可能性や過度な社交は、トレーニングの質を低下させる不純物として認識されます。"}]$jwqxw4d94$::jsonb,
      $j0opt7sbr$[]$j0opt7sbr$::jsonb
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
      'SPVH', 'GFMH',
      $jxagn0yr3$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分に従い高強度の刺激を楽しみたい側では、高めるという目的は共通していますが、そのプロセスが大きく異なります。一方は孤独な自己管理と数値による進捗を重視し、もう一方は集団のエネルギーと即興的な盛り上がりを求めます。互いの「高める」ための手法が相反するため、同じ空間で活動する際は、互いの領域を侵さないための明確な合意が必要となります。"}]$jxagn0yr3$::jsonb,
      $jdrozvlzi$[{"t":"p","text":"「高める」という共通の目的を認めつつも、その手法が「孤独な計画」と「集団の即興」という正反対のものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方は集団の熱狂を楽しむという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な盛り上がりを重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jdrozvlzi$::jsonb,
      $j8dru94ie$[{"t":"p","text":"その場のノリで予定外の高強度なグループセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"集団の熱狂や一体感を過度に強要されると、一人で集中して限界に挑みたい側は著しく消耗します。周囲の騒がしさや感情的な盛り上がりが、自己との対話を妨げるノイズとなり、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"一方が気分で計画を変更したり、トレーニングを中断して交流を優先したりすると、ストイックな側は強い不満を募らせます。運動を真剣な自己更新の場として捉える側にとって、不真面目に見える態度は、信頼関係を損なう決定的な要因となります。"}]$j8dru94ie$::jsonb,
      $jmr24fs7o$[]$jmr24fs7o$::jsonb
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
      'SPVH', 'GFVC',
      $j5jvmps18$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動のあらゆる構成要素が対極にあります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は交流を通じた楽しさと現状の肯定を優先するため、一緒に動く際は活動の境界線を厳格に引く必要があります。互いの運動スタイルを完全に切り離し、干渉しない関係を築くことが、互いの意欲を守るための唯一の道となります。"}]$j5jvmps18$::jsonb,
      $jv3o9xizz$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度、強度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jv3o9xizz$::jsonb,
      $jbgkclbdc$[{"t":"p","text":"集団での穏やかなレクリエーション活動に突発的に巻き込もうとする行為は、一人で高い目標を追求する側にとって耐え難い苦痛となります。自身の緻密な計画や調整リズムを無視した誘いは、運動継続に対する強い心理的障壁となってしまいます。"},{"t":"p","text":"運動に対する熱量や目的の違いを無視して「みんなで楽しく」という価値観を強要されると、ストイックに自分を追い込みたい側は著しく消耗します。楽しさを優先する姿勢が、自己超越を目指す側の真剣さを削ぐように感じられ、深刻な対立を生む原因となります。"},{"t":"p","text":"一方がその場のノリで予定を変更したり、計画にない交流を求めたりすると、計画的な側は強い不信感を抱きます。運動を自己更新の場として捉える側にとって、予測不可能性や過度な社交は、トレーニングの質を低下させる不純物として認識されます。"}]$jbgkclbdc$::jsonb,
      $j2kmibe5p$[]$j2kmibe5p$::jsonb
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
      'SPVH', 'GFVH',
      $jbaw2z9iy$[{"t":"p","text":"一人で計画的に高みを目指したい側と、複数人でその場の気分に従い高みを目指したい側では、高めるという目的は共通していますが、そのプロセスが大きく異なります。一方は孤独な自己管理と数値による進捗を重視し、もう一方は集団のエネルギーと即興的な盛り上がりを求めます。互いの「高める」ための手法が相反するため、同じ空間で活動する際は、互いの領域を侵さないための明確な合意が必要となります。"}]$jbaw2z9iy$::jsonb,
      $jdkn0vvej$[{"t":"p","text":"「高める」という共通の目的を認めつつも、その手法が「孤独な計画」と「集団の即興」という正反対のものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方は集団の熱狂を楽しむという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な盛り上がりを重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jdkn0vvej$::jsonb,
      $ji3j5wfuz$[{"t":"p","text":"その場のノリで予定外の高強度なグループセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"集団の熱狂や一体感を過度に強要されると、一人で集中して限界に挑みたい側は著しく消耗します。周囲の騒がしさや感情的な盛り上がりが、自己との対話を妨げるノイズとなり、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"一方が気分で計画を変更したり、トレーニングを中断して交流を優先したりすると、ストイックな側は強い不満を募らせます。運動を真剣な自己更新の場として捉える側にとって、不真面目に見える態度は、信頼関係を損なう決定的な要因となります。"}]$ji3j5wfuz$::jsonb,
      $jr1x7u34o$[]$jr1x7u34o$::jsonb
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
      'SPVH', 'GPMC',
      $jgy6bjz9b$[{"t":"p","text":"一人でストイックに高みを目指したい側と、コミュニティ全体で計画的に穏やかに整えたい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者は集団の維持と現状の肯定を優先するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jgy6bjz9b$::jsonb,
      $jv13gdak1$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手のコミュニティでの活動を評価しつつも、自身のストイックなスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$jv13gdak1$::jsonb,
      $j1mcbf17h$[{"t":"p","text":"コミュニティの行事や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で高い目標を追求する側にとって強いプレッシャーとなります。集団への参加の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆にストイックな姿勢を「無理しすぎ」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"コミュニティの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、自己更新のためのシステムを脅かす行為として強く反発されます。"}]$j1mcbf17h$::jsonb,
      $jz2f3y8jb$[]$jz2f3y8jb$::jsonb
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
      'SPVH', 'GPMH',
      $jphbsxur8$[{"t":"p","text":"一人で計画的に高みを目指したい側と、チームで計画的に高みを目指したい側では、計画性と高めるという目的が共通しています。しかし、活動の単位が個人かチームかという違いがあるため、一緒に動く際は「個人の追求」と「チームの成果」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋覇磨が可能になります。"}]$jphbsxur8$::jsonb,
      $jrx5ukzmv$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"チームを率いる側が個人のストイックな活動を尊重し、無理にチーム活動に組み込まない配慮をすることが重要です。一方は孤独な追求を、もう一方はチームの勝利を目指すという役割分担を明確にすることで、互いの専門性を認め合う関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jrx5ukzmv$::jsonb,
      $j37itqq69$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かな自己超越を妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"一方がチームの和や盛り上がりを優先し、トレーニングの質よりも社交を重視し始めると、ストイックな側は失望を感じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、関係性を損なう決定的な要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$j37itqq69$::jsonb,
      $j3b3t213f$[]$j3b3t213f$::jsonb
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
      'SPVH', 'GPVC',
      $j6cxf9kmy$[{"t":"p","text":"一人でストイックに高みを目指したい側と、チームの責任として計画的に穏やかに整えたい側では、計画性という共通項を持ちながらも、目指す強度のベクトルが異なります。前者が自己の限界突破と数値的な成果を追求するのに対し、後者はチームの維持と現状の肯定を優先するため、一緒に動く際は互いの目標に干渉しないことが不可欠です。互いの計画の自律性を認め合い、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$j6cxf9kmy$::jsonb,
      $j3btnzh5j$[{"t":"p","text":"互いの計画の存在を尊重し合い、それぞれの目標に向かって独立して活動することが最も効果的です。計画性という共通の言語を活かし、トレーニングの進捗や記録を客観的に報告し合うことで、直接的な干渉を避けながら互いのモチベーションを支えることができます。"},{"t":"p","text":"目標設定や記録管理のノウハウを共有するなど、情報交換のレベルでの関わりにとどめることが望ましいです。直接一緒に運動することは避け、アプリやログを通じた非対面での協力に注力することで、強度の違いによるストレスを回避できます。"},{"t":"p","text":"相手のチームでの献身的な活動を評価しつつも、自身のストイックなスタイルを明確に伝えることが重要です。互いのスタンスの違いを早期に認識し、無理な集団活動への参加を求めない合意を形成しておくことが、長期的な共存を可能にします。"}]$j3btnzh5j$::jsonb,
      $jzpsctt9w$[{"t":"p","text":"チームへの貢献や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で高い目標を追求する側にとって強いプレッシャーとなります。責任感の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"現状維持を良しとする姿勢を「向上心がない」と否定したり、逆にストイックな姿勢を「チームの和を乱す」と批判したりすると、深刻な対立が生じます。強度の違いを価値の優劣として捉える発言は、トレーニングの現場において致命的な断絶を生む原因となります。"},{"t":"p","text":"チームの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、自己更新のためのシステムを脅かす行為として強く反発されます。"}]$jzpsctt9w$::jsonb,
      $jn8yev3on$[]$jn8yev3on$::jsonb
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
      'SPVH', 'GPVH',
      $jp6e2hbpw$[{"t":"p","text":"一人で計画的に高みを目指したい側と、チームを牽引して計画的に高みを目指したい側では、計画性と高めるという目的が共通しています。しかし、活動の単位が個人かチームかという違いがあるため、一緒に動く際は「個人の追求」と「チームの成果」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$jp6e2hbpw$::jsonb,
      $j3l01kr85$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"キャプテンとしてチームを率いる側が、個人のストイックな活動を「別動隊」として尊重し、無理にチーム活動に組み込まない配慮をすることが重要です。一方は孤独な追求を、もう一方はチームの勝利を目指すという役割分担を明確にすることで、互いの専門性を認め合う関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$j3l01kr85$::jsonb,
      $jh30bqofy$[{"t":"p","text":"チームの目標達成のために個人の計画を犠牲にするよう求められると、自律的な追求を重んじる側は強い不満を募らせます。チームへの貢献を前提とするアプローチは、個人の静かな自己超越を妨げる不純物として認識され、深刻な対立を招きます。"},{"t":"p","text":"一方がチームの盛り上がりや一体感を優先し、トレーニングの質よりも社交を重視し始めると、ストイックな側は失望を感じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、関係性を損なう決定的な要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$jh30bqofy$::jsonb,
      $jixr1ijri$[]$jixr1ijri$::jsonb
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
      'SPVH', 'SFMC',
      $je84obdc6$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に合わせて穏やかに整えたい側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚とリラックスを求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$je84obdc6$::jsonb,
      $jcqgghfta$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善의策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の気まぐれで穏やかな活動を評価しつつも、自身は計画的でストイックな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jcqgghfta$::jsonb,
      $jnc47qro0$[{"t":"p","text":"厳格な計画や数値目標を相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"運動に対する真剣さや熱量の差を巡って対立が生じると、互いのスタイルを否定し合う結果となります。ストイックな側が相手を「怠惰」と見なし、穏やかな側が相手を「堅物」と見なすような偏見は、トレーニングの現場において致命的な断絶を生みます。"}]$jnc47qro0$::jsonb,
      $j2w28p0us$[]$j2w28p0us$::jsonb
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
      'SPVH', 'SFMH',
      $jlyqma50q$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に従い高強度の刺激を求める側では、一人で高みを目指すという目的は共通していますが、計画性の有無が大きな隔たりとなります。一方は緻密な進捗管理を、もう一方は直感的な爆発力を重視するため、一緒に動く際は「予定」と「即興」の衝突を避ける工夫が必要です。互いの「高める」ための手法の違いを認め合い、干渉しない距離を保つことが、互いの成長を支える鍵となります。"}]$jlyqma50q$::jsonb,
      $jhhlgw1p2$[{"t":"p","text":"「高める」という共通の目的を認めつつも、そのプロセスが「計画」と「直感」という異なるものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方はその瞬間の直感に従って限界に挑むという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な爆発力を重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$jhhlgw1p2$::jsonb,
      $jj3r7e5et$[{"t":"p","text":"その場の直感で予定外の高強度なセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"厳密な計画や数値目標を相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"一方が気分でトレーニングの内容を変更したり、中断したりすることに対して、ストイックな側が不真面目だと批判すると深刻な対立が生じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、信頼関係を損なう決定的な要因となります。"}]$jj3r7e5et$::jsonb,
      $jfeqosqs0$[]$jfeqosqs0$::jsonb
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
      'SPVH', 'SFVC',
      $jk4oikdk5$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分を共有し穏やかに整えたい側では、一人で活動するという形態は共通していますが、計画性と強度の設定が対極にあります。一方は厳格な自己管理と数値目標を、もう一方は自由な感覚と理想の追求を求めるため、一緒に動く際は互いのリズムを完全に切り離す必要があります。互いの自律性を尊重し、運動の内容に干渉しないことが、心地よい共存のための唯一の条件となります。"}]$jk4oikdk5$::jsonb,
      $jee684qzz$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切干渉しないことが最善の策です。一人で活動するという共通のスタイルを活かし、互いの独立性を客観的に尊重し合う関係を築くことで、無用な摩擦を避けながら自身のトレーニングに集中できます。"},{"t":"p","text":"もし関わりを持つのであれば、互いの活動結果を事後に報告し合う程度の軽い接点にとどめることが推奨されます。異なるアプローチを客観的な事実として認め合い、評価を下さないことで、互いの運動哲学の違いを楽しみながら距離を保つことができます。"},{"t":"p","text":"相手の気分を重視し穏やかに整える姿勢を評価しつつも、自身は計画的でストイックな習慣に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jee684qzz$::jsonb,
      $jja5kc9mv$[{"t":"p","text":"厳格な計画や数値目標を相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"理想の姿に向かって努力することを強要されると、ストイックに自分を追い込みたい側は、そのアプローチの曖昧さに苛立ちを感じます。目標設定の方向性や厳格さの違いを無視したアプローチは、現場での温度差を広げ、摩擦を生む原因となります。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$jja5kc9mv$::jsonb,
      $jrhwy0slx$[]$jrhwy0slx$::jsonb
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
      'SPVH', 'SFVH',
      $jzn22pbql$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人でその日の気分に従い高強度で理想を追求する側では、一人で高みを目指すという目的は共通していますが、計画性の有無が大きな隔たりとなります。一方は緻密な進捗管理を、もう一方は直感的な爆発力を重視するため、一緒に動く際は「予定」と「即興」の衝突を避ける工夫が必要です。互いの「高める」ための手法の違いを認め合い、干渉しない距離を保っとことが、互いの成長を支える鍵となります。"}]$jzn22pbql$::jsonb,
      $j4o0l3e5w$[{"t":"p","text":"「高める」という共通の目的を認めつつも、そのプロセスが「計画」と「直感」という異なるものであることを理解し合うことが重要です。互いのトレーニングスタイルを否定せず、異なるアプローチによる自己超越として尊重する姿勢が求められます。"},{"t":"p","text":"一緒に活動する場合は、あらかじめ日時だけを確定させ、現場では完全に別メニューをこなすなど、物理的な距離を保った関わり方が適しています。一方は自身の計画に没頭し、もう一方はその瞬間の直感に従って限界に挑むという、独立した活動を保証することが肝要です。"},{"t":"p","text":"トレーニング後の成果報告についても、数値的な進捗を重視する側と、体感的な爆発力を重視する側の違いを許容することが望ましいです。互いの基準で評価し合わず、異なる次元での成功として認め合うことで、無用な摩擦を回避できます。"}]$j4o0l3e5w$::jsonb,
      $jh28e65n1$[{"t":"p","text":"その場の直感で予定外の高強度なセッションに誘われると、計画的に自分を追い込みたい側は強いストレスを感じます。自身の調整リズムやメニュー構成を無視した突発的な介入は、トレーニングの質を損なう要因として強く拒絶されます。"},{"t":"p","text":"厳密な計画や数値目標を相手に強要すると、直感で動きたい側は強く反発し、関係が冷え込んでしまいます。計画の押し付けは、相手の自由な探索意欲を制限する行為とみなされ、トレーニングの場が不自由な空間へと変質してしまいます。"},{"t":"p","text":"一方が気分でトレーニングの内容を変更したり、中断したりすることに対して、ストイックな側が不真面目だと批判すると深刻な対立が生じます。運動を真剣な自己更新の場として捉える認識にズレが生じることが、信頼関係を損なう決定的な要因となります。"}]$jh28e65n1$::jsonb,
      $jjyhp084u$[]$jjyhp084u$::jsonb
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
      'SPVH', 'SPMC',
      $j1sc18e0t$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に穏やかに整えたい側では、一人で活動するという形態や計画性は共通していますが、強度の設定において差異があります。互いに自律的な計画を重んじる点は一致しているため、強度の違いを「個人の選択」として尊重し合えれば、非常に安定した協力関係を築けます。互いの限界や現状を比較せず、計画通りの遂行を認め合うことが、長期的な共存のための鍵となります。"}]$j1sc18e0t$::jsonb,
      $jt4319xha$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに異なる強度のメニューを実行する並行的な関わり方が適しています。計画性を共有しながらも、個人のペースや負荷を完全に守れる環境を整えることで、一方は安定を、もう一方は成長を追求できます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、強度の違いや成果を比較せず、計画通りに実行できたかどうかの継続性に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を励みにすることができます。"},{"t":"p","text":"相手の穏やかな習慣の維持を評価しつつも、自身はストイックな挑戦に専念するという境界線を明確にすることが推奨されます。互いの目標設定の方向性が異なることを早期に合意しておくことで、無理な下方修正を求められるストレスを回避できます。"}]$jt4319xha$::jsonb,
      $j0si3m91g$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、穏やかな習慣を好む側は強い心理的負担を感じ、運動のリズムを乱されてしまいます。強度の押し付けは、自律的に動きたい側の意欲を削ぎ、運動そのものを苦痛に変えてしまう原因となります。"},{"t":"p","text":"現状維持の姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、トレーニングの場が不快な空間へと変質してしまいます。強度の違いを価値の優劣として捉える発言は、計画的な継続を重んじる者同士の信頼関係を根底から揺るがします。"},{"t":"p","text":"互いの記録や成果を過度に比較し合うと、競争意識が芽生え、本来の目的である自身の成長が疎かになってしまいます。異なる目標を持っていることを忘れ、優劣を競うようなコミュニケーションは、運動継続のモチベーションを低下させます。"}]$j0si3m91g$::jsonb,
      $j84ihd5en$[]$j84ihd5en$::jsonb
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
      'SPVH', 'SPMH',
      $j52cgcxo2$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に高強度の目標に挑戦する側では、運動のあらゆる構成要素が一致しています。共に孤独を愛し、緻密な計画に基づき、高い目標に向かって自分を追い込むストイックな姿勢を共有しています。互いの自律性を最大限に尊重し、沈黙の中で互いの限界に挑む姿を見せ合うことが、最も強力なモチベーションの源泉となります。"}]$j52cgcxo2$::jsonb,
      $j2e9qii3q$[{"t":"p","text":"言葉によるコミュニケーションを最小限に抑え、同じ空間で互いに限界に挑む姿を視認し合う「サイレント・セッション」が最も効果的です。互いの集中力を削ぐことなく、存在そのものを強力なライバルかつ理解者として認識することで、一人では到達できない高みを目指せます。"},{"t":"p","text":"計画の立案やデータの分析において、高度に専門的な情報交換を行うことが推奨されます。最新のトレーニング理論やサプリメント、リカバリー手法などについて客観的なデータに基づき議論することで、互いのパフォーマンス向上に直接的に寄与し合えます。"},{"t":"p","text":"互いの独立性を神聖なものとして扱い、トレーニング中の干渉を一切行わないという暗黙の了解を徹底することが重要です。適度な距離感を保ちながら、数値的な成果を競い合うことで、ストイックな者同士にしか分からない深い信頼関係を構築できます。"}]$j2e9qii3q$::jsonb,
      $js1hezaps$[{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"},{"t":"p","text":"一方が自身の計画や手法の絶対性を主張し、相手のやり方を否定し始めると、深刻な対立が生じます。自律的な追求を重んじる者同士にとって、手法への介入は自己の尊厳を脅かす行為として認識され、修復不可能な断絶を招きます。"},{"t":"p","text":"トレーニング以外の日常的な社交を過度に求められると、ストイックな側は集中力を削がれることに強い不快感を示します。運動を純粋な自己更新の場として聖域化している認識にズレが生じることが、関係性を損なう決定的な要因となります。"}]$js1hezaps$::jsonb,
      $jamfsy149$[]$jamfsy149$::jsonb
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
      'SPVH', 'SPVC',
      $juuo7db4r$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に理想のルーティンを追求する側では、一人で活動するという形態や計画性、なりたい姿を目指す姿勢が共通しています。しかし、強度の設定において差異があるため、一緒に動く際は「自己超越」か「完成度」のどちらを優先するかで温度差が生じます。互いの計画の厳格さを認め合い、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$juuo7db4r$::jsonb,
      $jsczxowln$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法やルーティンの構築について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"一方は自己の限界突破を、もう一方は理想的な動作の反復を重視するという、アプローチの違いを明確にすることが重要です。互いの専門性を認め合い、異なる次元での自己超越を目指すパートナーとして尊重し合うことで、良好な関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jsczxowln$::jsonb,
      $jn72d6jf2$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、完成度を重視する側は自身のルーティンを乱されることに強いストレスを感じます。強度の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻な対立を招きます。"},{"t":"p","text":"理想の動作やルーティンの完璧さを相手にも求めると、自己超越を優先する側は、その細かさに苛立ちを感じます。完璧主義の押し付けは、自己超越を目指す側の勢いを削ぐ不純物として認識され、関係性を損なう要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$jn72d6jf2$::jsonb,
      $j6k00tkzx$[]$j6k00tkzx$::jsonb
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
      'GFMC', 'GFMH',
      $j51ddncpd$[{"t":"p","text":"複数人、気分、ありたいという三つの軸を共有する両者は、その場のノリや仲間との一体感を推進力とする点で深く共鳴します。しかし、運動の最終的な着地点において、身体を整えることを重視する側と、能力を高めることを重視する側で明確な温度差が生じます。一方がその場の楽しい空気や会話そのものを目的とするのに対し、もう一方はイベントや大会といった非日常の熱量や達成感を求めます。このため、日常的な活動では波長が合うものの、いざ目標を設定する場面になると、一方は重苦しさを感じ、もう一方は物足りなさを覚えるという構造的なすれ違いを内包しています。"}]$j51ddncpd$::jsonb,
      $jkbn5sc4h$[{"t":"p","text":"日常的な運動の場作りを整える側が担い、非日常のスパイスとなるイベントの提案を高める側が担当するという役割分担を明確にすることで、互いの強みを活かした活動が継続できます。"},{"t":"p","text":"大会やイベントに参加する際は、記録や順位を追うのではなく、お祭り騒ぎそのものを楽しむファンランのような形式を選ぶことで、両者のモチベーションが一致しやすくなります。"},{"t":"p","text":"運動の目的を事前にすり合わせ、今日は会話を楽しむ日なのか、少しだけ息を上げる日なのかを明確にしておくことで、活動中の不完全燃焼感や過度な疲労を防ぐことができます。"}]$jkbn5sc4h$::jsonb,
      $jxjv0mzy7$[{"t":"p","text":"高める側が良かれと思って設定した高い目標や練習メニューが、整える側にとってはプレッシャーとなり、運動そのものへの心理的ハードルを上げてしまう原因となります。"},{"t":"p","text":"整える側が提案するゆるやかな活動ばかりが続くと、高める側は身体的な達成感を得られず、次第にその場にいることの意義を見失ってしまいます。"},{"t":"p","text":"運動後の振り返りにおいて、一方が楽しかったという感情面を強調するのに対し、もう一方が何キロ走ったかという成果面を強調することで、互いの価値観を否定されたような錯覚に陥りやすくなります。"}]$jxjv0mzy7$::jsonb,
      $jm5gunqsp$[]$jm5gunqsp$::jsonb
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
      'GFMC', 'GFVC',
      $jzh05y1ns$[{"t":"p","text":"複数人、気分、整えるという三つの軸を共有し、穏やかな環境で他者と交流しながら運動を楽しむという基本姿勢が一致しています。ありたい軸を持つ側が場を明るく盛り上げ、なりたい軸を持つ側が周囲の感情に寄り添いながら場の安全を担保するという補完関係が築きやすいペアです。ただし、なりたい軸を持つ側は環境のノイズや大人数での活動に精神的な疲労を感じやすいため、場の規模感や参加者の顔ぶれに対する配慮が、運動継続の鍵となります。"}]$jzh05y1ns$::jsonb,
      $jfjrempja$[{"t":"p","text":"ありたい側が参加しやすい雰囲気を作り、なりたい側が参加者の心理的なフォローを行うという自然な役割分担を意識することで、居心地の良い運動コミュニティを形成できます。"},{"t":"p","text":"ヨガやウォーキングなど、会話の有無を強制されない適度な距離感を保てる種目を選ぶことで、双方が精神的な負担を感じずに同じ空間で体を動かすことができます。"},{"t":"p","text":"参加者の顔ぶれが固定された少人数のグループ活動を基本とし、新しい人を招く際は事前に情報を共有することで、なりたい側の心理的ハードルを下げることができます。"}]$jfjrempja$::jsonb,
      $jldziipal$[{"t":"p","text":"ありたい側が良かれと思って大人数の賑やかな場を設定すると、なりたい側は居場所を見失い、運動そのものよりも対人関係で精神的に消耗してしまいます。"},{"t":"p","text":"なりたい側が体調や気分の波で静かに過ごしたい時に、ありたい側が過剰に気を使ったり盛り上げようとしたりすることで、かえって相手に罪悪感やプレッシャーを与えてしまいます。"},{"t":"p","text":"活動の規模を拡大して多くの人を巻き込みたい側と、現在の親密な関係性を維持して静かに整えたい側との間で、活動の方向性を巡る温度差が表面化しやすくなります。"}]$jldziipal$::jsonb,
      $jx5cyl9zf$[]$jx5cyl9zf$::jsonb
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
      'GFMC', 'GFVH',
      $juqxbk1db$[{"t":"p","text":"複数人と気分という二つの軸を共有し、その場の思いつきで仲間と集まること自体には抵抗がありません。しかし、ありたい軸と整える軸を持つ側が穏やかな交流を求めるのに対し、なりたい軸と高める軸を持つ側は周囲の熱量に感化されながら限界まで追い込むことを求めます。このため、運動の強度と精神的な没入度において大きな隔たりが存在します。一方は会話を楽しみながらリラックスした状態で体を動かしたいと考え、もう一方は会話を遮断してでも運動そのものに没頭したいと考えるため、同じ空間にいても見ている景色が異なります。"}]$juqxbk1db$::jsonb,
      $jdvidewcw$[{"t":"p","text":"運動の場を共有しつつも、それぞれの目的に応じて活動内容を分離し、一方がハードなトレーニングを行う間、もう一方は軽い運動やサポートに回るなどの工夫が求められます。"},{"t":"p","text":"グループワークアウトやクロスフィットなど、環境自体に高い熱量がありながら、個人のペースで強度を調整できるプログラムを選ぶことで、双方の欲求を同じ場所で満たしやすくなります。"},{"t":"p","text":"運動後の食事や休憩時間をコミュニケーションのメインとし、運動中は互いのペースに干渉しないという明確なルールを設けることで、ストレスなく関係を維持できます。"}]$jdvidewcw$::jsonb,
      $ju4voopeo$[{"t":"p","text":"高める側が場の空気に感化されてハードなメニューを提案した際、整える側がそれに応じないことで、高める側のモチベーション低下や整える側の疲弊が生じやすくなります。"},{"t":"p","text":"なりたい側が気分の落ち込みで参加を見送った際、ありたい側が軽く誘いすぎることで、相手にプレッシャーや罪悪感を与え、運動そのものへの嫌悪感を抱かせてしまいます。"},{"t":"p","text":"運動中の会話の多さや真剣さの度合いについて、一方が不真面目だと感じ、もう一方が重苦しいと感じることで、互いの運動価値観に対する不信感が募りやすくなります。"}]$ju4voopeo$::jsonb,
      $jzx9t9swf$[]$jzx9t9swf$::jsonb
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
      'GFMC', 'GPMC',
      $jybe7l1eh$[{"t":"p","text":"複数人、ありたい、整えるという三つの軸を共有し、穏やかで心理的安全性の高いグループ活動を好む点で一致しています。しかし、気分軸と計画軸の違いが、活動への参加スタイルやコミュニティへの帰属意識に対する明確な温度差を生み出します。気分軸を持つ側がその日の思いつきやノリで参加を決めるのに対し、計画軸を持つ側は決められた日時や場所での継続的な活動に重きを置きます。このため、一方は柔軟性を求め、もう一方は規律を求めるという形で、運営方針や参加姿勢に対する摩擦が生じやすくなります。"}]$jybe7l1eh$::jsonb,
      $jnjfs9c2k$[{"t":"p","text":"計画側がコミュニティの土台となる定例活動を維持し、気分側がそこに新しい風を吹き込むゲストとして参加するという役割分担を明確にすることで、安定と活気を両立できます。"},{"t":"p","text":"毎回の参加を義務付けず、月に一度の体験会や特別なイベントの時だけ気分側が参加するなど、関わりのグラデーションを許容するコミュニティ設計が求められます。"},{"t":"p","text":"活動内容の変更や欠席の連絡に関するルールを事前に明確にしておくことで、計画側の不安を軽減し、気分側の自由度を確保しながら円滑な運営が可能になります。"}]$jnjfs9c2k$::jsonb,
      $j49c801a8$[{"t":"p","text":"気分側の直前でのキャンセルや遅刻が、計画側にとってはコミュニティの規律を乱す行為として映り、運動の場における信頼関係の構築を阻害する原因となります。"},{"t":"p","text":"計画側が提案する厳密なスケジュールや出欠確認が、気分側にとっては息苦しい束縛と感じられ、運動そのものへの参加意欲を削いでしまう結果を招きます。"},{"t":"p","text":"新しい試みや突発的なイベントを提案する側と、従来のやり方を守り継続することを重視する側との間で、コミュニティの方向性を巡る意見の対立が避けられません。"}]$j49c801a8$::jsonb,
      $jqbsp820c$[]$jqbsp820c$::jsonb
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
      'GFMC', 'GPMH',
      $j5pf5zbby$[{"t":"p","text":"複数人とありたいという二つの軸を共有し、チームで活動すること自体には価値を見出しています。しかし、気分軸と整える軸を持つ側がその場の楽しさや交流を目的とするのに対し、計画軸と高める軸を持つ側は明確な目標達成や記録の向上を目的とします。このため、同じチームに所属していても、運動に対する真剣度やコミットメントの度合いにおいて決定的な乖離が生じます。一方はプロセスを重んじ、もう一方は結果を重んじるため、活動の評価基準が根本から異なります。"}]$j5pf5zbby$::jsonb,
      $ja3gl1ojv$[{"t":"p","text":"目標達成に向けた綿密な計画や練習メニューの作成は計画側が担当し、チーム内の雰囲気作りやメンバーのメンタルケアは気分側が担当するという役割分担を徹底します。"},{"t":"p","text":"リレーマラソンやチーム対抗戦など、個人の能力差や参加の度合いを吸収できる形式のイベントを選ぶことで、双方がそれぞれの形でチームに貢献する喜びを感じられます。"},{"t":"p","text":"運動の成果を記録や順位だけでなく、参加者の笑顔やチームの団結力といった定性的な側面からも評価する機会を設けることで、互いの価値観を尊重し合える関係を築けます。"}]$ja3gl1ojv$::jsonb,
      $j48zcb10n$[{"t":"p","text":"計画側が設定した厳しい練習スケジュールや目標が、気分側にとっては過度なプレッシャーとなり、運動そのものの楽しさを奪い、継続を困難にさせます。"},{"t":"p","text":"気分側が提案するレクリエーション要素の強い活動が、計画側にとっては目標達成への遠回りや時間の無駄と感じられ、チーム内での不満が蓄積する原因となります。"},{"t":"p","text":"大会や試合の結果に対する受け止め方が異なり、一方が悔しさを露わにする一方で、もう一方が楽しかったから良いと楽観視することで、感情的な溝が深まりやすくなります。"}]$j48zcb10n$::jsonb,
      $jtvvmyba0$[]$jtvvmyba0$::jsonb
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
      'GFMC', 'GPVC',
      $j9tbm69bp$[{"t":"p","text":"複数人と整えるという二つの軸を共有し、過度な負荷を避けながらグループで穏やかに活動するという点では一致しています。しかし、気分軸とありたい軸を持つ側が流動的で自由な関わりを好むのに対し、計画軸となりたい軸を持つ側は決まった予定や約束を遵守することに強い安心感を覚えます。このため、予定の変更や欠席に対する心理的なハードルに大きな差が生じます。一方が気軽なコミュニケーションを求めても、もう一方はそれを義務や負担として重く受け止めてしまう傾向があります。"}]$j9tbm69bp$::jsonb,
      $ji4xx1d5w$[{"t":"p","text":"計画側が安心できる固定のスケジュールを基本としつつ、気分側が参加を強制されない自由枠を設けることで、双方の運動ニーズを両立させることができます。"},{"t":"p","text":"活動への出欠確認や連絡事項は、なりたい側がプレッシャーを感じないよう、事務的かつ明確なルールに基づいて行うことで、心理的な安全性を確保します。"},{"t":"p","text":"ウォーキングやヨガなど、開始と終了の時間が明確でありながら、活動中のコミュニケーションの密度を自由に調整できる種目を選ぶことで、互いのペースを守りやすくなります。"}]$ji4xx1d5w$::jsonb,
      $jnr4w28kr$[{"t":"p","text":"気分側の思いつきによる予定変更や遅刻が、計画側にとっては約束を軽視されたと感じられ、運動の場における信頼関係を著しく損なう原因となります。"},{"t":"p","text":"なりたい側が体調不良などで欠席した際、ありたい側が軽く気遣う言葉をかけることが、かえって相手に申し訳なさや罪悪感を抱かせ、次回の参加を躊躇させてしまいます。"},{"t":"p","text":"活動の場において、一方が賑やかな交流を求める一方で、もう一方が静かに過ごしたいと考えるため、場の空気感に対する期待値がすれ違い、不全感が生じやすくなります。"}]$jnr4w28kr$::jsonb,
      $j1hxqva58$[]$j1hxqva58$::jsonb
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
      'GFMC', 'GPVH',
      $jszhgz5vf$[{"t":"p","text":"複数人という一つの軸のみを共有し、チームやグループで活動することへの志向性だけが共通しています。気分、ありたい、整えるという軸を持つ側が、その場の楽しさや心理的な余裕を重視するのに対し、計画、なりたい、高めるという軸を持つ側は、明確な目標に向けた自己研鑽とチームへの献身を重視します。このため、運動に対する根本的なスタンスが真っ向から対立します。一方は遊びの延長として捉え、もう一方は真剣勝負として捉えるため、同じ活動を共有すること自体が困難な場合が多いです。"}]$jszhgz5vf$::jsonb,
      $jtwys1lk5$[{"t":"p","text":"運動そのものを一緒に行うのではなく、一方が競技者として参加し、もう一方が応援やサポートに回るというように、関わり方のレイヤーを完全に分離することが効果的です。"},{"t":"p","text":"チームスポーツにおいては、高める側がキャプテンとしてチームを牽引し、整える側が広報やムードメーカーとしてチームの雰囲気を和らげるという分業体制を明確にします。"},{"t":"p","text":"活動の前後でのみ時間を共有し、運動中はそれぞれの目的や強度に合わせて別々に行動することで、互いの運動価値観を侵食せずに良好な関係を維持できます。"}]$jtwys1lk5$::jsonb,
      $javacfa7v$[{"t":"p","text":"高める側がチーム全体に求める高い基準や規律が、整える側にとっては息苦しい強制となり、運動そのものへの嫌悪感やチームからの離脱を招く原因となります。"},{"t":"p","text":"整える側の示すリラックスした態度や柔軟な参加姿勢が、高める側にとっては不真面目さやチームへの忠誠心の欠如として映り、激しい非難や対立が生じやすくなります。"},{"t":"p","text":"運動の目的や評価基準が根本的に異なるため、活動内容の決定や振り返りの場面で常に意見が対立し、建設的なトレーニングの実施が困難になります。"}]$javacfa7v$::jsonb,
      $jkjvk3vvb$[]$jkjvk3vvb$::jsonb
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
      'GFMC', 'SFMC',
      $jlppjwg4p$[{"t":"p","text":"気分、ありたい、整えるという三つの軸を共有し、計画や目標に縛られず、その日の感覚に従って穏やかに動くという運動スタイルが完全に一致しています。唯一の相違点は、複数人軸と一人軸の違いであり、誰かと一緒にいることでエネルギーを得るか、一人でいることで自由を感じるかという点に集約されます。このため、運動のペースや強度は合うものの、参加の形態に対する期待値が異なります。一方がグループでの一体感を求めて誘いをかけると、もう一方はそれを束縛と感じて距離を置きたくなるという繊細なバランスの上になり立っています。"}]$jlppjwg4p$::jsonb,
      $jynrnp388$[{"t":"p","text":"一緒に運動する際も、常に一緒に行動するのではなく、途中で合流したり解散したりできる自由度を持たせることで、一人側の心理的負担を軽減できます。"},{"t":"p","text":"散歩やサイクリングなど、事前の準備や厳密な計画を必要とせず、その場の思いつきで始められる種目を選ぶことで、両者の気分軸を同時に満たしやすくなります。"},{"t":"p","text":"誘う側は断られても全く気にしないというスタンスを明確に伝え、誘われる側は自分のペースを崩さずに参加できる範囲で応じるという、適度な距離感を保つことが重要です。"}]$jynrnp388$::jsonb,
      $jj8j42jw2$[{"t":"p","text":"複数人側が良かれと思って頻繁に誘いをかけたり、グループの輪に入れようとしたりすることが、一人側にとっては強いプレッシャーとなり、運動そのものへの忌避感を生みます。"},{"t":"p","text":"一人側が自分のペースを優先して単独行動をとった際、複数人側が疎外感や寂しさを感じ、相手の行動を冷たいと誤解して感情的なしこりが残りやすくなります。"},{"t":"p","text":"活動中の会話の量や物理的な距離感について、一方がもっと親密になりたいと考える一方で、もう一方が静かに自分の世界に浸りたいと考えるため、無言の緊張感が生まれやすくなります。"}]$jj8j42jw2$::jsonb,
      $jn21zad1d$[]$jn21zad1d$::jsonb
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
      'GFMC', 'SFMH',
      $jf3ti6051$[{"t":"p","text":"気分とありたいという二つの軸を共有し、義務感やプレッシャーに縛られず、自分の直感に従って行動する点では波長が合います。しかし、複数人と整える軸を持つ側が仲間との穏やかな時間を求めるのに対し、一人と高める軸を持つ側は単独で限界に挑戦する非日常の体験を求めます。このため、運動の強度と参加形態において大きなギャップが存在します。一方は会話を楽しみながらリラックスしたいと考え、もう一方は自分自身と向き合いながら全力を出し切りたいと考えるため、同じ空間を共有することが難しくなります。"}]$jf3ti6051$::jsonb,
      $jevyhy92r$[{"t":"p","text":"登山やトレイルランニングなど、同じフィールドにいながらも各自のペースで行動でき、特定のポイントでのみ合流するような活動形態を選ぶことが最も適しています。"},{"t":"p","text":"運動中は互いのペースや領域に干渉せず、完全に独立して行動することを前提とし、運動後の食事や休憩時間でのみ体験を共有するというメリハリをつけます。"},{"t":"p","text":"高める側がハードな挑戦をしている間、整える側は周辺の散策や軽い運動を楽しむなど、同じ目的地で異なる活動を行うことで、双方の満足度を最大化できます。"}]$jevyhy92r$::jsonb,
      $j6xdbcnp5$[{"t":"p","text":"複数人側が一緒に行動することを強要したり、ペースを合わせようとしたりすると、一人側は自分の集中を乱されたと感じ、運動そのものへのモチベーションを著しく低下させます。"},{"t":"p","text":"高める側が突発的に激しい運動を始めた際、整える側がそれに巻き込まれることで、過度な疲労や怪我のリスクが生じ、運動が苦痛な体験として記憶されてしまいます。"},{"t":"p","text":"活動の目的が根本的に異なるため、一方が仲間との思い出を語る一方で、もう一方が自身の記録や達成感のみを語ることで、互いの運動体験が交わらない虚しさを感じやすくなります。"}]$j6xdbcnp5$::jsonb,
      $jns0lupaw$[]$jns0lupaw$::jsonb
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
      'GFMC', 'SFVC',
      $jevjr7rfs$[{"t":"p","text":"気分と整えるという二つの軸を共有し、計画に縛られず、心身の回復を目的とした穏やかな運動を好む点では一致しています。しかし、複数人とありたい軸を持つ側が外部との交流によってエネルギーを得るのに対し、一人となりたい軸を持つ側は内部の感情と向き合い、静かな環境で心を落ち着かせることを求めます。このため、運動環境のノイズレベルに対する許容度に大きな差があり、一方が賑やかな場を楽しいと感じる一方で、もう一方はそれを精神的な苦痛と感じてしまいます。"}]$jevjr7rfs$::jsonb,
      $j23eyzy9y$[{"t":"p","text":"自然の中でのウォーキングや美術館巡りなど、会話を必要とせず、それぞれの内面的な体験を重視できる静かな環境を選ぶことが、双方の満足度を高める鍵となります。"},{"t":"p","text":"複数人側は、相手の静かに過ごしたいという欲求を尊重し、過度な声かけや盛り上げを控えることで、相手が安心して運動に集中できる空間を提供します。"},{"t":"p","text":"活動の開始時と終了時のみコミュニケーションを取り、運動中は適度な物理的・心理的距離を保てる種目を選ぶことで、互いのペースを乱さずに同じ時間を共有する工夫が求められます。"}]$j23eyzy9y$::jsonb,
      $jxz2j4466$[{"t":"p","text":"複数人側が良かれと思って大人数の集まりに誘ったり、賑やかな場を提供したりすることが、一人側にとっては耐え難い苦痛となり、運動そのものから遠ざかる原因となります。"},{"t":"p","text":"なりたい側が感情の波によって沈黙している際、ありたい側が無理に元気づけようとすることが、かえって相手にプレッシャーや罪悪感を与え、心理的負担を増大させます。"},{"t":"p","text":"活動中のコミュニケーションの密度に対する期待値が異なるため、一方がもっと話したいと不満を抱く一方で、もう一方が静かにしてほしいとストレスを感じる状況が頻発します。"}]$jxz2j4466$::jsonb,
      $j2qr4xpka$[]$j2qr4xpka$::jsonb
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
      'GFMC', 'SFVH',
      $jrk6zy0zp$[{"t":"p","text":"気分という一つの軸のみを共有し、その日の直感や思いつきで行動するという点だけが共通しています。複数人、ありたい、整えるという軸を持つ側が、仲間と楽しく穏やかに過ごすことを求めるのに対し、一人、なりたい、高めるという軸を持つ側は、単独で己の限界に挑み、感情の起伏を伴う激しい体験を求めます。このため、運動に対する価値観や求める環境が完全に相反しており、同じ活動を共有することは互いにとって大きなストレスとなる可能性が高いです。"}]$jrk6zy0zp$::jsonb,
      $j55486ku1$[{"t":"p","text":"同じジムや施設を利用する場合でも、完全に別のエリアで異なるメニューを行い、互いの存在を認識しつつも一切干渉しないという距離感を保つことが最も現実的です。"},{"t":"p","text":"高める側が集中してトレーニングを行っている間、整える側はサポートや見学に徹するなど、運動の主体と客体を明確に分けることで、不必要な衝突を避けられます。"},{"t":"p","text":"運動に関する話題を共有する際は、互いのやり方を否定せず、全く異なるスポーツに取り組んでいるかのような前提で情報交換を行うことで、適度な関心を維持できます。"}]$j55486ku1$::jsonb,
      $jb5zbpvg7$[{"t":"p","text":"複数人側がグループでの活動や交流を強要すると、一人側は自分の集中領域を侵されたと感じ、運動そのものへの拒絶反応を示し、関係が悪化します。"},{"t":"p","text":"高める側が自身の高い基準やストイックな姿勢を相手にも求めると、整える側は過度なプレッシャーを感じ、運動を苦痛な義務として捉えるようになってしまいます。"},{"t":"p","text":"運動の目的や強度が根本的に異なるため、一緒に活動しようと試みること自体が、互いのペースを乱し、不満や疲労だけを残す結果に終わりやすくなります。"}]$jb5zbpvg7$::jsonb,
      $jy0lkr2lm$[]$jy0lkr2lm$::jsonb
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
      'GFMC', 'SPMC',
      $j8sfety86$[{"t":"p","text":"ありたいと整えるという二つの軸を共有し、過度な負荷を避け、自分らしいペースで運動を続けるという基本姿勢は一致しています。しかし、複数人と気分軸を持つ側が、誰かと一緒にその場のノリで動くことを好むのに対し、一人と計画軸を持つ側は、単独で決められたルーティンを淡々とこなすことに価値を見出します。このため、運動へのアプローチが即興的か計画的か、社交的か個人的かという点で対立構造を持ち、一方は変化を求め、もう一方は安定を求めます。"}]$j8sfety86$::jsonb,
      $jpg22bndj$[{"t":"p","text":"計画側が確立している日常のルーティンを尊重し、気分側がその一部（例えば最初や最後の5分間だけ）に合流するという限定的な関わり方を設定することで、双方が納得して活動できます。"},{"t":"p","text":"定期的な活動の中に、月に一度だけ気分側が企画する特別なイベント枠を設けることで、日常の安定と非日常の刺激をバランス良く取り入れ、運動のマンネリ化を防ぎます。"},{"t":"p","text":"互いの運動スタイルが異なることを前提とし、一緒に活動する際は、会話を楽しむ時間と黙々と運動する時間を明確に区切ることで、双方の欲求を適切に満たすことができます。"}]$jpg22bndj$::jsonb,
      $jmq5l5kwv$[{"t":"p","text":"気分側の突発的な誘いや予定変更が、計画側にとっては自身の神聖なトレーニングルーティンを破壊する行為として映り、運動継続の意欲を削ぐ原因となります。"},{"t":"p","text":"複数人側が常に誰かと一緒に活動しようとすることが、一人側にとっては自分の内省時間を奪われる束縛と感じられ、運動の場から距離を置くきっかけとなります。"},{"t":"p","text":"運動の継続に対する価値観が異なるため、一方が毎回新鮮な刺激を求める一方で、もう一方が同じことの繰り返しを求めることで、活動内容の決定において常に妥協を強いられます。"}]$jmq5l5kwv$::jsonb,
      $jb60e3myt$[]$jb60e3myt$::jsonb
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
      'GFMC', 'SPMH',
      $j9wl27i8k$[{"t":"p","text":"ありたいという一つの軸のみを共有しますが、運動に対する根本的なスタンスは大きく異なります。複数人、気分、整えるという軸を持つ側が、仲間との楽しい交流やリラックスした時間を目的とするのに対し、一人、計画、高めるという軸を持つ側は、単独での厳密なトレーニング計画と自己記録の更新を至上命題とします。このため、運動の場において求めるものが和やかな空気かストイックな成果かで二極化しており、同じ活動を共有することは互いの目的を阻害する結果になりやすいです。"}]$j9wl27i8k$::jsonb,
      $jd09odgx0$[{"t":"p","text":"マラソン大会などのイベントにおいて、一方が競技者として記録に挑み、もう一方がサポートや応援に回るというように、役割を完全に分離することで、同じ場を共有する満足度を高めます。"},{"t":"p","text":"同じ施設を利用する場合でも、トレーニングエリアとリラクゼーションエリアで活動場所を分け、運動後の休憩時間でのみ交流を持つという棲み分けを徹底します。"},{"t":"p","text":"互いの運動に対する価値観が異なることを理解し、相手のやり方に干渉せず、それぞれの成果（楽しかったことと記録が伸びたこと）を独立して称え合う姿勢を保ちます。"}]$jd09odgx0$::jsonb,
      $jtdwrqhwe$[{"t":"p","text":"複数人側がトレーニング中に話しかけたり交流を求めたりすることが、一人側にとっては極めて迷惑な妨害行為となり、運動への集中を妨げ、激しい反発を招きます。"},{"t":"p","text":"高める側の記録至上主義やストイックな態度が、整える側にとっては冷たく近寄りがたいものとして映り、運動を通じた心理的な距離が広がってしまいます。"},{"t":"p","text":"一緒に運動しようと試みた場合、ペースや強度が全く合わず、一方は過労に陥り、もう一方は不完全燃焼となるため、互いに不満と疲労だけが残る結果となります。"}]$jtdwrqhwe$::jsonb,
      $jkareea9u$[]$jkareea9u$::jsonb
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
      'GFMC', 'SPVC',
      $j44ep07ky$[{"t":"p","text":"整えるという一つの軸のみを共有し、過度な負荷を避けるという点だけが共通しています。複数人、気分、ありたいという軸を持つ側が、その場のノリで仲間と楽しく動くことを好むのに対し、一人、計画、なりたいという軸を持つ側は、単独で決められたルーティンを完璧にこなすことで精神的な安定を得ます。このため、運動に対するアプローチが柔軟な交流か厳格な自己管理かで完全に相反しており、一方の気軽な態度が、もう一方の繊細な秩序を脅かす危険性を孕んでいます。"}]$j44ep07ky$::jsonb,
      $jknzdq4mk$[{"t":"p","text":"計画側の厳格なトレーニングルーティンには一切干渉せず、そのルーティンが終了した後のリラックスタイムでのみ、気分側が交流を図るという時間的な棲み分けを徹底します。"},{"t":"p","text":"一緒に活動する場合は、開始時間、終了時間、活動内容を事前に詳細に決定し、気分側がその約束を厳守することで、計画側の心理的負担を取り除くことができます。"},{"t":"p","text":"ウォーキングやヨガなど、各自が自分のペースで身体を動かしつつ、必要に応じて適度な物理的距離を保てる種目を選ぶことで、互いの運動領域を侵さずに済みます。"}]$jknzdq4mk$::jsonb,
      $jq63diz7j$[{"t":"p","text":"気分側の遅刻や突然の予定変更が、計画側にとっては約束の不履行とトレーニング秩序の破壊として受け取られ、深い失望と運動継続への不信感をもたらします。"},{"t":"p","text":"複数人側が良かれと思って他の人を誘ったり、賑やかな場を作ったりすることが、一人側にとっては自身の安全な運動領域を侵される脅威となり、強いストレスを与えます。"},{"t":"p","text":"なりたい側がルーティンをこなせなかった際に感じる強い罪悪感を、ありたい側が軽く受け流すことで、感情的なすれ違いが生じ、運動を通じた孤立感が深まります。"}]$jq63diz7j$::jsonb,
      $jlt5v19wi$[]$jlt5v19wi$::jsonb
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
      'GFMC', 'SPVH',
      $jx3b94t38$[{"t":"p","text":"共有する軸が一つもなく、四つの軸すべてが対極にあるため、運動に対する価値観、目的、アプローチの全てが完全に相反しています。複数人、気分、ありたい、整えるという軸を持つ側が、仲間との楽しい交流やリラックスした時間を求めるのに対し、一人、計画、なりたい、高めるという軸を持つ側は、孤独な環境で厳密な計画に基づき、自己の限界を突破することを求めます。この両者が同じ運動を共有することは不可能に近く、交わることのない平行線を描く関係性です。"}]$jx3b94t38$::jsonb,
      $jwi11zecu$[{"t":"p","text":"運動の場を共有することは避け、互いに全く異なるスポーツや活動に取り組んでいることを前提として、運動以外の場面でのみ交流を持つことが最も現実的です。"},{"t":"p","text":"どうしても同じイベントに関わる場合は、一方が競技者として極限に挑み、もう一方が運営スタッフや応援者として場を盛り上げるという、完全に独立した役割を担います。"},{"t":"p","text":"互いの運動に対する姿勢や価値観が対極にあることを深く理解し、相手のやり方を尊重しつつも、決して自分のやり方を押し付けないという明確な境界線を引くことが重要です。"}]$jwi11zecu$::jsonb,
      $jyr5h8oh6$[{"t":"p","text":"複数人側が運動中に交流や楽しさを持ち込もうとすると、一人側は自身の集中と限界への挑戦を決定的に阻害されたと感じ、激しく反発し、運動継続が困難になります。"},{"t":"p","text":"高める側のストイックすぎる姿勢や計画への固執が、整える側にとっては理解不能な苦行として映り、運動を通じた共感や理解が一切生まれないまま疎遠になります。"},{"t":"p","text":"運動の目的や評価基準が全く異なるため、一緒に活動しようとする試み自体が、双方にとって多大なストレスと疲労をもたらし、関係性の破綻に直結する危険性が高いです。"}]$jyr5h8oh6$::jsonb,
      $j70chot86$[]$j70chot86$::jsonb
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
      'GFMH', 'GFMC',
      $j7tiaodmo$[{"t":"p","text":"複数人で気分に従い、ありたい状態を重視する点は共通していますが、運動の強度と目的に関する価値観が異なります。非日常的なイベントや高い負荷を通じて心身を高めることを追求する側と、日常的な交流の中で心地よく身体を整えることを優先する側では、活動に求める熱量に温度差が生じやすいです。双方が集団での活動を好むため始動はスムーズですが、一方が刺激を求め続ける一方で、もう一方が安定した現状維持を望むという、出力の方向性の違いを調整することが長期的な継続の鍵となります。"}]$j7tiaodmo$::jsonb,
      $jbnp8jzd0$[{"t":"p","text":"一方が大規模な大会や特別なイベントの情報を持ち込み、もう一方がその場における参加者同士の和やかな雰囲気作りを担うことで、互いの欲求を補完し合えます。"},{"t":"p","text":"運動の前後でその日の気分に合わせて活動内容を微調整できる余白を残しておくことで、事前の計画に縛られない自由な運動体験を共有できます。"},{"t":"p","text":"高める要素と整える要素を交互に取り入れたメニューを構成し、一方がリードする時間ともう一方がリラックスを促す時間を分けることで、双方の満足度を高められます。"}]$jbnp8jzd0$::jsonb,
      $jckz0rq2r$[{"t":"p","text":"一方が次々と高い目標や過酷なイベントへの参加を提案し続けると、整えることを重視する側は本来の目的である交流の楽しさを喪失し、心理的な負担を感じ始めます。"},{"t":"p","text":"逆に負荷の低い活動のみが繰り返されると、高める体験を燃料とする側は運動に対する手応えを感じられなくなり、活動から離脱する原因となります。"},{"t":"p","text":"活動の強度設定において、一方が良かれと思って行う鼓舞が、もう一方にとっては自身のペースを乱す過剰な干渉として受け取られ、不快感を生むことがあります。"}]$jckz0rq2r$::jsonb,
      $jhkx6ga1w$[]$jhkx6ga1w$::jsonb
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
      'GFMH', 'GFVC',
      $jiwv3rj81$[{"t":"p","text":"複数人で気分に従って動くという始動のパターンは共有していますが、運動環境に求める性質が大きく異なります。非日常的な熱量や高い負荷を追求する側と、見知った関係性の中で安心感を得ながら身体を整えることを望む側では、快適と感じる空間の条件が相反します。大規模で不確実性の高いイベントは一方にとっての活力となりますが、もう一方にとっては心理的な過負荷となりやすいです。環境に対する耐性と、運動を通じた自己変革の有無に関する認識の差を理解することが不可欠です。"}]$jiwv3rj81$::jsonb,
      $jnrcrrf1j$[{"t":"p","text":"参加者の顔ぶれが固定された安心できる環境を基盤としつつ、そこに適度な非日常感や新しい企画を取り入れることで、双方の欲求を同時に満たすことができます。"},{"t":"p","text":"運動の後に落ち着いて対話できる時間を設けることで、なりたい状態を重視する側が達成感や関係性の深まりを実感し、次回の参加意欲を高められます。"},{"t":"p","text":"一方が活動の枠組みや新しい種目を提案し、もう一方がその場における心理的な安全性を担保するという役割分担を行うことで、集団としての安定性が向上します。"}]$jnrcrrf1j$::jsonb,
      $jlzuhszex$[{"t":"p","text":"不特定多数が参加するような規模の大きなイベントに誘引すると、安心を重視する側は居場所を見失い、運動そのものへの拒絶反応を引き起こします。"},{"t":"p","text":"活動の強度を急激に引き上げようとする空気が形成されると、整えることを目的とする側は心理的な圧迫感を覚え、継続的な参加を回避するようになります。"},{"t":"p","text":"一方が良かれと思って行う鼓舞が、もう一方にとっては自身の現状を否定されているように感じられ、運動を通じたコミュニケーションに亀裂が生じることがあります。"}]$jlzuhszex$::jsonb,
      $jn2zlzrnu$[]$jn2zlzrnu$::jsonb
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
      'GFMH', 'GFVH',
      $jzueidgq0$[{"t":"p","text":"複数人で気分に従い、高めることを目指すという三つの要素を共有しており、活動における熱量の方向性が一致しやすいです。一方が外部のイベントという枠組みを用意し、もう一方がその場における熱狂を生み出すという相互補完的な関係が成立します。しかし、ありたい状態を保ちながら淡々と進める側と、なりたい状態に向けて感情の起伏を伴いながら自己変革を図る側との間で、活動に対する精神的な波の捉え方に違いが生じます。"}]$jzueidgq0$::jsonb,
      $jyiy6e35o$[{"t":"p","text":"一方が日程や場所といった活動の基盤を確保し、もう一方が当日のモチベーションや雰囲気を牽引することで、理想的な推進力が生まれます。"},{"t":"p","text":"互いに高い強度や目標を求める傾向があるため、活動の方向性について事前のすり合わせを最小限に抑えても、自然と足並みが揃いやすいです。"},{"t":"p","text":"一つのイベントの終了が次の活動への意欲に直結するサイクルを構築することで、途切れることなく継続的な運動習慣を維持できます。"}]$jyiy6e35o$::jsonb,
      $jnv6c7j97$[{"t":"p","text":"一方が予定通りに実行することを求めた際、もう一方がその日の内面的な状態を理由に参加を見送ると、状況の解釈に齟齬が生じやすいです。"},{"t":"p","text":"双方ともに活動の限界を設定する機能が弱いため、過度な追い込みが常態化し、結果として身体的な故障や精神的な燃え尽きを招く危険性があります。"},{"t":"p","text":"気分に従う特性が重なることで、事前の準備や安全確認が疎かになりやすく、現場での予期せぬトラブルに対処しきれない事態が発生し得ます。"}]$jnv6c7j97$::jsonb,
      $jp2qtr5u1$[]$jp2qtr5u1$::jsonb
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
      'GFMH', 'GPMC',
      $jcgqf6gvj$[{"t":"p","text":"複数人でありたい状態を重視し、コミュニティに価値を見出す姿勢は共有していますが、運動の継続方法と強度に関する価値観が異なります。外部のイベントや熱い体験を推進力とする側と、同じ場所で同じ時間を繰り返すことに意義を感じる側では、集団に求める機能が異なります。気分に従い高めることを望む側にとって、計画的で整えることを主眼とする反復活動は停滞に感じられやすいです。逆に、安定を求める側には、突発的な提案が秩序を乱す要因として映ります。"}]$jcgqf6gvj$::jsonb,
      $jt86i14hw$[{"t":"p","text":"日常的な反復活動を基盤として守りつつ、年間を通じて数回程度の特別なイベントを組み込むことで、双方の動機を共存させることができます。"},{"t":"p","text":"一方がコミュニティの安定的な運営を担い、もう一方がそこに適度な刺激をもたらすという役割分担を明確にすることで、組織全体の活力が向上します。"},{"t":"p","text":"互いの運動に対する価値観の違いを前提として受け入れることで、意見の相違が生じても関係性の悪化を防ぐ心理的な土台を形成できます。"}]$jt86i14hw$::jsonb,
      $jd5474j1c$[{"t":"p","text":"一方が突発的に新しい企画や変更を提案すると、計画と反復を重んじる側はそれをコミュニティの秩序を乱す行為として否定的に捉え、反発を生みます。"},{"t":"p","text":"継続そのものに価値を見出す側の姿勢を、もう一方が停滞や退屈と感じてしまうことで、活動に対する根本的なモチベーションの差が浮き彫りになります。"},{"t":"p","text":"一方が外部の刺激を求めて一時的に活動から離脱すると、もう一方はそれを集団への帰属意識の欠如と解釈し、相互の信頼関係が損なわれます。"}]$jd5474j1c$::jsonb,
      $jpvelw3br$[]$jpvelw3br$::jsonb
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
      'GFMH', 'GPMH',
      $jvl9m6lx6$[{"t":"p","text":"複数人でありたい状態を保ちながら高めることを目指すという三つの要素を共有しており、集団で高い熱量を持って目標に向かう姿勢が一致します。しかし、その目標へのアプローチにおいて、気分に従い柔軟に対応する側と、計画を重んじ着実に実行する側とで手法が異なります。外部のイベントを推進力とする側に対し、逆算された計画の遂行に価値を見出す側は、突発的な変更をノイズと捉えやすいです。熱量の高さは共通しているため、進め方の違いをいかに調整するかが関係性の鍵となります。"}]$jvl9m6lx6$::jsonb,
      $jt9k2bj6n$[{"t":"p","text":"一方が全体のスケジュールや目標達成に向けた道筋を設計し、もう一方が当日の雰囲気作りや参加者の動機付けを担うことで、互いの強みを活かした強力な推進力が生まれます。"},{"t":"p","text":"大会やイベントといった明確な外部目標を共有することで、計画を重んじる側の逆算思考と、気分に従う側のイベントへの熱量が自然に噛み合い、同じ方向へ進むことができます。"},{"t":"p","text":"計画の骨格は維持しつつも、その日の状況に応じた微調整の余地をあらかじめ組み込んでおくことで、双方にとってストレスの少ない柔軟な運営が可能となります。"}]$jt9k2bj6n$::jsonb,
      $j01y2a6rd$[{"t":"p","text":"一方がその場の思いつきで活動内容や参加者を変更しようとすると、もう一方は綿密に立てた計画が崩されることに強い不満を抱き、対立の原因となります。"},{"t":"p","text":"計画通りに進めることを過度に要求されると、気分に従って動きたい側は窮屈さを感じ、本来持っていた活動への熱量やモチベーションを急速に失ってしまいます。"},{"t":"p","text":"目標達成に向けた真剣さは同じであるにもかかわらず、アプローチの違いから互いに相手のやり方を非効率的または無責任だと誤認し、信頼関係を損なう危険性があります。"}]$j01y2a6rd$::jsonb,
      $j79ui4le1$[]$j79ui4le1$::jsonb
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
      'GFMH', 'GPVC',
      $j4vxdrrkz$[{"t":"p","text":"複数人で活動するという一点のみを共有し、他のすべての要素が相反します。外部の刺激を求め、気分に従って高めることを好む側と、固定された関係性の中で計画的に整えることを望む側では、活動の前提となる条件が合致しません。突発的な提案や不確実な状況は、計画と安心を重視する側にとって強いストレス要因となり、互いの行動原理が相手の阻害要因として機能しやすい構造を持ちます。"}]$j4vxdrrkz$::jsonb,
      $jl3k5ry0n$[{"t":"p","text":"定期的な活動という安定した枠組みを維持した上で、事前に合意された範囲内でのみ特別な要素を導入することで、双方の許容範囲を重ならせることができます。"},{"t":"p","text":"活動の名称や目的を明確に定義し、参加者に予測可能性を提供することで、計画を重視する側の心理的な障壁を下げ、参加を促す効果があります。"},{"t":"p","text":"参加者の顔ぶれを一定に保つことで、環境に対する安心感を担保しつつ、その内部での活動内容にのみ柔軟性を持たせるアプローチが有効です。"}]$jl3k5ry0n$::jsonb,
      $j2erl5pbh$[{"t":"p","text":"一方がその場の思いつきで参加者を増やしたり内容を変更したりすると、もう一方は事前の約束が反故にされたと感じ、強い不信感を抱きます。"},{"t":"p","text":"活動に対する気軽な姿勢が、なりたい状態を目指して真摯に取り組む側には、不誠実や責任感の欠如として映り、運動を通じた関係性の悪化を招きます。"},{"t":"p","text":"一方が体調や心理的な理由で参加を見送った際、もう一方がその理由を深く追求せずに流してしまうと、配慮が足りないという不満を生みます。"}]$j2erl5pbh$::jsonb,
      $jmu9tkgyl$[]$jmu9tkgyl$::jsonb
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
      'GFMH', 'GPVH',
      $j4rl6xi3n$[{"t":"p","text":"複数人で高めることを目的とする点は共通しており、集団で高い熱量を持って目標に向かう姿勢が一致しますが、その熱量の管理方法が異なります。気分に従いありたい状態を保つ側と、計画を重んじなりたい状態を目指して自己変革を図る側では、活動へのコミットメントの質が異なります。柔軟性を持ち失敗を引きずらない姿勢は、計画への献身を重視する側からは、時に真剣味の欠如として解釈され、信頼関係に影響を与えます。"}]$j4rl6xi3n$::jsonb,
      $jod58l28m$[{"t":"p","text":"一方が対外的な調整や新規参加者の動機付けを担い、もう一方が内部の計画策定や実行管理を担うことで、互いの特性を活かした強固な体制が構築できます。"},{"t":"p","text":"大会や試合といった明確な外部目標を設定することで、異なるアプローチを持つ両者の視線を自然と同じ方向へ収束させることが可能となります。"},{"t":"p","text":"高い目標を達成した際の充実感を共有することで、過程における手法の違いを乗り越え、運動を通じた相互の信頼関係を深めることができます。"}]$jod58l28m$::jsonb,
      $j6cddjkfu$[{"t":"p","text":"一方が柔軟に休息を取ったり参加を見送ったりする行動が、もう一方には集団の士気を低下させる怠慢な態度として厳しく評価されます。"},{"t":"p","text":"状況に応じた突発的な変更提案が、綿密な計画を拠り所とする側の心理的な安定を脅かし、運動の進行を妨げる強い反発を引き起こします。"},{"t":"p","text":"失敗に対する切り替えの早さが、深く反省し次につなげようとする側には、問題に向き合っていない軽薄な態度として映り、不信感を生みます。"}]$j6cddjkfu$::jsonb,
      $jc34r0f49$[]$jc34r0f49$::jsonb
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
      'GFMH', 'SFMC',
      $jcgs10msv$[{"t":"p","text":"気分に従い、ありたい状態を重視する点で、義務感に縛られず柔軟に行動できるという共通の基盤を持ちますが、運動に求める本質的な価値が異なります。複数人で高める体験を求める側と、一人で整える時間を優先する側では、活動の原動力が相反します。外部のイベントや他者との関わりを必要とするアプローチは、自己のペースと内面的な心地よさを守りたい側にとって、過度な干渉やプレッシャーとして作用します。"}]$jcgs10msv$::jsonb,
      $jye060s6t$[{"t":"p","text":"目的地や具体的な活動内容を厳密に定めず、互いに自由な選択の余地を残した状態でのみ行動を共にすることで、心理的な負担を最小限に抑えられます。"},{"t":"p","text":"事前の約束や計画に縛られず、その日の状況に応じて合流や解散が可能な流動的な関係性を保つことが、長期的な運動継続に寄与します。"},{"t":"p","text":"活動が想定通りに進まなかった場合でも、それを失敗と捉えずに受け流す寛容さを共有しているため、気楽な距離感を維持しやすいです。"}]$jye060s6t$::jsonb,
      $jrov00sm1$[{"t":"p","text":"一方が良かれと思って行う事前の申し込みや参加の確定が、もう一方にとっては自由を奪われる最大の重圧となり、運動そのものを回避させます。"},{"t":"p","text":"集団での一体感や高い熱量を共有しようとする空気が、個人のペースを重んじる側には同調圧力として働き、強い拒絶反応を引き起こします。"},{"t":"p","text":"活動の強度を上げようとする提案が、その日の気分や体調に合わせて穏やかに過ごしたいという欲求と対立し、活動の継続を困難にします。"}]$jrov00sm1$::jsonb,
      $jv17hftlu$[]$jv17hftlu$::jsonb
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
      'GFMH', 'SFMH',
      $jewwmi0im$[{"t":"p","text":"気分に従い、ありたい状態を保ちながら高めることを目指すという三つの要素が一致し、即興的かつ高い熱量で活動に取り組む姿勢が共鳴します。しかし、その熱量を複数人で共有するか、一人で探求するかという点において決定的な違いがあります。他者との関わりによって活力を得る側と、自己の内面的な限界に挑む側とが、それぞれの領域を侵食せずに並立できる環境を設計することが、運動体験の質を高める鍵となります。"}]$jewwmi0im$::jsonb,
      $jgx3uwsky$[{"t":"p","text":"開始と終了のタイミングのみを共有し、活動中のプロセスは互いに干渉せず独立して行うスタイルが、双方の欲求を最も高いレベルで満たします。"},{"t":"p","text":"一方が新しい領域や難易度の高い課題を開拓し、もう一方がそこに他者を巻き込むというサイクルを作ることで、活動の幅を広げられます。"},{"t":"p","text":"高い目標に向かって全力を尽くすという根本的な価値観が一致しているため、活動の強度に関する認識のずれが生じにくく、相互の尊敬を生みます。"}]$jgx3uwsky$::jsonb,
      $jhledy0y2$[{"t":"p","text":"一方が活動の場に次々と他者を招き入れると、もう一方は自身の集中すべき単独の時間が奪われていると感じ、運動への意欲を喪失します。"},{"t":"p","text":"双方が気分に従う特性を持つため、事前の情報収集や準備が不足したまま困難な状況に直面し、活動自体が破綻するリスクが高まります。"},{"t":"p","text":"活動中もコミュニケーションを求める側と、完全に自己の世界に没入したい側との間で、関わりの頻度に関する期待値が衝突します。"}]$jhledy0y2$::jsonb,
      $j04hmd7fh$[]$j04hmd7fh$::jsonb
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
      'GFMH', 'SFVC',
      $jxnuii8kh$[{"t":"p","text":"気分に従うという一点のみを共有し、他の要素はすべて対極に位置します。複数人で高める非日常的な体験を好む側と、一人で整える静かな時間を必要とする側では、活動環境に対する適性が根本的に異なります。ありたい状態を維持できる側が発する高いエネルギーは、なりたい状態を目指して感情の波を抱える側にとって、処理しきれない過剰な刺激となり、一方的な疲弊を招きます。"}]$jxnuii8kh$::jsonb,
      $j08f8aqlr$[{"t":"p","text":"事前の厳密な約束を避け、当日の状況次第で参加を見送ることも許容される緩やかな関係性を築くことで、心理的な障壁を取り除けます。"},{"t":"p","text":"会話や同調を強制せず、ただ同じ空間で各々のペースで過ごすことを認める環境であれば、異なる欲求を持つ両者でも時間を共有できます。"},{"t":"p","text":"高頻度での交流を求めず、互いの負担にならない範囲でのみ接点を持つことで、価値観の違いによる摩擦を回避しつつ関係を維持できます。"}]$j08f8aqlr$::jsonb,
      $jfkn4lv49$[{"t":"p","text":"一方が次々と新しい予定や活動を提案すると、もう一方はそのペースに適応できず、精神的な余裕を失い、運動習慣そのものを断念します。"},{"t":"p","text":"活動の強度を高めようとする意図が、心身の平穏を取り戻すことを目的としている側には、自身の状態を無視された要求として受け取られます。"},{"t":"p","text":"不特定多数が集まる環境へ誘い出す行為は、安全で静かな空間を必要とする側の心理的な拠り所を破壊し、強いストレスを与えます。"}]$jfkn4lv49$::jsonb,
      $jn6o70txi$[]$jn6o70txi$::jsonb
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
      'GFMH', 'SFVH',
      $j5vsc5ijf$[{"t":"p","text":"気分に従い高めることを求める点で、即興的に高いパフォーマンスを発揮する感覚を共有していますが、そのパフォーマンスを発揮する前提条件が異なります。他者の存在を原動力とする側に対し、自己の内部に集中することで限界を超える側は、他者の介入をノイズと見なします。ありたい状態を保つ側となりたい状態を目指す側とでは、運動を通じた自己評価の基準が異なるため、適切な距離感の維持が不可欠です。"}]$j5vsc5ijf$::jsonb,
      $j9a05l0h4$[{"t":"p","text":"同一の施設や環境を利用しつつも、互いの活動には一切干渉しないという明確なルールを設けることで、双方にとって最適な状態を両立できます。"},{"t":"p","text":"一方が活動の周辺環境の整備や対外的な役割を担い、もう一方が純粋に競技に集中するという、空間を共有しながらの完全な分業が機能します。"},{"t":"p","text":"内面的なスイッチが入った際の爆発的な集中力を互いに理解しているため、その瞬間には一切の介入を行わないという暗黙の了解を形成します。"}]$j9a05l0h4$::jsonb,
      $jifzo5ona$[{"t":"p","text":"一方が他者との交流や一体感を活動の場に持ち込むと、もう一方の深い集中状態が阻害され、パフォーマンスの低下と強い不満を引き起こします。"},{"t":"p","text":"内面的な状態が整わず沈黙している相手に対し、もう一方がそれを関係性の問題と誤認し、不要な介入を行うことで心理的な軋轢が生じます。"},{"t":"p","text":"活動終了後も余韻を共有したい側と、速やかに個人の時間に戻りたい側との間で、活動の区切りに対する認識の差がストレスを生みます。"}]$jifzo5ona$::jsonb,
      $j6by1dqtd$[]$j6by1dqtd$::jsonb
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
      'GFMH', 'SPMC',
      $jnv0yo3vk$[{"t":"p","text":"ありたい状態を重視するという一点のみが共通し、他の要素はすべて相反します。複数人で気分に従い高めることを求める側と、一人で計画的に整えることを重んじる側では、行動の原理が全く交わらない。外部の刺激や変化を活力とするアプローチは、日常の規則的な反復と静寂に価値を見出す側にとって、構築した秩序を破壊する脅威となる。互いの存在が相手の活動の阻害要因となりやすい、極めて難易度の高い関係性である。"}]$jnv0yo3vk$::jsonb,
      $jlc7nj6vt$[{"t":"p","text":"日常的な計画や習慣には一切介入せず、あらかじめ合意された極めて限定的な機会においてのみ活動を共有するという厳格な線引きが必要です。"},{"t":"p","text":"互いに自己の在り方を確立しているため、過度な期待や干渉を避け、表面的な違いを深刻に受け止めないドライな関係性を保つことが有効です。"},{"t":"p","text":"日常の延長線上にあり、事前の準備や強度の高い負荷を伴わない軽微な活動であれば、双方の領域を侵さずに接点を持つことが可能となります。"}]$jlc7nj6vt$::jsonb,
      $j2jjdmzj1$[{"t":"p","text":"一方が思いつきで提案する突発的な活動が、もう一方が精緻に構築した日常のルーティンを根本から崩すことになり、深刻な対立を招きます。"},{"t":"p","text":"変化や刺激がない状態を退屈と感じる側と、波風の立たない平穏な状態にこそ価値を見出す側とで、活動に対する評価が完全に二分されます。"},{"t":"p","text":"一方のペースに巻き込まれることで、もう一方はその後の計画や体調管理に支障をきたし、結果として関係性そのものを回避するようになります。"}]$j2jjdmzj1$::jsonb,
      $j6gplowxn$[]$j6gplowxn$::jsonb
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
      'GFMH', 'SPMH',
      $j6mxiv5xp$[{"t":"p","text":"ありたい状態を保ちながら高めることを目指す点で、心理的な余裕を持ちつつ高い目標に挑む姿勢が一致しますが、目標へ至るプロセスが対極にあります。他者との一体感や外部の熱量を推進力とする側に対し、綿密な計画と自己との対話によって記録を更新していく側は、他者の介入を必要としません。手法の違いを認め合い、運動を通じた成果の定義が異なることを認識する必要があります。"}]$j6mxiv5xp$::jsonb,
      $jmfekj2ex$[{"t":"p","text":"一方が活動の場を盛り上げ他者を巻き込む役割を担い、もう一方が個人の記録更新に専念するという、互いの領域を侵さない分業が極めて有効です。"},{"t":"p","text":"高い目標に向かって妥協せずに取り組むという根本的な姿勢が共通しているため、手法は違えど互いの努力に対する深い敬意を共有できます。"},{"t":"p","text":"意見やアプローチの違いが生じても、それを個人的な対立と受け取らずに合理的に処理できるため、建設的な運動環境を維持しやすいです。"}]$jmfekj2ex$::jsonb,
      $jq9yrcpgd$[{"t":"p","text":"一方がコミュニケーションや一体感を求めて頻繁に介入すると、もう一方は自身の計画的なトレーニングの進行が妨害されたと感じ、不満を募らせます。"},{"t":"p","text":"活動の成果を他者との共有体験に見出す側と、数値化された自己記録の更新に見出す側とで、活動終了後の達成感の基準が噛み合わない。"},{"t":"p","text":"その場の状況に応じて柔軟に計画を変更しようとする提案が、あらかじめ設定された手順を重んじる側の合理性と衝突し、進行の妨げとなる。"}]$jq9yrcpgd$::jsonb,
      $jczo5pbd8$[]$jczo5pbd8$::jsonb
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
      'GFMH', 'SPVC',
      $j4vru00wx$[{"t":"p","text":"四つの軸すべてが対極に位置する、最も共通項のない関係性です。複数人で気分に従い、ありたい状態を保ちながら高める側と、一人で計画的に、なりたい状態を目指して整える側では、運動に対する価値観、目的、手法のすべてが相反します。一方が良かれと思って行う変化や刺激の提供は、もう一方にとっては築き上げた秩序と安心を破壊する行為となり、接点を持つこと自体が相互の多大な消耗を招きます。"}]$j4vru00wx$::jsonb,
      $j9qfnh6ma$[{"t":"p","text":"日常的な活動領域を完全に分離し、年間計画に組み込めるレベルの極めて限定された機会においてのみ接点を持つという、厳格なルールの設定が不可欠です。"},{"t":"p","text":"計画を重んじる側のルーティンが完全に終了した後の短い時間のみを共有するなど、相手の秩序を一切脅かさない形式でのみ交流を図ります。"},{"t":"p","text":"互いの行動原理が全く異なることを前提とし、相手の領域に踏み込まない、あるいは理解を強要しないという不可侵条約を結ぶことが共存の唯一の道です。"}]$j9qfnh6ma$::jsonb,
      $j0fai13yh$[{"t":"p","text":"一方が発する突発的な誘いや変更の提案は、もう一方の計画性を根底から否定する行為として受け取られ、強い警戒心と拒絶を生みます。"},{"t":"p","text":"高い熱量や感情の起伏を伴う環境は、内面的な平穏と規則性を求める側の精神的なバランスを著しく崩し、長期的なストレス要因となります。"},{"t":"p","text":"一方が柔軟性や気軽さと捉えている行動が、もう一方には無責任や約束の軽視として映り、運動を通じた人間性に対する根本的な不信感へと発展します。"}]$j0fai13yh$::jsonb,
      $j1cprgyqq$[]$j1cprgyqq$::jsonb
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
      'GFMH', 'SPVH',
      $jyqaf6icp$[{"t":"p","text":"高めるという一点のみを共有し、他の三軸が相反します。高い目標に向かって全力を尽くすという方向性は一致していますが、その推進力が全く異なります。外部の熱量と他者の存在を必要とする側に対し、自己の計画と内面的な変革に集中する側は、他者の介入をノイズと見なします。共有できるのは全力を出した事実のみであり、運動を通じた自己変革の有無が関係性に影響を与えます。"}]$jyqaf6icp$::jsonb,
      $jfvdvblsq$[{"t":"p","text":"同じ目標や大会に参加する場合でも、一方は対外的な役割や盛り上げに徹し、もう一方は純粋な競技者として集中するという、完全な役割の分離が機能します。"},{"t":"p","text":"高い強度で自己を追い込むという感覚そのものは共有しているため、互いの領域に干渉さえしなければ、同じ空間でそれぞれの最大出力を引き出すことができます。"},{"t":"p","text":"内面的なスイッチが入った際の爆発的な集中力を互いに理解しているため、その瞬間には一切の介入を行わないという暗黙の了解を形成します。"}]$jfvdvblsq$::jsonb,
      $js56dg7zx$[{"t":"p","text":"一方が活動の記録や進捗の共有を求めると、もう一方は自身の内面的なプロセスに対する不当な介入と感じ、強い拒絶反応を示します。"},{"t":"p","text":"状況に応じた柔軟な対応や気楽な姿勢が、計画の完遂と自己変革に真摯に向き合う側の価値観と衝突し、取り組みに対する真剣さを疑われる原因となります。"},{"t":"p","text":"一方が他者を巻き込んで環境の熱量を高めようとする行為が、自己の内面に深く集中しようとする側の精神的な波を乱し、パフォーマンスを低下させます。"}]$js56dg7zx$::jsonb,
      $j0k6z2aqg$[]$j0k6z2aqg$::jsonb
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
      'GFVC', 'GFMC',
      $jxzfwdv27$[{"t":"p","text":"他者との交流を楽しみながらその日の感覚で心地よい運動を選択する点で深い共鳴を示します。場の空気を共有し、無理のない範囲で身体を動かすプロセス自体を目的とするため、自然な連帯感が生まれやすいです。一方で、感情の揺らぎに対する向き合い方に違いが存在します。前者が自身の内面状態に敏感に反応してペースを調整するのに対し、後者は常に一定の前向きな姿勢を保とうとする傾向があります。この精神的な感度の差が、互いの状態に対する解釈のズレを生む背景となります。"}]$jxzfwdv27$::jsonb,
      $j6sewf26t$[{"t":"p","text":"互いのペースを尊重しながら会話を楽しめるウォーキングや軽いヨガなど、身体的負荷よりもコミュニケーションに重きを置いた活動を選択することが望ましいです。"},{"t":"p","text":"活動の導入部分では、常に前向きな姿勢を持つ側が場を明るく牽引し、内面の状態に敏感な側がその日の全体のペースや雰囲気を調整するという役割分担が機能します。"},{"t":"p","text":"事前の計画を細かく設定せず、当日の双方のコンディションに応じて柔軟に内容を変更できる余白を残しておくことが重要です。"}]$j6sewf26t$::jsonb,
      $j16055m38$[{"t":"p","text":"内面の状態に敏感な側が疲労や気分の落ち込みを感じている際、常に前向きな姿勢を保つ側の変わらない明るさが、意図せず心理的な圧力として作用する場面が生じやすいです。"},{"t":"p","text":"交流を好むという共通点を持ちながらも、前者が気心の知れた少人数での深い繋がりを求めるのに対し、後者はより開かれた場や新しい参加者との交流を歓迎する傾向があります。"},{"t":"p","text":"その日の感覚で動くことを好むため、活動の終了条件や目的が曖昧になりやすく、一方が疲労を感じても言い出しにくい空気が形成されることがあります。"}]$j16055m38$::jsonb,
      $jgjgov793$[]$jgjgov793$::jsonb
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
      'GFVC', 'GFMH',
      $jkusc89ft$[{"t":"p","text":"他者と場を共有し、その日の感覚に従って動くという基盤は一致しているものの、運動の強度と内面への意識において明確な方向性の違いが見られます。前者が心身の調和と回復を目的とし、感情の波に寄り添うのに対し、後者は限界への挑戦や明確な達成感を求め、常に前向きなエネルギーを発散します。この現状維持と限界突破という相反する志向性が、同じ空間で活動する際のエネルギーレベルの不均衡を引き起こし、互いの運動体験に対する満足度に大きな差を生じさせます。"}]$jkusc89ft$::jsonb,
      $j9pxy90ns$[{"t":"p","text":"運動の目的や適正な負荷が異なるため、活動の前後にある準備や食事の時間のみを共有し、メインの運動自体は各自のペースで行う分離型の設計が最も効果的です。"},{"t":"p","text":"限界に挑む側が目標とするイベントにおいて、調和を求める側がサポートや応援といった後方支援の役割を担うことで、同じ場を共有しながらも互いの強みを発揮できます。"},{"t":"p","text":"当日の感覚で動くという共通点を活かし、事前の厳密なスケジュールに縛られず、その場の状況に合わせて柔軟に計画を変更する余白を残すことが重要です。"}]$j9pxy90ns$::jsonb,
      $juqcuehhy$[{"t":"p","text":"限界突破を目指す側が運動の強度を上げようと周囲を巻き込む行動が、調和を求める側にとっては過度な負担や強要として受け取られることが多いです。"},{"t":"p","text":"内面の揺らぎに敏感な側が体調の不安を表現した際、常に前向きな姿勢を保つ側がそれを一時的な事象として処理しようとすると、心理的な距離感が生まれます。"},{"t":"p","text":"他者との関わりを好むという共通点があるものの、限界に挑む側が場の熱量を高めようとする空気が、調和を求める側にとって居心地の悪さを感じさせる原因となります。"}]$juqcuehhy$::jsonb,
      $jq5pcjmbx$[]$jq5pcjmbx$::jsonb
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
      'GFVC', 'GFVH',
      $jp9i0enzw$[{"t":"p","text":"他者との関わりを求め、その日の感情状態に深く影響されながら即興的に動くという運動基盤を完全に共有しています。互いの精神的な揺らぎを言葉なしに察知し合える高い共感性を持つ一方で、運動の強度に対する方向性が対極にあります。前者が疲労時に活動を控えて心身を保護しようとするのに対し、後者は感情の高揚とともに限界を超えて自身を追い込もうとします。同じ感情の波を経験しながらも、それを静めるか燃やし尽くすかという対処法の違いが、活動における決定的な差異を生み出します。"}]$jp9i0enzw$::jsonb,
      $jffzrl8lq$[{"t":"p","text":"互いの内面状態に敏感であるという特性を活かし、その日のコンディションや気分の波を率率に伝え合う習慣を構築することが関係構築の第一歩となります。"},{"t":"p","text":"限界に挑む側が先行して負荷を高め、調和を求める側が自身のペースで後を追うような、強度に段階を設けられる活動が適しています。"},{"t":"p","text":"活動の終了ラインを事前に設定せず、その日の双方の感情状態に応じて柔軟に決定することが重要です。"}]$jffzrl8lq$::jsonb,
      $jvjx8uyqu$[{"t":"p","text":"限界に挑む側の感情が高ぶり、運動の強度をさらに上げようとするタイミングが、調和を求める側の疲労のピークと重なる場面が頻繁に発生します。"},{"t":"p","text":"内面の揺らぎを共有しやすいが故に、互いの感情の波がネガティブな方向に同調してしまう危険性があります。"},{"t":"p","text":"限界に挑む側は達成感や限界突破を求めるのに対し、調和を求める側は安心感や現状維持を求めます。"}]$jvjx8uyqu$::jsonb,
      $jnv0422i7$[]$jnv0422i7$::jsonb
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
      'GFVC', 'GPMC',
      $jvjrr4cy1$[{"t":"p","text":"他者と共に無理のない強度で運動を継続するという方向性においては一致しているものの、活動へのアプローチと感情の処理において明確な違いが存在します。前者がその日の状態に合わせて流動的に動き、内面の揺らぎに敏感であるのに対し、後者は事前に定めた枠組みを重視し、常に一定の精神状態を保ちながら計画を遂行しようとします。この流動性と計画性、感情への依存と独立という二つの対比が、同じ場で活動する際のペース配分やコミュニケーションにおいて複雑な相互作用を生み出します。"}]$jvjrr4cy1$::jsonb,
      $jjyy7v74c$[{"t":"p","text":"計画を重視する側が活動の日時や場所といった基本的な枠組みを設定し、その中で感覚を重視する側が当日の雰囲気や交流を担うという役割分担が有効です。"},{"t":"p","text":"定期的な活動の中に、感覚を重視する側が負担を感じずに参加できる自由度の高い枠を設けることが重要です。"},{"t":"p","text":"一定の精神状態を保つ側が感情の揺れに左右されない安定した場を提供することで、内面に敏感な側は安心してその場に参加できます。"}]$jjyy7v74c$::jsonb,
      $j6o9014fx$[{"t":"p","text":"感覚を重視する側の突発的な予定変更や遅刻が、計画を重視する側にとっては事前の約束や場の秩序を乱す行為として受け取られやすいです。"},{"t":"p","text":"内面に敏感な側が感情的な不調を理由に活動への参加をためらう際、一定の精神状態を保つ側がそれを理解できず、単なるモチベーションの欠如と捉えることがあります。"},{"t":"p","text":"計画を重視する側は決まったメニューを淡々とこなすことを好むのに対し、感覚を重視する側は変化や交流を求めます。"}]$j6o9014fx$::jsonb,
      $jazyqs3cd$[]$jazyqs3cd$::jsonb
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
      'GFVC', 'GPMH',
      $j5auaeu3b$[{"t":"p","text":"他者との関わりを持つという点でのみ共通していますが、運動に対する根本的なアプローチは完全に相反しています。前者がその日の感情状態に合わせて無理なく他者と過ごす時間を大切にするのに対し、後者は明確な目標を設定し、感情に左右されずに限界を超えていくことを重視します。この現状維持志向と目標達成志向の決定的な違いは、同じ場で活動する際に互いの存在意義や運動の価値観そのものを否定しかねないほどの強い摩擦を生む可能性を秘めています。"}]$j5auaeu3b$::jsonb,
      $j3tfl6ebq$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや運営の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"食事や観戦など、強度や計画性が問われない活動を通じて関係性を深めることが、互いの理解を促進する鍵となります。"}]$j3tfl6ebq$::jsonb,
      $jqxswotg2$[{"t":"p","text":"計画と限界突破を重視する側の目標達成に向けた厳しい要求やプレッシャーが、感覚と調和を重視する側にとっては過度な負担となり、運動そのものへの意欲を完全に喪失させる原因となります。"},{"t":"p","text":"内面に敏感な側が感情の波や体調不良を理由に計画を変更しようとする際、目標達成を重視する側はそれを障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"限界突破を目指す側は結果や数値を評価の基準とするのに対し、調和を求める側は参加すること自体や場の雰囲気を重視します。"}]$jqxswotg2$::jsonb,
      $jyu80zxpr$[]$jyu80zxpr$::jsonb
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
      'GFVC', 'GPVC',
      $j1it7kkxm$[{"t":"p","text":"他者と共に無理のない強度で活動し、互いの感情状態に敏感に寄り添うという運動基盤が一致しています。感情の波を共有し、安心できる場を構築する能力に長けている一方で、時間や約束に対するアプローチに違いが見られます。前者がその日の状態に合わせて流動的に動くことを好むのに対し、後者は事前に定められた枠組みやスケジュールがあることで安心感を得ます。この感覚的な自由さと計画的な規律の差をいかに調整するかが、関係性を安定させるための重要な課題となります。"}]$j1it7kkxm$::jsonb,
      $jdtnicvv7$[{"t":"p","text":"計画を重視する側が活動の日時や場所といった基本的な枠組みを事前に設定し、その中で感覚を重視する側が当日の具体的な内容やペースを提案するという役割分担が効果的です。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、互いのその日のコンディションや気分の波を事前に共有する習慣をつけることが重要です。"},{"t":"p","text":"定期的な活動の中に、感覚を重視する側が自由に選択できる余白を意図的に設けることで、計画性と流動性が矛盾なく両立します。"}]$jdtnicvv7$::jsonb,
      $j2zi2u4yc$[{"t":"p","text":"感覚を重視する側の突発的な予定変更や遅刻が、計画を重視する側にとっては事前の枠組みを崩される強いストレスとなります。"},{"t":"p","text":"計画を重視する側が定めたスケジュールを厳格に守ろうとする姿勢が、感覚を重視する側にとっては窮屈さや義務感として感じられることがあります。"},{"t":"p","text":"内面の状態に敏感であるが故に、予定変更に伴う互いの感情の揺れがネガティブに増幅しやすいです。"}]$j2zi2u4yc$::jsonb,
      $jj3lsohu4$[]$jj3lsohu4$::jsonb
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
      'GFVC', 'GPVH',
      $jciw8n9hr$[{"t":"p","text":"他者との関わりを重視し、感情状態が運動に深く影響するという点では共通していますが、計画性と運動強度において大きな対比が存在します。前者がその日の感情に従い、無理のない範囲で活動を維持しようとするのに対し、後者は感情の波を抱えながらも事前に定めた目標に向けて限界を超えようと努力します。同じ感情の揺れを経験しながらも、それを受け入れて立ち止まるか、乗り越えて前進するかという姿勢の違いが、活動の方向性を決定的に分かつ要因となります。"}]$jciw8n9hr$::jsonb,
      $j8s1a4tbt$[{"t":"p","text":"運動の強度や計画性に対するアプローチが異なるため、本格的なトレーニングや競技の時間は分離し、活動前後の交流や準備の時間のみを共有する設計が有効です。"},{"t":"p","text":"限界突破を目指す側が目標に向かって活動する際、調和を求める側がサポートや応援の役割を担うという分業体制を構築します。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、活動後の振り返りにおいて互いの感情や苦労を共有する時間を設けることが重要です。"}]$j8s1a4tbt$::jsonb,
      $jyw0bguy3$[{"t":"p","text":"限界突破と計画を重視する側の目標達成に向けた強い意志やプレッシャーが、調和と感覚を重視する側にとっては過度な負担となり、運動そのものへの意欲を喪失させる原因となります。"},{"t":"p","text":"感覚を重視する側が感情の波や体調不良を理由に計画を変更しようとする際、計画を重視する側はそれを目標への障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"限界突破を目指す側は結果や限界を超えることを評価の基準とするのに対し、調和を求める側は参加すること自体や場の雰囲気を重視します。"}]$jyw0bguy3$::jsonb,
      $jzvxuidir$[]$jzvxuidir$::jsonb
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
      'GFVC', 'SFMC',
      $jcs9b8vd6$[{"t":"p","text":"その日の状態に合わせて無理のない強度で流動的に活動するという運動スタイルにおいては一致していますが、他者との関わり方と感情の処理において対照的な特徴を持ちます。前者が他者との関わりを求め、感情の揺れを共有することで安心感を得ようとするのに対し、後者は他者の存在や感情の波に左右されず、自身のペースで淡々と活動することを好みます。この依存性と自立性、感情の共有と独立という違いを理解し、適度な距離感を保つことが関係構築の前提となります。"}]$jcs9b8vd6$::jsonb,
      $j4ielhwek$[{"t":"p","text":"独立性を重視する側の領域を尊重し、同じ空間にいながらも各自が別々の活動を行うという並行型の設計が有効です。"},{"t":"p","text":"感覚で動くという共通点を活かし、事前の厳密なスケジュールに縛られず、当日の状況に合わせて柔軟に活動内容を変更する余白を残すことが重要です。"},{"t":"p","text":"活動の終了後に短い交流の時間を設けることで、関わりを求める側のコミュニケーション欲求を満たしつつ、独立性を重視する側の負担を最小限に抑えることができます。"}]$j4ielhwek$::jsonb,
      $jc4kodz0f$[{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面に敏感な側が感情の揺れや体調不良の不安を表現した際、一定の精神状態を保つ側がそれを単なる一時的な事象として淡々と処理しようとすると、心理的なすれ違いが生まれます。"},{"t":"p","text":"独立性を重視する側が自身のペースを優先しすぎるあまり、関わりを求める側が取り残されたような孤独感や疎外感を抱くことがあります。"}]$jc4kodz0f$::jsonb,
      $jlqesnnsw$[]$jlqesnnsw$::jsonb
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
      'GFVC', 'SFMH',
      $jf5uktbd8$[{"t":"p","text":"事前の計画に縛られずその日の状態に合わせて流動的に動くという点でのみ一致していますが、その他の要素は完全に相反しています。前者が他者との関わりの中で安心感を求め、無理のない活動を好むのに対し、後者は他者や感情に左右されず、自身の限界への挑戦に集中します。この依存的で現状維持志向の姿勢と自立的な限界突破志向の根本的な違いは、同じ場で活動する際に互いの行動原理を理解できないほどの大きな断絶を生む可能性が高いです。"}]$jf5uktbd8$::jsonb,
      $jeowi8ctv$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや応援の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"感覚で動くという共通点を活かし、事前の厳密なスケジュールに縛られず、当日の状況に合わせて柔軟に活動内容を変更する余白を残すことが重要です。"}]$jeowi8ctv$::jsonb,
      $jbwz8pvi2$[{"t":"p","text":"限界突破を目指す側の目標達成に向けた強い意志やプレッシャーが、調和を求める側にとっては過度な負担となり、運動そのものへの意欲を完全に喪失させる原因となります。"},{"t":"p","text":"内面に敏感な側が感情の波や体調不良を理由に活動をためらう際、一定の精神状態を保つ側はそれを理解できず、単なるモチベーションの欠如と捉えることがあります。"},{"t":"p","text":"独立性を重視する側が自身のペースを優先しすぎるあまり、関わりを求める側が取り残されたような孤独感や疎外感を抱くことがあります。"}]$jbwz8pvi2$::jsonb,
      $jqi6ov00x$[]$jqi6ov00x$::jsonb
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
      'GFVC', 'SFVC',
      $ja41bnr1g$[{"t":"p","text":"その日の感情状態に深く影響されながら、無理のない強度で流動的に活動するという運動基盤が完全に一致しています。互いの精神的な揺らぎを察知し、心身の維持や回復を目的とする点でも共通していますが、他者への依存度に唯一の違いがあります。前者が他者との関わりの中で安心感を求めようとするのに対し、後者は自身の内面と向き合う静かな一人の時間を必要とします。この共有を求める姿勢と内省を求める姿勢の違いを調整することが、関係維持の鍵となります。"}]$ja41bnr1g$::jsonb,
      $jr7512yt6$[{"t":"p","text":"独立性を重視する側の静かな時間を尊重し、同じ空間にいながらも各自が別々の活動を行うという並行型の設計が有効です。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、互いのその日のコンディションや気分の波を率直に伝え合うことが関係構築の第一歩となります。"},{"t":"p","text":"活動の終了後に短い交流の時間を設けることで、関わりを求める側のコミュニケーション欲求を満たしつつ、独立性を重視する側の負担を最小限に抑えることができます。"}]$jr7512yt6$::jsonb,
      $js5v497nx$[{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面の揺らぎを共有しやすいが故に、互いの感情の波がネガティブな方向に同調してしまう危険性があります。"},{"t":"p","text":"独立性を重視する側が自身の内面に向き合いすぎるあまり、関わりを求める側が取り残されたような孤独感や疎外感を抱くことがあります。"}]$js5v497nx$::jsonb,
      $jt0cxxbr1$[]$jt0cxxbr1$::jsonb
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
      'GFVC', 'SFVH',
      $jf47iyyw6$[{"t":"p","text":"その日の感情状態に深く影響されながら流動的に活動するという点で共通していますが、他者との関わり方と運動強度において大きな対比を生みます。前者が他者との関わりの中で安心感を求め、無理のない活動を好むのに対し、後者は他者に依存せず自身の限界への挑戦に集中します。同じ感情の揺れを経験しながらも、それを受け入れて現状を維持しようとする姿勢と、乗り越えて限界に挑もうとする姿勢の違いが、活動における摩擦の火種となります。"}]$jf47iyyw6$::jsonb,
      $jfnrznbg8$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや応援の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、活動後の振り返りにおいて互いの感情や苦労を共有する時間を設けることが重要です。"}]$jfnrznbg8$::jsonb,
      $ju2c18qmc$[{"t":"p","text":"限界突破を目指す側の限界への挑戦に向けた強い意志やプレッシャーが、調和を求める側にとっては過度な負担となり、運動そのものへの意欲を喪失させる原因となります。"},{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面の揺らぎを共有しやすいが故に、互いの感情の波がネガティブな方向に同調してしまう危険性があります。"}]$ju2c18qmc$::jsonb,
      $jljtxvsnn$[]$jljtxvsnn$::jsonb
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
      'GFVC', 'SPMC',
      $jfnvp2gah$[{"t":"p","text":"無理のない強度で心身の維持や回復を目的とする点でのみ一致していますが、その他の要素は完全に対極にあります。前者が他者との関わりを求め、その日の感情状態に合わせて流動的に動くことを好むのに対し、後者は他者や感情に左右されず、事前に定めた枠組みの中で淡々と自身のペースを守ることを重視します。この依存的で流動的な姿勢と自立的で計画的な姿勢の根本的な違いは、同じ場で活動する際に大きな摩擦を生む可能性が高いです。"}]$jfnvp2gah$::jsonb,
      $j9t54xt9o$[{"t":"p","text":"計画を重視する側が活動の日時や場所といった基本的な枠組みを事前に設定し、その中で感覚を重視する側が当日の具体的な内容やペースを提案するという役割分担が効果的です。"},{"t":"p","text":"独立性を重視する側の領域を尊重し、同じ空間にいながらも各自が別々の活動を行うという並行型の設計が有効です。"},{"t":"p","text":"調和を求めるという共通点を活かし、互いに無理のない範囲で活動を継続することを目標とします。"}]$j9t54xt9o$::jsonb,
      $j5rtnzgtz$[{"t":"p","text":"感覚を重視する側の突発的な予定変更や遅刻が、計画を重視する側にとっては事前の枠組みを崩される強いストレスとなります。"},{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面に敏感な側が感情の波や体調不良を理由に活動をためらう際、一定の精神状態を保つ側はそれを理解できず、単なるモチベーションの欠如と捉えることがあります。"}]$j5rtnzgtz$::jsonb,
      $jvbb6rexq$[]$jvbb6rexq$::jsonb
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
      'GFVC', 'SPMH',
      $jxdn2hroh$[{"t":"p","text":"四つの軸すべてが対極にあり、運動に対する動機、スタイル、強度、関係性の求め方が完全に異なります。前者が他者との関わりの中で安心感を求め、その日の感情状態に合わせて無理のない活動を好むのに対し、後者は他者や感情に左右されず、事前に定めた目標に向けて限界を超えていくことを重視します。この依存的で現状維持志向の姿勢と自立的で目標志向の姿勢は、同じ場で活動する際に必ずと言っていいほど摩擦を生むため、接点を最小限に抑えることが不可欠です。"}]$jxdn2hroh$::jsonb,
      $j0sgx9ahc$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや応援の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"四つの軸すべてが異なるため、互いの運動哲学が対極にあることを前提とし、相手のスタイルを否定せずに尊重し合う姿勢が求められます。"}]$j0sgx9ahc$::jsonb,
      $j5kykierv$[{"t":"p","text":"計画と限界突破を重視する側の目標達成に向けた厳しい要求やプレッシャーが、感覚と調和を重視する側にとっては過度な負担となり、運動そのものへの意欲を完全に喪失させる原因となります。"},{"t":"p","text":"内面に敏感な側が感情の波や体調不良を理由に計画を変更しようとする際、一定の精神状態を保つ側はそれを目標への障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"}]$j5kykierv$::jsonb,
      $jdtw38d3i$[]$jdtw38d3i$::jsonb
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
      'GFVC', 'SPVC',
      $j3biajwhr$[{"t":"p","text":"感情状態に深く影響されながら、無理のない強度で心身の維持や回復を目的とする点で共通していますが、他者との関わり方と計画性において違いが見られます。前者が他者との関わりの中で安心感を求め、その日の状態に合わせて流動的に動くことを好むのに対し、後者は事前に定めた枠組みの中で自身の内面と向き合う静かな時間を必要とします。この依存的で流動的な姿勢と自立的で計画的な姿勢の違いを調整し、安定した枠組みの中に柔軟な選択肢を組み込むことが求められます。"}]$j3biajwhr$::jsonb,
      $jzp8ul4bk$[{"t":"p","text":"計画を重視する側が活動の日時や場所といった基本的な枠組みを事前に設定し、その中で感覚を重視する側が当日の具体的な内容やペースを提案するという役割分担が効果的です。"},{"t":"p","text":"独立性を重視する側の静かな時間を尊重し、同じ空間にいながらも各自が別々の活動を行うという並行型の設計が有効です。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、互いのその日のコンディションや気分の波を事前に共有する習慣をつけることが重要です。"}]$jzp8ul4bk$::jsonb,
      $jsd0195bj$[{"t":"p","text":"感覚を重視する側の突発的な予定変更や遅刻が、計画を重視する側にとっては事前の枠組みを崩される強いストレスとなります。"},{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面の状態に敏感であるが故に、予定変更に伴う互いの感情の揺れがネガティブに増幅しやすいです。"}]$jsd0195bj$::jsonb,
      $jf7if6kim$[]$jf7if6kim$::jsonb
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
      'GFVC', 'SPVH',
      $j5nb5g3u8$[{"t":"p","text":"感情状態が運動に深く影響するという点でのみ一致していますが、その他の要素は対極にあります。前者が他者との関わりの中で安心感を求め、その日の状態に合わせて無理のない活動を好むのに対し、後者は感情の波を抱えながらも事前に定めた目標に向けて限界を超えようと努力します。同じ感情の揺れを経験しながらも、それを受け入れて立ち止まるか、乗り越えて前進するかという姿勢の違いが、活動における摩擦の火種となります。"}]$j5nb5g3u8$::jsonb,
      $jbkunfqmt$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや応援の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、活動後の振り返りにおいて互いの感情や苦労を共有する時間を設けることが重要です。"}]$jbkunfqmt$::jsonb,
      $jlv2d92uw$[{"t":"p","text":"限界突破と計画を重視する側の目標達成に向けた強い意志やプレッシャーが、調和と感覚を重視する側にとっては過度な負担となり、運動そのものへの意欲を喪失させる原因となります。"},{"t":"p","text":"感覚を重視する側が感情の波や体調不良を理由に計画を変更しようとする際、計画を重視する側はそれを目標への障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"}]$jlv2d92uw$::jsonb,
      $jp687ydws$[]$jp687ydws$::jsonb
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
      'GFVH', 'GFMC',
      $jn4wwlr4b$[{"t":"p","text":"複数人と気分の性質を共有するため、集団の中でその場の流れに合わせて動くという基本的な運動スタイルは一致しています。しかし、熱狂伝道者が仲間の熱量に共鳴して能力を高める欲求を爆発させるのに対し、盛り上げ隊長は参加者全員が心地よく過ごせるよう環境を整えることを優先します。このため、熱狂伝道者が強度や一体感の頂点を求めても、盛り上げ隊長は一定の楽しさが確保された時点で満足してしまう傾向があります。"}]$jn4wwlr4b$::jsonb,
      $jy1twt7bu$[{"t":"p","text":"盛り上げ隊長が多様なメンバーを集めて参加しやすい空気を作り、熱狂伝道者がその集団の熱量を引き上げるという役割分担を意識すると、互いの持ち味が最大限に発揮されます。"},{"t":"p","text":"外部のイベントや大会など、あらかじめ高い熱量が担保されている環境に身を置くことで、熱狂伝道者の能力を高める欲求と盛り上げ隊長の開放的な気分が自然と同じ方向へ向かいやすくなります。"},{"t":"p","text":"運動の終了条件や強度のピークを事前にすり合わせておくことで、熱狂伝道者の不完全燃焼感と盛り上げ隊長の疲弊を防ぎ、双方が納得感を持って活動を終えることができます。"}]$jy1twt7bu$::jsonb,
      $jyyed695v$[{"t":"p","text":"熱狂伝道者が場の熱量にあてられて運動強度をさらに引き上げようとする際、整えることを重視する盛り上げ隊長はすでに終了のタイミングを見据えていることが多く、ペースの不一致がストレスを生みます。"},{"t":"p","text":"熱狂伝道者が感情の波により一時的な落ち込みを見せた際、盛り上げ隊長が深刻に受け止めず前向きな態度で切り替えようとすることで、熱狂伝道者に心理的な孤立感を与えてしまいます。"},{"t":"p","text":"熱狂伝道者は場の熱が続く限り活動を継続しようとしますが、盛り上げ隊長は場が成立した時点で満足感を得るため、同じ空間にいながらも活動に対する執着度に差が生じやすいです。"}]$jyyed695v$::jsonb,
      $jrhfunf7l$[]$jrhfunf7l$::jsonb
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
      'GFVH', 'GFMH',
      $jkuul2prr$[{"t":"p","text":"複数人、気分、高めるの3軸を共有しており、集団の熱量に乗って即興的に強度を引き上げていくスタイルが完全に合致しています。お祭り遊牧民が次々と新しい環境やイベントを提示し、熱狂伝道者がその場で周囲を巻き込みながら熱量を最大化するという相互作用が生まれやすいです。なりたいとありたいの差により活動後の余韻の扱い方に違いが出ますが、これが停滞を防ぐ推進力として機能することも多いです。"}]$jkuul2prr$::jsonb,
      $jx6omng2i$[{"t":"p","text":"お祭り遊牧民がイベントの選定や段取りを主導し、熱狂伝道者が当日のパフォーマンスと周囲の巻き込みに集中するという役割分担を明確にすることで、互いの強みが活かされます。"},{"t":"p","text":"共通の目標となる大会やイベントを設定し、そこへ向かう過程の熱量を共有することで、熱狂伝道者のモチベーションが維持され、お祭り遊牧民の行動力もさらに引き出されます。"},{"t":"p","text":"活動終了後に意図的に振り返りの時間を設けることで、熱狂伝道者の感情的な余韻を消化しつつ、お祭り遊牧民の次なる目標設定へとスムーズに接続することができます。"}]$jx6omng2i$::jsonb,
      $j9y4zy2f0$[{"t":"p","text":"活動終了直後、熱狂伝道者がその日の感情的な充実感を反芻したいタイミングで、お祭り遊牧民が即座に次の計画を提案し始めるため、感情の置き去り感が発生しやすいです。"},{"t":"p","text":"お祭り遊牧民が気分の赴くままに急激な計画変更を行った際、熱狂伝道者の感情的な準備が追いつかず、モチベーションの低下や反発を招くことがあります。"},{"t":"p","text":"双方が能力を高める性質を持つため、疲労時であっても休息を提案しにくく、結果として無自覚なままオーバーワークに陥り共倒れになるリスクを孕んでいます。"}]$j9y4zy2f0$::jsonb,
      $jj04y989v$[]$jj04y989v$::jsonb
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
      'GFVH', 'GFVC',
      $jut2jkwr4$[{"t":"p","text":"複数人、気分、なりたいの3軸を共有し、集団の中で感情の波に寄り添いながら即興的に動くという基盤が一致しています。互いの内面的な状態変化を直感的に理解し合えるため、言葉を交わさずともペースの調整がしやすいです。しかし、高めると整えるの違いから、熱狂伝道者が場の熱量に乗って限界を超えようとするのに対し、温もり提供者は安心感や心地よさを維持しようとするため、強度設定において温度差が生じます。"}]$jut2jkwr4$::jsonb,
      $j2c0buwjq$[{"t":"p","text":"互いの感情の波を否定せず、不調な日は無理をしないという共通認識を持つことで精神的な安全性が保たれ、長期的な関係の維持に繋がります。"},{"t":"p","text":"出発点と到達点のみを共有し、道中のペースや強度は各自の裁量に任せる設計にすることで、熱狂伝道者の能力を高める欲求と温もり提供者の身体を整える欲求を両立させることができます。"},{"t":"p","text":"熱狂伝道者が活動の熱量を牽引し、温もり提供者がその場の心理的な安全基地として機能することで、集団全体にとって居心地が良くかつ活気のある環境が構築されます。"}]$j2c0buwjq$::jsonb,
      $jhr0m7m1c$[{"t":"p","text":"熱狂伝道者がさらなる高みを目指して活動を延長しようとした際、温もり提供者が現状維持を望んでブレーキをかけるため、熱狂伝道者の熱が急激に冷まされる感覚に陥ります。"},{"t":"p","text":"双方が内面状態に敏感な性質を持つため、一方が高揚し他方が疲弊しているなど感情の波が逆位相になった際に、互いの状態を過剰に気に病み精神的な消耗を招きやすいです。"},{"t":"p","text":"熱狂伝道者が強度の達成を成功の指標とするのに対し、温もり提供者は場を共有できたこと自体を成功とするため、活動後の評価基準が噛み合わず満足度に差が生じます。"}]$jhr0m7m1c$::jsonb,
      $jw45gad0f$[]$jw45gad0f$::jsonb
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
      'GFVH', 'GPMC',
      $jxakuhmos$[{"t":"p","text":"複数人の軸のみを共有し、集団で活動するという前提以外はすべて対極にあります。コミュニティ長老が計画と安定を重んじ、場を整えることで長期的な関係性を築くのに対し、熱狂伝道者はその場の気分と熱量で強度を高めることを求めます。熱狂伝道者の即興的で爆発的な行動は、コミュニティ長老にとって築き上げた秩序を脅かす要素として映りやすく、日常的な活動を共にするには根本的なすり合わせが必要となります。"}]$jxakuhmos$::jsonb,
      $jow0e2gtx$[{"t":"p","text":"日常的な定例活動はコミュニティ長老が管理し、熱狂伝道者は特別なイベント時のみ参加して熱量を注入するというように、関与する場面を明確に切り分けることが有効です。"},{"t":"p","text":"コミュニティ長老が構築した安定した基盤の上に、熱狂伝道者が外部からの新しい刺激や熱気を持ち込むことで、組織全体のマンネリ化を防ぐ相互補完の関係が築けます。"},{"t":"p","text":"周年行事や大規模な大会など、双方が特別視できる明確な節目においてのみ協働することで、計画性と熱量の両方が求められる状況を作り出し、摩擦を最小限に抑えます。"}]$jow0e2gtx$::jsonb,
      $jym907mwf$[{"t":"p","text":"熱狂伝道者がその場の雰囲気で突発的に内容や強度を変更しようとすると、コミュニティ長老は計画の破綻に対する強いストレスを感じ、信頼関係が損なわれます。"},{"t":"p","text":"熱狂伝道者の感情的な起伏や不調時の振る舞いに対し、コミュニティ長老が一定の精神状態を保つ性質から淡々と対応するため、熱狂伝道者は心理的な距離感や冷たさを感じやすいです。"},{"t":"p","text":"コミュニティ長老が場を維持すること自体に責任を感じる一方で、熱狂伝道者はその瞬間の熱量を最優先するため、活動に対する優先順位が噛み合わず不満が蓄積します。"}]$jym907mwf$::jsonb,
      $jtzaqk160$[]$jtzaqk160$::jsonb
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
      'GFVH', 'GPMH',
      $j21gwmm8m$[{"t":"p","text":"複数人と高めるの軸を共有し、集団で高い目標に向かって強度を引き上げていくという方向性は一致しています。しかし、勝利の女神が綿密な計画と逆算に基づいて着実に成果を積み上げるのに対し、熱狂伝道者はその日の気分や場の熱量に依存して出力を変化させます。勝利の女神が構築した計画に熱狂伝道者がうまく乗った際の爆発力は凄まじいですが、感情の波によるパフォーマンスの変動が評価の衝突を招きやすいです。"}]$j21gwmm8m$::jsonb,
      $jx6ve0s6q$[{"t":"p","text":"勝利の女神が全体的なトレーニング計画や目標設定を担い、熱狂伝道者がその枠組みの中で当日のパフォーマンスを最大化するという役割分担が最も機能します。"},{"t":"p","text":"明確な期日のある大会や試合を共通の目標として設定することで、熱狂伝道者の熱量が維持されやすくなり、勝利の女神の計画性とも合致します。"},{"t":"p","text":"勝利の女神が本気で取り組む姿勢そのものが熱狂伝道者の着火剤となるため、互いの真剣な態度を可視化し、相互に刺激を与え合う環境を作ることが重要です。"}]$jx6ve0s6q$::jsonb,
      $jyacqi4kf$[{"t":"p","text":"熱狂伝道者が感情的な理由でパフォーマンスを落とした際、勝利の女神はそれを計画の阻害要因として論理的に指摘するため、熱狂伝道者は感情を否定されたと感じて反発します。"},{"t":"p","text":"熱狂伝道者がその場のノリで計画外の過負荷なトレーニングを提案した際、勝利の女神は全体計画へのリスクとみなし、能力を高める方向性は同じでもアプローチの違いから対立が生じます。"},{"t":"p","text":"勝利の女神がチーム全体の計画達成度を評価の主軸に置くのに対し、熱狂伝道者は個人の完全燃焼感を重視するため、結果に対する納得感や反省点が一致しないことが多いです。"}]$jyacqi4kf$::jsonb,
      $jjxaf735c$[]$jjxaf735c$::jsonb
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
      'GFVH', 'GPVC',
      $jux7pjnrm$[{"t":"p","text":"複数人となりたいの軸を共有し、集団の中で互いの感情や内面状態を重んじる姿勢は共通しています。しかし、チームの守り神が計画された枠組みの中で安全に場を整えることを優先するのに対し、熱狂伝道者は気分と熱量に任せて限界まで能力を高めることを求めます。熱狂伝道者の予測不能な熱量の爆発は、チームの守り神にとって守るべき秩序や安心感への脅威となるため、活動の前提条件を明確にする必要があります。"}]$jux7pjnrm$::jsonb,
      $jzmosoch3$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、互いの不調や感情の起伏を言葉にせずとも察し合い、無理を強要しないという心理的安全性の高い関係を築くことができます。"},{"t":"p","text":"チームの守り神が活動の時間や内容の枠組みを明確に設定し、熱狂伝道者がその制限された範囲内でのみ全力を出し切るというルールを設けることで、双方の欲求が満たされます。"},{"t":"p","text":"強度や成果を一切求めないリラクゼーション主体の活動を定期的に取り入れることで、熱狂伝道者の熱量を鎮め、チームの守り神の安心感を共有する時間を作ります。"}]$jzmosoch3$::jsonb,
      $jumojmcmd$[{"t":"p","text":"熱狂伝道者が場の盛り上がりに任せて活動時間を延長しようとすると、チームの守り神は約束された枠組みが崩れることに強い不安と不満を覚えます。"},{"t":"p","text":"熱狂伝道者が感情的に落ち込んだ際、チームの守り神は次に向けて環境を整えようと動きますが、熱狂伝道者はただ感情に寄り添うことを求めるため、支援の方向性がすれ違います。"},{"t":"p","text":"チームの守り神が計画通りに無事終了したことに達成感を見出す一方で、熱狂伝道者は全力を出し切れなかった場合に不完全燃焼感を抱くため、満足度に差が生じます。"}]$jumojmcmd$::jsonb,
      $jyy98suu6$[]$jyy98suu6$::jsonb
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
      'GFVH', 'GPVH',
      $jf8jivol6$[{"t":"p","text":"複数人、なりたい、高めるの3軸を共有し、集団の中で感情を共有しながら限界まで追い込むというプレースタイルが極めて近いです。互いが本気で取り組む姿勢が強力な相互刺激となり、集団全体の熱量を劇的に引き上げるポテンシャルを持ちます。唯一の違いは気分と計画であり、熱狂伝道者がその日の空気感で出力を決めるのに対し、熱血キャプテンは事前の計画に基づいて強度を要求するため、衝突の火種となります。"}]$jf8jivol6$::jsonb,
      $jq5da9edx$[{"t":"p","text":"熱血キャプテンが設定した高い目標や厳しい練習メニューに対し、熱狂伝道者がその場の熱量で応えることで、互いの能力を高める欲求が連鎖的に増幅される環境を作ります。"},{"t":"p","text":"活動終了後にその日の感情的な起伏や達成感、悔しさなどを言語化して共有することで、内面状態に敏感なタイプ同士の深い共感が生まれ、次への強力なモチベーションとなります。"},{"t":"p","text":"双方が同じ集団に属することで、熱血キャプテンの牽引力と熱狂伝道者の伝播力が組み合わさり、周囲のメンバーをも巻き込む圧倒的な推進力を生み出すことができます。"}]$jq5da9edx$::jsonb,
      $jtty884c8$[{"t":"p","text":"双方が限界を超えて能力を高める傾向があるため、ブレーキ役が不在となり、オーバートレーニングや怪我のリスクを無自覚に高めてしまう危険性があります。"},{"t":"p","text":"熱狂伝道者が気分や感情の低下により本来のパフォーマンスを発揮できない際、熱血キャプテンはそれを精神的な甘えと厳しく非難しがちであり、深刻な感情的対立に発展しやすいです。"},{"t":"p","text":"熱狂伝道者がその場の雰囲気で練習内容を即興的に変更しようとすると、熱血キャプテンは計画への冒涜と受け取り、アプローチの根本的な違いが表面化します。"}]$jtty884c8$::jsonb,
      $j82nbbb15$[]$j82nbbb15$::jsonb
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
      'GFVH', 'SFMC',
      $jsypbz3t3$[{"t":"p","text":"気分の軸のみを共有し、その日の感覚で即興的に動くという点以外はすべて異なります。気まぐれ散策者が一人の時間をマイペースに身体を整えることを好むのに対し、熱狂伝道者は集団の熱量の中で強度を高めることを求めます。熱狂伝道者が良かれと思って発する熱量や一体感への誘いは、気まぐれ散策者にとっては自己の領域への過剰な干渉と感じられるため、適切な距離感が必要となります。"}]$jsypbz3t3$::jsonb,
      $jeji6c5h6$[{"t":"p","text":"気分の性質を共有しているため、事前の計画を立てず、その日の思いつきで目的地を決めない散策など、自由度の高い活動を選択することで摩擦を回避できます。"},{"t":"p","text":"気まぐれ散策者が提案したルートや活動に対し、熱狂伝道者がそれに合わせる形で同行し、自身の能力を高める欲求を一時的に封印することで穏やかな共有時間が生まれます。"},{"t":"p","text":"熱狂伝道者が強度やタイムへの執着を手放し、気まぐれ散策者の身体を整えるペースに身を委ねることで、普段とは異なるリラックスした運動体験を得ることができます。"}]$jeji6c5h6$::jsonb,
      $jwowy6kt6$[{"t":"p","text":"熱狂伝道者が場の熱量を高めようと過剰な声かけや一体感を強要すると、気まぐれ散策者は自分のペースを乱されたと感じ、強い拒絶反応を示します。"},{"t":"p","text":"熱狂伝道者が活動後の高揚感を共有しようと熱弁を振るっても、気まぐれ散策者はありたい状態を重視する性質から淡白な反応を返すため、熱狂伝道者は肩透かしを食ったように感じます。"},{"t":"p","text":"熱狂伝道者が集団での活動を前提とするのに対し、気まぐれ散策者は単独行動を基本とするため、活動への参加頻度や関与の深さに対する期待値が全く噛み合いません。"}]$jwowy6kt6$::jsonb,
      $j0rs446st$[]$j0rs446st$::jsonb
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
      'GFVH', 'SFMH',
      $jxaxyqbjn$[{"t":"p","text":"気分と高めるの2軸を共有し、計画に縛られずその日の感覚で限界に挑むという強度の出し方は一致しています。しかし、直感の冒険家が完全に自己の内面に向かって孤独に限界を追求するのに対し、熱狂伝道者は他者の存在と熱量を燃料とします。直感の冒険家が放つ圧倒的な熱量は熱狂伝道者の着火剤となり得ますが、熱狂伝道者がその熱を共有しようと介入すると、直感の冒険家の集中を阻害してしまいます。"}]$jxaxyqbjn$::jsonb,
      $jzg49k01z$[{"t":"p","text":"直感の冒険家が単独で限界に挑む姿を熱狂伝道者が間近で感じることで、言葉を交わさずとも熱狂伝道者の能力を高める欲求が強く刺激され、相乗効果が生まれます。"},{"t":"p","text":"その日の感覚で強度や距離を即興的に調整するという気分の特性を活かし、互いに縛り合わない柔軟な目標設定を行うことで、ストレスのない並走が可能になります。"},{"t":"p","text":"活動中は互いの領域に干渉せず、終了後にそれぞれの視点から今日の自分の限界について語り合うことで、異なるアプローチながらも深い理解を得ることができます。"}]$jzg49k01z$::jsonb,
      $jz18erhsa$[{"t":"p","text":"熱狂伝道者が一体感を求めて活動中に声かけや応援を行うと、直感の冒険家は自己との対話を妨害されたと感じ、集中力を著しく削がれます。"},{"t":"p","text":"熱狂伝道者が感情の波によって不調に陥った際、直感の冒険家はそれを自己解決すべき問題として突き放すため、熱狂伝道者は冷酷さを感じて孤立感を深めます。"},{"t":"p","text":"熱狂伝道者が他者との熱量の共有を活動の意義とするのに対し、直感の冒険家は自己完結した達成のみを評価するため、同じ場にいても充足感の源泉が交わりません。"}]$jz18erhsa$::jsonb,
      $jj00ocneh$[]$jj00ocneh$::jsonb
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
      'GFVH', 'SFVC',
      $j5auougho$[{"t":"p","text":"気分となりたいの2軸を共有し、その日の感情や内面状態に素直に従って動くというスタンスは共通しています。しかし、ほっこり探索者が一人の静かな環境で身体を整えることを目的とするのに対し、熱狂伝道者は集団の熱気の中で強度を高めることを欲します。熱狂伝道者の発する強いエネルギーは、内省を深めようとするほっこり探索者にとってノイズとなりやすいため、活動の動と静を明確に分離する必要があります。"}]$j5auougho$::jsonb,
      $juwz0k3z4$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、互いの感情の起伏や不調を言葉にせずとも理解し合い、無理な活動を強要しないという穏やかな信頼関係を築くことができます。"},{"t":"p","text":"熱狂伝道者が激しい運動を終えた後に、ほっこり探索者が選んだ静かな場所で合流するなど、活動のフェーズを完全に分けることで双方の欲求を衝突させずに満たします。"},{"t":"p","text":"気分の特性を活かし、事前の計画に縛られず、その日の互いの感情状態に合わせて柔軟に活動内容や場所を変更することで、無理のない共有時間が生まれます。"}]$juwz0k3z4$::jsonb,
      $j6h4x58cf$[{"t":"p","text":"熱狂伝道者が活動中にさらなる高揚を求めて介入すると、ほっこり探索者は自己の内面に向かう静かな時間を破壊されたと感じ、強いストレスを抱きます。"},{"t":"p","text":"熱狂伝道者の能力を高める欲求とほっこり探索者の身体を整える欲求が同じ空間で衝突すると、熱狂伝道者は不完全燃焼に陥り、ほっこり探索者は過剰な疲労を強いられます。"},{"t":"p","text":"熱狂伝道者が活動後の熱気をそのまま持ち込もうとすると、ほっこり探索者はそのエネルギーを受け止めきれず、次回の活動への参加を躊躇する原因となります。"}]$j6h4x58cf$::jsonb,
      $ji9iglgbg$[]$ji9iglgbg$::jsonb
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
      'GFVH', 'SFVH',
      $jaw2020de$[{"t":"p","text":"気分、なりたい、高めるの3軸を共有し、感情の赴くままに限界まで強度を引き上げていくという運動のコア部分が完全に一致しています。全力一匹狼が単独で極限の集中状態に入った際、その圧倒的な熱量が熱狂伝道者に伝播し、熱狂伝道者のパフォーマンスを劇的に引き上げます。一人と複数人の差は、全力一匹狼の孤独な熱量を熱狂伝道者が環境の熱として享受することで、見事な補完関係として機能します。"}]$jaw2020de$::jsonb,
      $jeycz2esf$[{"t":"p","text":"全力一匹狼が自己の限界に挑む姿そのものが熱狂伝道者にとって最高の着火剤となるため、同じ空間で各自が全力を尽くす並行活動が最も機能します。"},{"t":"p","text":"気分の性質を共有しているため、その日の直感で目標や強度を上方修正する判断が一致しやすく、計画に縛られない爆発的なパフォーマンスを発揮できます。"},{"t":"p","text":"活動終了後に互いの感情の起伏や限界に挑んだ感覚を言語化して共有することで、内面状態に敏感なタイプ同士の深い共鳴が生まれ、次への強力な動機付けとなります。"}]$jeycz2esf$::jsonb,
      $j69qvzmry$[{"t":"p","text":"熱狂伝道者が一体感を求めて活動中に過剰なコミュニケーションを図ると、全力一匹狼の極限の集中状態を破壊してしまい、深刻な対立を招きます。"},{"t":"p","text":"双方が限界を超えて能力を高める傾向があるため、互いの熱量に当てられて適切な終了タイミングを見失い、深刻な疲労や怪我を引き起こすリスクが高いです。"},{"t":"p","text":"熱狂伝道者が活動の意義を共に熱くなったことに見出すのに対し、全力一匹狼は個人の限界を超えたことに見出すため、達成感の解釈に微妙なズレが生じます。"}]$j69qvzmry$::jsonb,
      $j7ndbejlx$[]$j7ndbejlx$::jsonb
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
      'GFVH', 'SPMC',
      $jgpv71slw$[{"t":"p","text":"4軸すべてが対極にあり、運動に対する動機、アプローチ、求める環境が完全に相反します。ゆるり哲学者が一人の静寂の中で計画的なルーティンを整えることを至上の価値とするのに対し、熱狂伝道者は集団の熱狂の中で即興的に強度を高めることを求めます。熱狂伝道者の存在そのものがゆるり哲学者にとっては予測不能なノイズであり、同じ空間で同じ目的を持って活動することは双方にとって著しい消耗を強います。"}]$jgpv71slw$::jsonb,
      $jdhrbvesu$[{"t":"p","text":"日常的な運動の場は完全に分離し、年に数回の特別な行事など運動強度や熱量を一切求めない場面に限定して接点を持つことが関係維持の絶対条件となります。"},{"t":"p","text":"熱狂伝道者が自身の能力を高める欲求を完全に封印し、ゆるり哲学者の静かなルーティンにただ同行するだけの日を設けることで、互いの異質さを観察する機会となります。"},{"t":"p","text":"コミュニティの運営など運動そのものではない領域において、ゆるり哲学者が計画を練り、熱狂伝道者が実行部隊として動くという役割分担であれば機能します。"}]$jdhrbvesu$::jsonb,
      $jmeh26s0q$[{"t":"p","text":"熱狂伝道者がその場のノリで計画外の行動や強度の変更を提案すると、ゆるり哲学者は自身の神聖なルーティンが侵害されたと感じ、強い拒絶を示します。"},{"t":"p","text":"熱狂伝道者が感情的な一体感を求めてアプローチしても、ゆるり哲学者はありたい状態を重視する性質から極めて冷淡に反応するため、熱狂伝道者は深い疎外感を味わいます。"},{"t":"p","text":"双方が相手の運動スタイルを根本的に理解できず、熱狂伝道者は相手を無気力とみなし、ゆるり哲学者は相手を野蛮とみなすという評価の断絶が起きやすいです。"}]$jmeh26s0q$::jsonb,
      $jph4valp0$[{"heading":"D3（熱狂伝道者 のコンテンツ）: 相性リスト bad（すれ違い・摩擦が出やすい）。","blocks":[{"t":"q","lines":["4軸すべてが対極。GFVHの「場の熱量で着火する動き方」とSPMCの「静かな習慣の積み重ね」は、動機・強度・場の使い方がすべて逆向きで、同じ場での運動で必ず摩擦が生まれる。"]}]}]$jph4valp0$::jsonb
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
      'GFVH', 'SPMH',
      $jq8c4vlc1$[{"t":"p","text":"高めるの軸のみを共有し、限界に挑むという結果の形は似ているものの、そこに至るプロセスが全く異なります。孤高の挑戦者が数値と計画に基づき感情を排して孤独に自己を更新するのに対し、熱狂伝道者は他者との感情的な熱量の共有によって出力を引き上げます。孤高の挑戦者の機械的なストイックさは熱狂伝道者にとって熱を奪う冷気のように感じられ、アプローチの違いが際立ちます。"}]$jq8c4vlc1$::jsonb,
      $jz8bqc7yt$[{"t":"p","text":"同じ大会や目標を設定しつつも、そこに至るまでの練習プロセスは完全に分離し、本番の場でのみ互いの全力を確認し合うという距離感が最も適しています。"},{"t":"p","text":"孤高の挑戦者が黙々と限界に挑む姿を熱狂伝道者が少し離れた場所から観察することで、直接的な干渉を避けつつ自身の着火剤として利用することができます。"},{"t":"p","text":"互いの能力を高める欲求の強さ自体は尊敬し合えるため、アプローチの違いには言及せず、結果としての強度や達成のみを承認し合う文化を作ることが有効です。"}]$jz8bqc7yt$::jsonb,
      $jjmkps3g6$[{"t":"p","text":"熱狂伝道者が感情の波によってパフォーマンスを落とした際、孤高の挑戦者はそれを計画の不備や意志の弱さと断じ、熱狂伝道者の感情を激しく逆撫でします。"},{"t":"p","text":"熱狂伝道者が集団の熱量を高めようと働きかけても、孤高の挑戦者はそれを自己の集中を乱す不要な変数として切り捨てるため、熱狂伝道者の熱意が行き場を失います。"},{"t":"p","text":"孤高の挑戦者が数値的な成果のみを評価するのに対し、熱狂伝道者はその場の熱気や一体感を評価するため、活動後の振り返りで議論が噛み合いません。"}]$jjmkps3g6$::jsonb,
      $jizvou7x8$[]$jizvou7x8$::jsonb
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
      'GFVH', 'SPVC',
      $j1cagzpry$[{"t":"p","text":"内面状態に敏感な軸のみを共有し、感情や内面状態の揺れ動きを認識する点では一致していますが、その対処法と運動スタイルが対極にあります。ルーティン課長が感情の波を静かな一人の計画的ルーティンの中で整えようとするのに対し、熱狂伝道者は感情の波を集団の熱量にぶつけて能力を高めようとするため、運動という手段においては領域を侵食し合いやすいです。"}]$j1cagzpry$::jsonb,
      $jqgow7rqv$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、運動の場を離れたところで互いの不調や感情の揺れについて深く語り合い、共感し合える関係を築くことができます。"},{"t":"p","text":"ルーティン課長の日常的な計画には一切干渉せず、あらかじめ合意された特別な日においてのみ、熱狂伝道者が強度を抑えて同行するという限定的な接点を持ちます。"},{"t":"p","text":"双方が別々の場所で活動を終えた後に合流し、それぞれの体験や感情の変化について報告し合うことで、運動スタイルを衝突させずに内面的な共有を図ります。"}]$jqgow7rqv$::jsonb,
      $j849q4n9c$[{"t":"p","text":"熱狂伝道者が突発的に活動の延長や強度の変更を持ちかけると、ルーティン課長は計画の破綻と静寂の喪失に直面し、強いストレスと疲労を感じます。"},{"t":"p","text":"熱狂伝道者が活動中に感情を高ぶらせて周囲を巻き込もうとすると、ルーティン課長は自己の内面を整えるプロセスを強制終了させられ、不満を募らせます。"},{"t":"p","text":"熱狂伝道者が熱量を発散できないことに不満を抱く一方で、ルーティン課長は熱狂伝道者の存在自体に圧迫感を覚えるため、同じ空間にいるだけで双方が消耗します。"}]$j849q4n9c$::jsonb,
      $j0ynwddro$[{"heading":"D3（熱狂伝道者 のコンテンツ）: 相性リスト bad（すれ違い・摩擦が出やすい）。","blocks":[{"t":"q","lines":["GFVHの「場の熱量で動く即興性」とSPVCの「静かなルーティンの積み重ね」が根本的に相容れない。熱量文化とルーティン文化の衝突が日常的に起きやすい。"]}]}]$j0ynwddro$::jsonb
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
      'GFVH', 'SPVH',
      $jpy7uvnwr$[{"t":"p","text":"なりたいと高めるの2軸を共有し、感情の波を抱えながらも限界まで強度を引き上げていくという深い欲求は一致しています。しかし、自己超越者が綿密な計画に基づき一人で自己の限界に挑むのに対し、熱狂伝道者はその場の気分と集団の熱量によって出力を決めます。自己超越者の放つ圧倒的な集中力は熱狂伝道者の着火剤として機能しますが、他者の介入を拒絶する姿勢が一体感を求める熱狂伝道者と衝突します。"}]$jpy7uvnwr$::jsonb,
      $jl9q94bvx$[{"t":"p","text":"自己超越者が計画通りに限界に挑む姿を熱狂伝道者が同じ空間で共有することで、言葉を交わさずとも熱狂伝道者の能力を高める欲求が強く刺激されます。"},{"t":"p","text":"活動終了後に互いが直面した限界やその時の感情の動きについて語り合うことで、内面状態に敏感なタイプ同士の深い共鳴と能力を高めるタイプ同士の相互尊敬が生まれます。"},{"t":"p","text":"同じ大会などの目標を共有しつつ、準備段階から本番の競技中まで互いのペースに一切干渉しないというルールを徹底することで、最高の並走関係が実現します。"}]$jl9q94bvx$::jsonb,
      $j8lxvnx73$[{"t":"p","text":"熱狂伝道者が活動中に一体感を求めて声かけやペースの同調を求めると、自己超越者は自身の計画と集中に対する重大な侵害とみなし、激しく反発します。"},{"t":"p","text":"熱狂伝道者が感情の波により計画通りのパフォーマンスを出せない際、自己超越者はそれを実務的に修正しようとするため、感情の共有を求める熱狂伝道者との間に溝ができます。"},{"t":"p","text":"熱狂伝道者が共に熱狂したことを成功とするのに対し、自己超越者は計画通りに自己を更新したことを成功とするため、達成感のベクトルが交わりません。"}]$j8lxvnx73$::jsonb,
      $ja7xf6sei$[]$ja7xf6sei$::jsonb
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
      'GPMC', 'GFMC',
      $jppq4g4tj$[{"t":"p","text":"複数人で集まり、現状の自分を肯定しながら無理のない強度で体を整えるという運動の基本姿勢が一致しています。集団の中で穏やかに継続し、感情の起伏に左右されずに場を維持しようとする土台が共通しているため、同じ空間で運動するだけで自然な安心感が生まれます。唯一の相違点である計画と気分の違いが、共同トレーニングにおける役割分担を明確にします。計画型の基準型が定例の枠組みやメニューの継続性を担保する一方で、気分型の相手は当日の参加者のコンディションに合わせた空気作りや新規メンバーの歓迎を担います。この固定と流動のバランスが機能することで、安定感と開放感を両立した理想的な運動環境が実現します。"}]$jppq4g4tj$::jsonb,
      $j9tnmwafp$[{"t":"p","text":"基準型が練習の日時や場所、基本的なメニュー構成といったトレーニングの骨格を維持し、相手がその場に合わせた声かけや雰囲気作りを担うという分業を意識的に行います。"},{"t":"p","text":"基準型が主導する週次の定例ウォーキングやジム通いの中に、相手が提案する月一回の特別なレクリエーション要素を組み込むことで、継続性と即興性のバランスを保ちます。"},{"t":"p","text":"相手の開放的な振る舞いが新しい練習仲間を惹きつけ、基準型の安定した運営がその定着を促すという循環を理解し、互いの異なる貢献を具体的な成果として評価し合います。"}]$j9tnmwafp$::jsonb,
      $j8aniphcu$[{"t":"p","text":"相手が当日の気分で急に活動場所や種目の変更を提案した際、基準型は事前の計画が脅かされたと感じ、運動そのものへのモチベーションや場への信頼が揺らぐ要因となります。"},{"t":"p","text":"相手が事前の相談なしに新しい練習仲間を連れてきた場合、基準型は想定外の対人変数が生じたことに負担を感じ、リラックスして体を整えるはずの時間がストレスに変わります。"},{"t":"p","text":"基準型は既存メンバーとの安定した継続を最優先するのに対し、相手は新しい刺激や参加者の増加を歓迎するため、コミュニティの方向性に関する認識のズレが運営方針の対立に発展します。"}]$j8aniphcu$::jsonb,
      $jls2t36t0$[]$jls2t36t0$::jsonb
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
      'GPMC', 'GFMH',
      $jzkoka5ua$[{"t":"p","text":"複数人で集まり、今の自分を大切にするありたい軸を共有しているため、集団の中で感情に流されず活動する安定感は一致しています。しかし、計画と気分、整えると高めるの違いが、運動の目的と強度に明確な差異を生みます。基準型が同じ場所での継続的な定例活動に価値を見出すのに対し、相手は新しいイベントや高強度の挑戦を渡り歩くことに充実感を覚えます。このため、基準型の穏やかなルーティンに対して相手が不定期に刺激を持ち込む形になりやすいです。互いの運動スタイルが異なることを前提とし、相手が外部の大会情報などを持ち込み、基準型がそれを受け止める安定した練習拠点を提供するという関係性が有効です。"}]$jzkoka5ua$::jsonb,
      $jzvaungdm$[{"t":"p","text":"相手が外部のスポーツ大会やイベントの情報を持ち込み、基準型がその参加に向けた練習スケジュールの管理やメンバーのフォローを担う協力体制を構築します。"},{"t":"p","text":"基準型が運営する日常的な低強度の定例活動と、相手が志向する非日常的な高強度のイベントを明確に切り分け、互いの領域に干渉せずにそれぞれの強みを発揮できる環境を整えます。"},{"t":"p","text":"感情の起伏が少ないありたい軸の共通点を活かし、トレーニングの負荷設定や参加頻度について、主観を排した事実ベースの客観的な意見交換を定期的に行います。"}]$jzvaungdm$::jsonb,
      $jqt3y2qiy$[{"t":"p","text":"基準型が重視する定例の練習を、相手が他のイベントやその日の気分を優先して欠席することが続くと、基準型は相手の継続意思が欠如していると見なし不満を蓄積させます。"},{"t":"p","text":"相手がコミュニティの活動強度を突発的に引き上げようとした際、基準型は既存メンバーの安全や継続が困難になると判断し、管理者の立場から強く反発して雰囲気が悪化します。"},{"t":"p","text":"基準型は毎週の参加を運動への誠実さとみなしますが、相手は単発の盛り上がりを重視するため、互いの貢献度に対する評価が噛み合わず、心理的な距離が生じやすくなります。"}]$jqt3y2qiy$::jsonb,
      $jtybfx9h1$[]$jtybfx9h1$::jsonb
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
      'GPMC', 'GFVC',
      $jcy8trmil$[{"t":"p","text":"複数人で集まり、無理のないペースで体を整えるという身体的な方向性が一致しています。集団の中で過度な負荷を避け、心地よい強度で運動を継続しようとする価値観は共通しています。しかし、計画と気分の違いに加え、ありたいとなりたいの心理的な差異が運動への向き合い方に影響を与えます。基準型は感情に左右されず計画通りにメニューをこなすことに安心感を覚えますが、相手はその日の気分や体調、周囲の空気に強く影響されます。相手の流動的な参加姿勢は、基準型にとって計画の不確実性と映りますが、相手の細やかな配慮は、基準型の論理的な運営に温かさを付与する補完関係にあります。"}]$jcy8trmil$::jsonb,
      $jbx62au54$[{"t":"p","text":"基準型が活動の日時や場所を固定して安定した練習の場を用意し、相手がその中で参加者への気遣いやリラックスできる雰囲気作りを担当する役割分担を行います。"},{"t":"p","text":"相手の当日の気分や体調による欠席をあらかじめ想定内の変数として計画に組み込み、参加の義務感をなくすことで、相手がプレッシャーを感じずに運動を続けられるようにします。"},{"t":"p","text":"強度を競わないウォーキングやストレッチなど、両者が心地よいと感じる整える軸の活動を中心に据え、身体的なペースを同調させることで心理的な一体感を高めます。"}]$jbx62au54$::jsonb,
      $jl6oqyrlo$[{"t":"p","text":"相手の気分による欠席や遅刻が頻発すると、基準型はトレーニング計画の遂行が妨げられると感じ、相手の運動に対する真剣さを疑うようになってしまいます。"},{"t":"p","text":"相手がその場の雰囲気で急なプログラム変更を提案した際、基準型は事前の合意がない変更をリスクと捉え、柔軟性を欠いた頑なな対応をしてしまい空気が冷え込みます。"},{"t":"p","text":"基準型が相手の運動に対する不安や感情的な揺らぎを論理的な正論で解決しようとすると、相手は共感が得られないと感じて孤立し、運動から足が遠のく原因となります。"}]$jl6oqyrlo$::jsonb,
      $j4udpvf6p$[]$j4udpvf6p$::jsonb
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
      'GPMC', 'GFVH',
      $j2li5lw5q$[{"t":"p","text":"複数人で集まって運動するという1軸のみが共通しており、それ以外の運動スタイルは対極に近いです。基準型が計画的に穏やかな強度で場を維持しようとするのに対し、相手は感情の高まりに従って突発的に高強度の活動を求めます。相手の熱量と即興性は、基準型が構築した安定したトレーニングリズムを揺るがす要因となりやすいです。逆に、相手から見れば基準型のメニューは予測可能すぎて刺激に欠けると評価されます。このペアが共に運動を楽しむためには、日常の練習を共有するのではなく、基準型が設定した特別なイベントにおいて相手が熱量を爆発させるという、限定的な関わり方が適しています。"}]$j2li5lw5q$::jsonb,
      $j8ep92r4e$[{"t":"p","text":"基準型が年間スケジュールや大会参加の枠組みを設計し、相手が当日の盛り上げや参加者のモチベーションを引き上げる役割に専念できる環境を作ります。"},{"t":"p","text":"相手の感情的な高揚によるオーバートレーニングを基準型が客観的に観察し、場の熱量や負荷が過剰にならないよう安全管理のブレーキ役として機能します。"},{"t":"p","text":"日常の穏やかな定例活動は基準型が管理し、数ヶ月に一度の挑戦的な特別企画のみ相手が主導するというように、活動の頻度と役割を明確に使い分けます。"}]$j8ep92r4e$::jsonb,
      $j9obgmrmd$[{"t":"p","text":"相手が活動中に予定外の延長や負荷の増加を求めた際、基準型は参加者の安全と計画の遵守を優先するため、現場で指導方針が激しく対立し、場の空気が悪化します。"},{"t":"p","text":"相手が外部から多数の参加者を突発的に招き入れた場合、基準型は管理の範疇を超える事態として強いストレスを感じ、運動を純粋に楽しめなくなります。"},{"t":"p","text":"基準型は地道な継続を、相手は瞬間の熱狂を運動の価値とするため、活動終了時の達成感の基準が異なり、互いの努力を正当に認め合えない状況が続きます。"}]$j9obgmrmd$::jsonb,
      $je8nndvw2$[]$je8nndvw2$::jsonb
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
      'GPMC', 'GPMH',
      $jw80z74z2$[{"t":"p","text":"複数人を計画的に導き、感情に流されず目的を遂行する姿勢が一致している隣接タイプです。集団のトレーニングを論理的に設計し、着実に実行していく運営能力において極めて高い親和性を持っています。唯一の相違点である整えると高めるの違いが、運動目標の設定における議論の焦点となります。基準型が参加者全員の継続と安全を最優先して低〜中強度を維持しようとするのに対し、相手は目標達成に向けた限界突破や強度の向上を志向します。この強度の違いを役割として認識し、初心者層と上級者層の管理を分担することで、隙のない強力な運動コミュニティを構築できます。"}]$jw80z74z2$::jsonb,
      $jvnvz2zhr$[{"t":"p","text":"基準型が既存メンバーのコンディション管理と継続フォローを担当し、相手が記録向上や大会出場を目指すメンバー向けの強化プログラムを設計します。"},{"t":"p","text":"大会参加や遠征の企画において、相手が逆算的な目標設定を行い、基準型がその計画に無理がないか、全体の安全面から細部を調整する共同作業を行います。"},{"t":"p","text":"互いに感情的な対立を避ける傾向があるため、継続率と目標達成率という異なる客観的な指標を用いて、定期的にトレーニング内容の改善会議を実施します。"}]$jvnvz2zhr$::jsonb,
      $jh86n8nfo$[{"t":"p","text":"相手がコミュニティ全体の目標水準や負荷を強引に引き上げようとした際、基準型は脱落者が出ることを懸念し、保守的な姿勢を崩さないことで計画が停滞します。"},{"t":"p","text":"相手が最新のトレーニング理論に基づいて計画の頻繁なアップデートを提案すると、基準型は決定事項の維持を重視するため、変更に対する疲労感を蓄積させます。"},{"t":"p","text":"基準型が全員を同じスローペースに合わせることを強要すると、相手は自身の成長機会やチームの可能性が損なわれていると感じ、運動への意欲を低下させます。"}]$jh86n8nfo$::jsonb,
      $jcq9glu9l$[]$jcq9glu9l$::jsonb
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
      'GPMC', 'GPVC',
      $j6q9xr5es$[{"t":"p","text":"複数人で計画的に、無理のないペースで体を整えるという運動の根本的な方向性が一致しています。集団を安全に導き、着実な継続を重視する価値観が共通しているため、非常に安定した協力関係を築けます。唯一の相違は、基準型がありたいで感情的に一定しているのに対し、相手がなりたいで周囲の反応や計画の細部に敏感である点です。相手の細やかな気配りやリスクへの懸念を、基準型が客観的に受け止めて計画に反映させることで、極めて安全性が高く、参加者の満足度も高い理想的な運動環境を作り出すことができます。"}]$j6q9xr5es$::jsonb,
      $j15on89gc$[{"t":"p","text":"基準型が全体のスケジュール管理や大枠の意思決定を担い、相手が参加者一人ひとりの体調変化やモチベーションの細やかなフォローを担当する分業体制を敷きます。"},{"t":"p","text":"相手が抱くトレーニング上の不安や安全面での懸念事項を基準型が定期的に聞き出し、論理的な解決策を提示することで、相手の心理的な負担を軽減させます。"},{"t":"p","text":"長期的なウォーキングイベントや基礎体力の向上プログラムなど、両者が得意とする低負荷で計画的な活動を共同で企画し、着実な成果を積み上げます。"}]$j15on89gc$::jsonb,
      $jhsa7e256$[{"t":"p","text":"相手が些細な怪我のリスクなどを過剰に心配して計画の進行を躊躇した際、基準型が問題ないと即断してしまうと、相手は自分の専門性や懸念を軽視されたと感じます。"},{"t":"p","text":"トレーニング後の振り返りにおいて、相手が反省点や改善案を深く掘り下げようとするのに対し、基準型が早々に切り替えようとすることで、熱量の温度差が生じます。"},{"t":"p","text":"トラブル発生時、基準型が仕組みの改善による再発防止を優先する一方で、相手は当事者の感情的なケアを最優先するため、対応の優先順位で意見が対立します。"}]$jhsa7e256$::jsonb,
      $jpz91ufhe$[]$jpz91ufhe$::jsonb
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
      'GPMC', 'GPVH',
      $j7fe01eoe$[{"t":"p","text":"複数人で集まり、計画的に運動を進めるという運営の基本姿勢は一致しています。集団活動を組織化し、スケジュール通りに実行する能力は共通しています。しかし、ありたいとなりたい、整えると高めるという心理面と強度面の2軸が異なるため、運動の目的と実行プロセスで摩擦が生じやすいです。基準型が全員の継続を重視して安定した低強度の運営を目指すのに対し、相手は高い目標を掲げ、感情を前面に出してチームの負荷を引き上げようとする。基準型にとって相手の要求は過大に映り、相手にとって基準型の運営は刺激不足と評価されるため、役割の明確な分離が必要となります。"}]$j7fe01eoe$::jsonb,
      $jy3u69ji9$[{"t":"p","text":"基準型が初心者や現状維持を目的とする層を担当し、相手が大会出場や記録更新を目指す層を担当する、レベル別のトレーニング構造を構築します。"},{"t":"p","text":"相手が設定した高い目標や高負荷なメニューに対して、基準型が実現可能なマイルストーンを引き直し、参加者が脱落しない実行可能な計画へと落とし込みます。"},{"t":"p","text":"相手の感情的な発露や熱血な指導を基準型が冷静に受け止め、チーム全体の雰囲気が過熱して怪我や燃え尽きが起きないようバランサーとして機能します。"}]$jy3u69ji9$::jsonb,
      $jce8z0on0$[{"t":"p","text":"相手が参加者全員に一律で高強度のトレーニングを要求した際、基準型は脱落を防ぐために介入し、指導方針や負荷設定を巡って正面から衝突します。"},{"t":"p","text":"相手が熱意を込めて語る高いビジョンに対し、基準型が客観的で淡々とした反応を返すと、相手は自分の情熱を否定されたと誤認し、信頼関係に亀裂が入ります。"},{"t":"p","text":"目標達成のために計画を柔軟かつ大胆に変更したい相手と、一度決めたルーティンの完遂を重視する基準型との間で、スケジュールの運用方法を巡り不一致が生じます。"}]$jce8z0on0$::jsonb,
      $j7a2y0fvx$[]$j7a2y0fvx$::jsonb
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
      'GPMC', 'SFMC',
      $jaf6tg976$[{"t":"p","text":"ありたいと整えるの2軸が一致し、感情に流されず無理のないペースで活動するという個人の身体的・心理的な安定感は共有しています。しかし、複数人と一人、計画と気分という社会性と時間軸の捉え方が異なります。基準型がコミュニティという集団の枠組みを計画的に維持することに価値を置くのに対し、相手は個人の直感に従い、その日の気分で単独で動くことを好みます。基準型の活動に相手が参加する場合、定例の枠組みが相手には束縛と感じられやすいため、相手を不定期なゲスト参加者として許容するような、柔軟な枠組みの設計が関係維持の鍵となります。"}]$jaf6tg976$::jsonb,
      $jx1t5oz2l$[{"t":"p","text":"基準型が日時と場所を固定した活動を用意し、相手には事前の出欠確認を求めず、気が向いた時にだけふらっと参加できる自由度を保証するルールを作ります。"},{"t":"p","text":"相手が個人での散策中に発見した新しいコースやトレーニング方法を基準型に共有し、基準型がそれをコミュニティの定例プログラムに採用することで、新鮮さを取り入れます。"},{"t":"p","text":"両者ともに低負荷な運動を好むため、一緒に動く際も過度な会話を強要せず、各自のペースで歩いたり動いたりできる適度な対人距離を保ちます。"}]$jx1t5oz2l$::jsonb,
      $jwmjfijpn$[{"t":"p","text":"基準型が次回の参加予定を相手に確定させようとした際、相手はスケジュールを縛られることに強い圧迫感を感じ、運動そのものから離脱してしまいます。"},{"t":"p","text":"基準型が全員での一体感や集団行動のルールを強調しすぎると、相手は同調圧力に疲弊し、リフレッシュのための運動が苦痛に変わってしまいます。"},{"t":"p","text":"基準型は相手の不定期な参加を不真面目さと捉え、相手は基準型の管理を過干渉と捉えることで、互いの運動スタイルに対する不信感が募りやすくなります。"}]$jwmjfijpn$::jsonb,
      $j649sly1u$[]$j649sly1u$::jsonb
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
      'GPMC', 'SFMH',
      $juq0l45yj$[{"t":"p","text":"ありたいの1軸のみが共通しており、感情的な起伏が少ないという点以外、運動の前提条件がすべて異なります。基準型が集団で計画的に穏やかな強度を継続するのに対し、相手は一人で気分の赴くままに高強度の挑戦を繰り返します。互いの活動スタイルが対極にあるため、同じ空間で同じ運動を共有することは極めて困難です。基準型が相手に集団への適応を求めたり、相手が基準型に突発的な冒険を要求したりすると、関係は即座に破綻します。互いの領域を侵さず、情報交換や単発のゲスト参加に留めることが、最も現実的で健全な関わり方です。"}]$juq0l45yj$::jsonb,
      $jz5yq3szc$[{"t":"p","text":"相手が単独で行った高強度の挑戦や珍しい体験談を、基準型のコミュニティで発表する機会を設け、物理的な同行ではなく情報の共有で互いを刺激し合います。"},{"t":"p","text":"相手が危険を伴う個人活動を行う際、基準型が緊急時の連絡先や安全確認のバックアップ役を担い、適切な距離を保ちながら運動の安全性を高める協力を行います。"},{"t":"p","text":"一緒に運動することを目的とせず、定期的に互いの近況やトレーニングの成果を報告し合うことで、異なる価値観から新しい視点を得る関係を維持します。"}]$jz5yq3szc$::jsonb,
      $jzkxwk8bz$[{"t":"p","text":"基準型が相手に定例活動への継続参加を強く促すと、相手は自由を奪われると感じて強く反発し、関係そのものが冷え込む原因となります。"},{"t":"p","text":"相手が事前の準備や安全確認なしに高強度の活動に基準型を誘い出そうとすると、基準型は無計画さとリスクの高さに強い不快感と拒絶を示します。"},{"t":"p","text":"基準型は地道な継続を、相手は瞬間の限界突破を運動の目的とするため、価値観が根本から噛み合わず、対話が平行線をたどって疲弊しやすくなります。"}]$jzkxwk8bz$::jsonb,
      $j7mb2017e$[]$j7mb2017e$::jsonb
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
      'GPMC', 'SFVC',
      $j0bafnr3m$[{"t":"p","text":"整えるの1軸のみが共通しており、低負荷で無理なく動くという身体的なペースは一致しています。しかし、それ以外の要素が大きく異なるため、運動の文脈が噛み合いにくいです。基準型が集団を計画的かつ客観的に管理しようとするのに対し、相手は一人でその日の気分と感情の波に従って動くことを好みます。相手にとって基準型のコミュニティは安心感がある一方で、定期参加の義務感は心理的な重荷となります。基準型にとって相手の気分による欠席は計画の阻害要因と映りますが、相手の流動性をシステムのバグではなく仕様として受け入れる度量が基準型に求められます。"}]$j0bafnr3m$::jsonb,
      $j4wpvxlie$[{"t":"p","text":"基準型が設定した定例活動に対し、相手が当日の気分で参加・不参加を自由に選択できる「ドロップイン形式」を認め、参加への心理的ハードルを最小化します。"},{"t":"p","text":"集団での活動とは別に、基準型と相手が1対1で短時間のウォーキングを行う機会を不定期に設け、相手が安心して自分のペースで動ける時間を作ります。"},{"t":"p","text":"相手が感じた活動場所の雰囲気や心地よさに関する感覚的なフィードバックを、基準型が環境改善の貴重なデータとして活用し、場の質を高めます。"}]$j4wpvxlie$::jsonb,
      $j1ciuk6gq$[{"t":"p","text":"相手が気分や体調を理由に欠席を繰り返すと、基準型はトレーニング計画の停滞を懸念し、相手の運動に対する誠実さに疑問を抱くようになります。"},{"t":"p","text":"基準型が次回の予定やメニューを論理的に決定しようと急かすと、相手は自分の感情が整理される前に決断を迫られ、運動そのものがストレスに変わってしまいます。"},{"t":"p","text":"相手が抱える運動への不安に対して基準型が客観的すぎる解決策を提示すると、相手は感情を無視されたと感じ、心を閉ざしてコミュニティから離脱します。"}]$j1ciuk6gq$::jsonb,
      $jdfppr0ef$[]$jdfppr0ef$::jsonb
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
      'GPMC', 'SFVH',
      $jglcas1z6$[{"t":"p","text":"共通する軸が一つもない完全な対極タイプです。基準型が集団・計画・ありたい・整えるという安定と継続の極致にあるのに対し、相手は一人・気分・なりたい・高めるという衝動と限界突破の極致にあります。運動を行う目的、環境、強度、心理状態のすべてが相反するため、同じ文脈で活動を共有することは不可能に近いです。基準型の活動に相手が参加すれば退屈と束縛を感じ、相手の活動に基準型が同行すれば危険と無計画さに疲弊します。互いの活動に一切干渉せず、完全に独立した存在として尊重し合うことが、唯一の摩擦回避策です。"}]$jglcas1z6$::jsonb,
      $jrrk19lwa$[{"t":"p","text":"互いの活動領域が全く異なることを前提とし、一緒に運動する計画を立てることは避け、それぞれの活動の成果を事後報告として共有する関係に留めます。"},{"t":"p","text":"相手の極限的なトレーニング体験談を、基準型がコミュニティ運営におけるリスク管理の事例、あるいは非日常の刺激として客観的に受け止めます。"},{"t":"p","text":"相手が単独で高リスクな挑戦を行う際、基準型が後方支援として緊急連絡網の管理のみを引き受け、実際の運動は完全に分離して行います。"}]$jrrk19lwa$::jsonb,
      $jwfskgpr2$[{"t":"p","text":"基準型が相手をコミュニティの定例活動に無理に組み込もうとした瞬間、相手は強い拒絶反応を示し、二度と活動を共にできなくなるほど関係が悪化します。"},{"t":"p","text":"相手がその場の思いつきで基準型に高強度の活動を要求すると、基準型は無計画さとリスクの高さに強い憤りを感じ、相手を無責任だと断じるようになります。"},{"t":"p","text":"基準型は相手の行動を無謀で危険と評価し、相手は基準型の行動を退屈で保守的と評価するため、運動を通じた相互理解の糸口が見つかりません。"}]$jwfskgpr2$::jsonb,
      $jpm5sgrrs$[]$jpm5sgrrs$::jsonb
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
      'GPMC', 'SPMC',
      $jvlx8h080$[{"t":"p","text":"計画とありたいと整えるの3軸が共通する隣接タイプです。感情に左右されず、計画的に無理のないペースで継続するという行動原理が一致しているため、言葉を尽くさずとも意図が伝わる高い相互理解が可能です。唯一の違いは複数人と一人の社会性であり、基準型がコミュニティの維持に価値を置くのに対し、相手は個人の自律的な活動を好みます。相手は基準型のコミュニティに属していても、集団の同調圧力には屈さず自分のペースを守ります。この適度な距離感を基準型が許容できれば、極めて良好で安定した関係が築けます。"}]$jvlx8h080$::jsonb,
      $j30jy4npw$[{"t":"p","text":"基準型がコミュニティの活動枠組みを提供し、相手がその中で自分のペースを乱さずに参加できるような、個人の裁量を大きく残したプログラムを設計します。"},{"t":"p","text":"相手が一人で熟考して得た最新の運動知識や合理的な計画案を、基準型がコミュニティ全体の運営方針やメニュー改善に積極的に取り入れます。"},{"t":"p","text":"両者ともに穏やかなペースを好むため、過度な会話を必要としない黙々としたウォーキングやジムトレーニングなど、静かな時間を共有します。"}]$j30jy4npw$::jsonb,
      $jf98skdn4$[{"t":"p","text":"基準型がコミュニティの結束を高めるために全員参加のレクリエーションを企画すると、相手は集団の熱を煩わしく感じて距離を置いてしまいます。"},{"t":"p","text":"基準型がコミュニティの運営会議や役割分担への積極的な参加を相手に強く求めると、相手は自分の時間を奪われると感じて難色を示し、参加意欲が減退します。"},{"t":"p","text":"基準型はコミュニティへの帰属意識を前提としますが、相手はコミュニティを活動手段の一つと見なしているため、組織への忠誠心に温度差が生じ、基準型が寂しさを感じます。"}]$jf98skdn4$::jsonb,
      $j8042e73z$[]$j8042e73z$::jsonb
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
      'GPMC', 'SPMH',
      $jk2andcjm$[{"t":"p","text":"計画とありたいの2軸を共有し、感情に流されず計画的に目標へ向かうという思考の土台は一致しています。しかし、複数人と一人、整えると高めるの違いが、計画の対象と強度に大きな差を生みます。基準型がコミュニティ全員の安全と継続を目的とした計画を立てるのに対し、相手は自分自身の限界を超えるための高強度な個人計画を立てます。互いに計画の合理性を重んじるため論理的な対話は成立しますが、目指す方向が「全体の底上げ」と「個人の頂点」で異なるため、相手をコミュニティの枠に収めようとせず、独立した専門家として扱うことが重要です。"}]$jk2andcjm$::jsonb,
      $j8uygqi7c$[{"t":"p","text":"基準型がコミュニティ全体の運営計画を、相手が個人のトレーニング計画をそれぞれ持ち寄り、論理的な視点から相互にレビューを行って計画の精度を高めます。"},{"t":"p","text":"相手をコミュニティ内の上級者向けアドバイザーとして位置づけ、基準型が管理する枠組みの中で相手の専門的な知見を活かす機会を作ります。"},{"t":"p","text":"互いの目標達成に向けた進捗を定期的に報告し合い、異なる領域で計画を遂行する者同士として、適度な距離感を保ちながら刺激を与え合います。"}]$j8uygqi7c$::jsonb,
      $jtb108nzn$[{"t":"p","text":"相手が自分の高強度な基準をコミュニティ全体の計画に適用しようとすると、基準型は参加者の脱落を危惧して強く反対し、論理的な対立が深まります。"},{"t":"p","text":"基準型が相手に初心者のフォローなどの役割を期待すると、相手は自身のトレーニング効率が低下すると判断して拒絶し、基準型は相手を非協力的だと感じます。"},{"t":"p","text":"基準型は全員のペースを合わせるための調整に時間を割きますが、相手はそれを非効率な時間の浪費と見なし、意思決定のスピード感を巡って不満を抱きます。"}]$jtb108nzn$::jsonb,
      $j3u5ej16h$[]$j3u5ej16h$::jsonb
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
      'GPMC', 'SPVC',
      $j3u0eapj7$[{"t":"p","text":"計画と整えるの2軸が共通し、無理のないペースで計画的に継続するという活動の基本方針は一致しています。しかし、複数人と一人の違いにより、基準型がコミュニティの定例を重視するのに対し、相手は個人のルーティンを最優先します。さらに、ありたいとなりたいの違いから、基準型が柔軟に状況を処理できるのに対し、相手はルーティンが崩れることに強いストレスを感じます。相手がコミュニティに参加する場合、その活動が相手の既存のルーティンに完全に合致している必要があるため、基準型が相手のこだわりを理解し、参加のハードルを下げる工夫が求められます。"}]$j3u0eapj7$::jsonb,
      $ju85wd8vu$[{"t":"p","text":"基準型が定例活動の日時や内容を完全に固定し、相手が自身の生活ルーティンとしてコミュニティ活動を組み込みやすい安定した環境を提供します。"},{"t":"p","text":"相手が抱える活動への不安に対し、基準型が事前に詳細なメニューやスケジュールを提示することで、相手が予測可能性を持って参加できるように配慮します。"},{"t":"p","text":"相手の毎日の継続的な個人活動を基準型が承認し、コミュニティへの参加頻度に関わらず、その地道な努力を尊重する姿勢を言葉で示します。"}]$ju85wd8vu$::jsonb,
      $j98jzm4ty$[{"t":"p","text":"基準型がコミュニティの都合で定例活動の日程を急に変更すると、相手は自分のルーティンが破壊されたと感じ、強い不満を抱いて参加をやめてしまいます。"},{"t":"p","text":"基準型が活動内容の詳細を当日の状況で決定しようとすると、相手は見通しが立たないことに強い不安を覚え、参加を躊躇するようになります。"},{"t":"p","text":"相手が自分のペースやルーティンを守ることに固執しすぎると、基準型はコミュニティの和を乱す非協力的な行為と見なし、対応に苦慮して関係がギクシャクします。"}]$j98jzm4ty$::jsonb,
      $jgumf3cq4$[]$jgumf3cq4$::jsonb
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
      'GPMC', 'SPVH',
      $jrz0ayl5y$[{"t":"p","text":"計画の1軸のみが共通する遠傍タイプです。目標から逆算してメニューを組み立てるという思考プロセスは一致していますが、その計画が向かう先は全く異なります。基準型がコミュニティ全員の安定した継続を目的とするのに対し、相手は自分自身の限界突破を目的とします。相手は一人・なりたい・高めるの特性から、自己の目標達成に対して強い執着を持ち、高強度なトレーニングを孤独に遂行します。基準型のコミュニティは相手にとって強度が低すぎ、また集団のペースに合わせることは非効率な苦痛でしかないため、計画の立て方という抽象的なレベルでのみ共鳴可能な関係です。"}]$jrz0ayl5y$::jsonb,
      $jx4613fxk$[{"t":"p","text":"互いの計画の立て方や進捗管理の手法について情報交換を行い、計画型という共通項を活かした知的な対話を通じて、互いの運動の質を高め合います。"},{"t":"p","text":"相手が設定した過酷な個人計画に対し、基準型が客観的な視点からオーバートレーニングや怪我のリスクを指摘し、冷静な安全装置として機能します。"},{"t":"p","text":"相手の目標達成の報告を基準型がコミュニティ内で共有し、他の参加者のモチベーション向上に繋げるという、直接同行しない形での協力を模索します。"}]$jx4613fxk$::jsonb,
      $jz4klmkof$[{"t":"p","text":"基準型が相手をコミュニティの活動に繰り返し誘うと、相手は自分のトレーニング計画の妨げになると判断し、冷淡に拒絶することで関係が冷え込みます。"},{"t":"p","text":"相手が自身のストイックな価値観や高負荷な基準を基準型に押し付けると、基準型はコミュニティの包括的な理念と相容れないとして強い反発を感じます。"},{"t":"p","text":"相手が目標未達に対して過剰な焦りや苛立ちを見せた際、基準型の落ち着いた客観的な対応が、逆に相手の感情を逆撫でする結果を招き、対話が断絶します。"}]$jz4klmkof$::jsonb,
      $j8g3ny83x$[]$j8g3ny83x$::jsonb
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
      'GPMH', 'GFMC',
      $j398g4oji$[{"t":"p","text":"複数人で活動することを好み、現在の状態を肯定的に捉える姿勢は共通していますが、運動のプロセスと強度に対する価値観が対照的な組み合わせです。基準型が目標達成に向けた緻密な計画と高強度な追い込みを重視するのに対し、相手はその場の気分を優先し、心身を穏やかに整えることを目的とします。基準型にとっての集団は成果を最大化するための機能的なチームですが、相手にとっての集団は心地よい時間を共有するためのコミュニティであり、運動を通じたコミュニケーションの質に大きな隔たりがあります。"}]$j398g4oji$::jsonb,
      $jmfzf6zon$[{"t":"p","text":"地域のファンランイベントやチャリティスポーツ大会など、社交性と目標設定の両方が必要とされる場を選ぶことが推奨されます。"},{"t":"p","text":"運動前後の調整においては、基準型が全体の方針を示しつつ、相手が提案する寄り道や食事などのリラックス要素を計画の一部としてあらかじめ組み込んでおくことが有効です。"},{"t":"p","text":"目標設定の際は、数値目標だけでなく楽しむこと自体を計画の項目に入れることで、互いの強度レベルを調整しやすくなります。"}]$jmfzf6zon$::jsonb,
      $jkmqh3ipo$[{"t":"p","text":"基準型が逆算した計画通りに本気で追い込もうとする成果志向の姿勢が、相手にとっては重い義務感やプレッシャーとなり、運動そのものの楽しさを奪ってしまいます。"},{"t":"p","text":"相手がその日の気分や体調を理由に突発的なメニュー変更を提案した際、基準型は自身の緻密な計画が崩されることに強いストレスを感じます。"},{"t":"p","text":"モチベーションが低下した際の回復アプローチの違いも衝突の原因となります。基準型が原因分析と計画の再構築によって立て直そうとするのに対し、相手は感情的な休息や気分の切り替えを求めるため、この対応の温度差が互いへの不信感を増幅させます。"}]$jkmqh3ipo$::jsonb,
      $jx1qouwrs$[]$jx1qouwrs$::jsonb
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
      'GPMH', 'GFMH',
      $j3gti33db$[{"t":"p","text":"仲間と共に高強度で限界に挑むという目的意識を共有するため、一度火がつけば圧倒的な熱量を生み出す組み合わせです。しかし、その熱狂に至るまでの準備プロセスが決定的に異なります。基準型が逆算された緻密な計画があることで安心して本気になれるのに対し、相手はその場やその瞬間の直感的な熱量によって突発的に着火します。事前準備の量と質に対する期待値の違いが、二人の間の最大のギャップとなります。"}]$j3gti33db$::jsonb,
      $jrui4u2yf$[{"t":"p","text":"障害物レースや高強度のサーキットトレーニングなど、非日常的で刺激的な種目を選ぶことが推奨されます。"},{"t":"p","text":"トレーニング中は、基準型がペースメーカーとして全体の進捗を管理し、相手がチームの士気を鼓舞して限界を引き出す役割を担うと良いです。"},{"t":"p","text":"事前の合意形成においては、計画の骨子だけを基準型が固め、細部は当日のノリで決める余白を残しておくことが重要です。"}]$jrui4u2yf$::jsonb,
      $j54gnmou8$[{"t":"p","text":"事前のコミットメントや準備の段階で、両者のモチベーションの構造的な違いが衝突を生みやすいです。"},{"t":"p","text":"当日のアクシデントや気分によって相手が突発的なコース変更やメニュー追加を提案した際、基準型は自身の計画が根底から覆されることに強い怒りを覚えます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、チームの崩壊を招く危険性があります。"}]$j54gnmou8$::jsonb,
      $j0d5f7530$[]$j0d5f7530$::jsonb
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
      'GPMH', 'GFVC',
      $jg6zefhte$[{"t":"p","text":"誰かと一緒に活動することを好む複数人型である点のみが共通しており、他の3軸はすべて異なる組み合わせです。基準型が計画と勝利、そして高強度を求めるのに対し、相手は心の安心と穏やかな絆を最優先します。基準型にとって運動は達成すべきミッションですが、相手にとっては心を癒し、他者と繋がるためのセラピーであり、運動に対する根本的な動機が全く異なります。"}]$jg6zefhte$::jsonb,
      $jutlvvmte$[{"t":"p","text":"初心者を広く受け入れるウォーキングイベントや、勝敗を競わないレクリエーションスポーツなど、心理的ハードルの低い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型が月に一度の定期開催といった大きな枠組みだけを設定し、その道中のサポートやメンバーのメンタルケアを相手に完全に委ねる形が良いです。"},{"t":"p","text":"運動後のコミュニケーションでは、基準型が成果を語る時間を短縮し、相手が重視する感情の共有や労いに時間を割くことが重要です。"}]$jutlvvmte$::jsonb,
      $j2b4012uz$[{"t":"p","text":"基準型のちゃんと結果を出そうという強度への要求が、相手にとっては期待に応えられないという恐怖や萎縮に繋がりやすいです。"},{"t":"p","text":"相手が心の状態を理由に参加を見送ったりペースを落としたりした際、基準型が計画の狂いとして事務的に処理しようとすると、相手は深く傷つきます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、最終的には相手が静かに去っていく結果になりやすいです。"}]$j2b4012uz$::jsonb,
      $j933lu9sc$[]$j933lu9sc$::jsonb
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
      'GPMH', 'GFVH',
      $jlus7f81i$[{"t":"p","text":"仲間と共に高強度で追い込むという共通点を持つが、着火のプロセスが異なる組み合わせです。基準型は緻密な計画を立てることで自ら静かに火をつけるのに対し、相手は周囲の熱量や感情のうねりに触れることで爆発的に限界を超える。冷静な戦略家と情熱的な伝道者という、対照的でありながら本気の場では強烈に共鳴し得る関係性です。"}]$jlus7f81i$::jsonb,
      $jpes3g3xl$[{"t":"p","text":"タイムトライアルや競技性の高いチームスポーツなど、明確な勝敗や記録が伴う種目を選ぶことが推奨されます。"},{"t":"p","text":"大会に向けた長期的なトレーニング計画は基準型が策定し、キツい練習メニューの最中にメンバーを鼓舞して限界を引き出す役目は相手に任せるといった分業が理想的です。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型がデータに基づいたフィードバックを行い、相手がそれを感情に訴える言葉に変換してチームに伝える形を取ると良いです。"}]$jpes3g3xl$::jsonb,
      $j6o6t3axk$[{"t":"p","text":"相手のモチベーションには波があり、スイッチが入らない日に基準型の計画が崩れると、なぜ今日に限って本気を出さないのかという不満が生じやすいです。"},{"t":"p","text":"相手はその場の雰囲気や感情で動くため、基準型が求める事前計画への合意が曖昧になりがちです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での足並みが乱れる原因となります。"}]$j6o6t3axk$::jsonb,
      $jyjuigbv6$[]$jyjuigbv6$::jsonb
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
      'GPMH', 'GPMC',
      $jo30r8kc0$[{"t":"p","text":"複数人、計画、ありたいという3つの軸を共有する似た者同士ですが、運動の強度において決定的な違いを持つ組み合わせです。基準型が目標に向けて強度を上げ、勝利を掴みたいと望むのに対し、相手は穏やかなペースで、コミュニティを長く存続させたいと考えます。同じ場にいながら、求める熱量と最終的なゴールに明確な温度差が存在します。"}]$jo30r8kc0$::jsonb,
      $jzpa4uyff$[{"t":"p","text":"定期的なランニングクラブやヨガサークルなど、継続性が重視される環境を選ぶことが推奨されます。"},{"t":"p","text":"相手が運営するコミュニティの中で、基準型が大会出場を目指す有志チームを立ち上げるような、入れ子構造の棲み分けが有効です。"},{"t":"p","text":"トレーニングの設計では、共通の計画性を活かって、低強度セクションと高強度セクションを明確に分けたスケジュールを作成すると良いです。"}]$jzpa4uyff$::jsonb,
      $j4x7vqk97$[{"t":"p","text":"基準型がもっと本気でやろうとコミュニティ全体の強度を上げようとすると、相手が守ってきた穏やかなペースが崩れ、強い抵抗感を生みます。"},{"t":"p","text":"基準型が現状に満足できず次々と新しい目標や計画を提案すると、相手はそれをコミュニティの調和を乱すノイズとして警戒するようになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、協力体制が形骸化する危険があります。"}]$j4x7vqk97$::jsonb,
      $jf612hlcw$[]$jf612hlcw$::jsonb
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
      'GPMH', 'GPVC',
      $jka0wo1rz$[{"t":"p","text":"仲間と計画的に進めるという枠組みは同じですが、その中身が勝利と高強度を求める基準型と、継続と安心を求める相手とで対立しやすい組み合わせです。基準型がメンタルの安定を武器に強気に攻めるのに対し、相手は仲間への誠実さを胸に守りを固めます。計画を立てるという行為の目的が、前進するためか、不安を解消するためかという根本的な違いがあります。"}]$jka0wo1rz$::jsonb,
      $jk83p6gcq$[{"t":"p","text":"駅伝やチーム対抗のフィットネスチャレンジなど、全員の協力が必要な種目を選ぶことが推奨されます。"},{"t":"p","text":"基準型が厳しい練習メニューを組んだ際、相手が初心者のために少しペースを落とす枠を作ろうと提案するなど、基準型の計画に相手が安全網を張る形が理想的です。"},{"t":"p","text":"運動前後のミーティングでは、基準型が数値的な進捗を確認し、相手がメンバーの体調やメンタル面を報告する体制を整えると良いです。"}]$jk83p6gcq$::jsonb,
      $juwa8esi1$[{"t":"p","text":"基準型が強気に高い目標や高強度を要求しすぎると、相手の全員が無理なく続けられることという最優先事項と激しく衝突します。"},{"t":"p","text":"相手が精神的な揺らぎからペースを落とした際、安定している基準型にはその理由が理解しづらく、正論でプレッシャーをかけて追い詰めてしまいます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の遂行が困難になります。"}]$juwa8esi1$::jsonb,
      $j8s76vpta$[]$j8s76vpta$::jsonb
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
      'GPMH', 'GPVH',
      $jx24xo2q6$[{"t":"p","text":"チームで計画的に本気で取り組むという3つの軸を共有し、公式コンテンツでも相性が良いとされる補完的な組み合わせです。基準型が冷静な戦略眼で計画を引くのに対し、相手はチームの感情と熱量を高めて限界を突破させる。戦略と情熱が見事に噛み合う、強力なタッグになり得る関係性です。"}]$jx24xo2q6$::jsonb,
      $jeea3iwmh$[{"t":"p","text":"競技スポーツの大会出場や、明確なランクアップを目指すトレーニングキャンプなど、高い目標設定が可能な環境を選ぶことが推奨されます。"},{"t":"p","text":"重要な試合に向けて、基準型が調子のピーク合わせのスケジュールを緻密に計算し、相手がそのスケジュールの中でメンバーの士気を最高潮に持っていく声かけを行うといった連携が理想的です。"},{"t":"p","text":"トレーニング中は、基準型が客観的なデータで現状を把握し、相手がそれを情熱的な鼓舞に変えてチームに浸透させる形を取ると良いです。"}]$jeea3iwmh$::jsonb,
      $jquttvpx0$[{"t":"p","text":"相手が感情になりすぎた場面で、基準型が冷静に計画通りやろうと正論をぶつけると、熱量に水を差す形になり反発を招きます。"},{"t":"p","text":"基準型が計画を絶対視する一方で、相手はその日のチームの雰囲気や感情の波次第で計画を無視して限界を超えようと突発的な行動に出ることがあります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、チームの結束力が揺らぐ原因となります。"}]$jquttvpx0$::jsonb,
      $jp5cbnbbv$[]$jp5cbnbbv$::jsonb
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
      'GPMH', 'SFMC',
      $jgdlabdzz$[{"t":"p","text":"メンタルの安定感だけを共有し、他のすべての要素が相反する組み合わせです。基準型がチーム・計画・高強度を求めるのに対し、相手はひとり・気分・低強度を愛する。運動の定義そのものが真逆であり、基準型の当たり前が相手にとっては最大のプレッシャーとなる、相容れない関係性です。"}]$jgdlabdzz$::jsonb,
      $js4utxkhu$[{"t":"p","text":"大きな公園での自由行動や、各自のペースで進めるオープン参加型のスポーツイベントなど、拘束力の弱い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型がチームで厳しいトレーニングを行っているグラウンドの端で、相手が一人で気ままにストレッチをしているような距離感が望ましいです。"},{"t":"p","text":"コミュニケーションにおいては、基準型が活動の成果を報告するのではなく、ただ同じ時間に同じ場所にいたという事実だけを肯定するに留めるべきです。"}]$js4utxkhu$::jsonb,
      $jky65tpd9$[{"t":"p","text":"基準型が無意識に一緒に目標を立てようと提案するだけで、相手は重苦しさを感じて静かに離れていってしまいます。"},{"t":"p","text":"相手の今日は気分じゃないから行かないという気まぐれな行動が、基準型の綿密な人数計算や計画に穴を開け、基準型側に不満が蓄積しやすいです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、二度と一緒に動くことがなくなります。"}]$jky65tpd9$::jsonb,
      $jkdwl4ntk$[]$jkdwl4ntk$::jsonb
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
      'GPMH', 'SFMH',
      $jhr1u0inm$[{"t":"p","text":"安定したメンタルで高強度に挑むという動力の質は一致していますが、その発揮の仕方が異なる組み合わせです。基準型がチームと計画を用いて勝利に向かうのに対し、相手は一人の衝動に従って全力を出す。本気で取り組む価値観は同じでも、誰と、どう準備するかが根本的に違います。"}]$jhr1u0inm$::jsonb,
      $jjtyxpin8$[{"t":"p","text":"トレイルランニングやサーキットトレーニングなど、個々の限界に挑みつつ同じ場所で活動できる種目を選ぶことが推奨されます。"},{"t":"p","text":"リレー形式の競技などで、基準型が全体の走順やタイム配分を緻密に計算し、相手には限界まで飛ばしてくれとだけ指示を出すような関係が理想的です。"},{"t":"p","text":"運動後の振り返りでは、基準型が計画の達成度を確認し、相手がその瞬間の興奮を語るという、異なる視点からの満足感を共有すると良いです。"}]$jjtyxpin8$::jsonb,
      $jrwyr10oe$[{"t":"p","text":"基準型が一緒に練習計画を立てようとチームの枠組みに巻き込もうとすると、相手はそれを窮屈な縛りと感じて反発します。"},{"t":"p","text":"相手が当日の気分で参加を取りやめたり、独自の無謀な動きをしたりすると、チームとしての計画を重んじる基準型にとっては計算が狂い、強いストレスとなります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での共鳴が失われます。"}]$jrwyr10oe$::jsonb,
      $j9altidxs$[]$j9altidxs$::jsonb
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
      'GPMH', 'SFVC',
      $j7iic5equ$[{"t":"p","text":"4つの軸すべてが対極にある、完全に相反する組み合わせです。基準型がチームで計画的に高強度で勝つことを目指すのに対し、相手は一人で直感的に、心が整った時にゆっくり動くことを求めます。運動を達成の手段と捉えるか心の癒しと捉えるか、根本的なパラダイムが異なり、交わる点が皆無に等しいです。"}]$j7iic5equ$::jsonb,
      $jmr9tish3$[{"t":"p","text":"参加自由のゆるいウォーキングや、各自が好きな時に来て好きな時に帰れるオープンスペースでの活動など、極めて拘束力の低い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型は相手に対して何も期待せず、何も要求しないというスタンスを徹底することが求められます。"},{"t":"p","text":"運動中のコミュニケーションは最小限に留め、互いの世界を侵さないよう配慮すべきです。"}]$jmr9tish3$::jsonb,
      $jru0zcsfj$[{"t":"p","text":"基準型の勝つために追い込むという当たり前の姿勢が、繊細な相手にとっては過大なプレッシャーとなり、運動そのものを苦痛にさせてしまいます。"},{"t":"p","text":"相手が心の状態を理由に欠席すれば基準型の緻密な計画は崩れ、基準型はなぜ無責任な行動をとるのかと憤ります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、修復不可能な断絶に至ります。"}]$jru0zcsfj$::jsonb,
      $jmfnsdl1b$[]$jmfnsdl1b$::jsonb
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
      'GPMH', 'SFVH',
      $jh3tr760d$[{"t":"p","text":"高強度で全力で追い込むという一点のみを共有する組み合わせです。全力を出すという結果は同じでも、基準型がチームの計画を前提とするのに対し、相手は個人のスイッチを前提とします。交わることのない平行線のように見えて、本気の場では強烈に共鳴し合う可能性を秘めています。"}]$jh3tr760d$::jsonb,
      $j5z82rc98$[{"t":"p","text":"競技会やタイムトライアルなど、極限まで自分を追い込むことが正当化される環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型は相手を計算できる戦力としてではなく、ハマれば最強のジョーカーとして扱うべきです。"},{"t":"p","text":"運動後のケアでは、基準型が客観的な結果を評価し、相手が主観的な達成感を爆発させるという、異なる満足の形を認め合うことが重要です。"}]$j5z82rc98$::jsonb,
      $j2cw6y174$[{"t":"p","text":"基準型がチームの責任として定期的な参加や計画へのコミットを求めると、相手は義務感を感じてスイッチが遠ざかってしまいます。"},{"t":"p","text":"相手の参加が予測不可能であることは基準型の計画に穴を開ける原因となり、チームへの関与をどこまで求めるかという点で常に認識のズレを抱えることになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での信頼関係が崩壊します。"}]$j2cw6y174$::jsonb,
      $j78kkw4cf$[]$j78kkw4cf$::jsonb
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
      'GPMH', 'SPMC',
      $j4akosl23$[{"t":"p","text":"計画性とメンタルの安定感を共有しますが、運動の目的が異なる組み合わせです。基準型がチームで高強度に勝ちに行くための逆算計画を立てるのに対し、相手は一人でゆっくり継続するためのルーティンを設計します。計画という共通言語を持ちながら、描く未来図が全く違う関係性です。"}]$j4akosl23$::jsonb,
      $jcxwwxg8l$[{"t":"p","text":"定期的な合同練習会や、各自のログを共有し合うオンラインコミュニティなど、計画性を活かせる環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型がチームの全体計画を立てる際、相手には毎週決まった時間だけこのメニューを担当してほしいとピンポイントでルーティンを依頼すると良いです。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型が目標への進捗を語り、相手が継続のコツや身体の整え方を語るという、異なる知見を交換し合う形を取ると良いです。"}]$jcxwwxg8l$::jsonb,
      $j74aqbq8d$[{"t":"p","text":"基準型がもっと強度を上げようと提案すると、相手は今の継続可能なペースを崩したくないと論理的に抵抗を示します。"},{"t":"p","text":"基準型が相手をチームの熱狂に巻き込もうとすると、一人の静かな時間を愛する相手は静かに距離を置くようになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の共有が途絶える原因となります。"}]$j74aqbq8d$::jsonb,
      $j9ir9nizi$[]$j9ir9nizi$::jsonb
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
      'GPMH', 'SPMH',
      $j1tzbjkb9$[{"t":"p","text":"計画的、安定、高強度という3つの軸を共有し、公式コンテンツでも相性が良いとされる組み合わせです。違いはチームかソロかという点のみです。基準型がチームの勝利に向けて燃えるのに対し、相手は自己記録の更新に向けて燃える。外向きと内向きの向上心が美しく交差する関係です。"}]$j1tzbjkb9$::jsonb,
      $jufm1el9n$[{"t":"p","text":"マラソン大会の出場や、専門的なトレーニングジムでの合同セッションなど、高い専門性が求められる環境を選ぶことが推奨されます。"},{"t":"p","text":"同じ大会に向けて、基準型はチーム全体の完走計画を練り、相手は自身の目標達成の緻密なラップ表を練る。週末の高強度トレーニングだけは合流して互いを追い込むといった共闘が有効です。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型がチームの士気を高め、相手が最新のトレーニング理論やデータを提供する形を取ると良いです。"}]$jufm1el9n$::jsonb,
      $jue9sjeco$[{"t":"p","text":"基準型がチームの一員として相手を過剰に巻き込もうとし、チームのペースに合わせることを強要すると、一人の集中を好む相手のペースを乱してしまいます。"},{"t":"p","text":"双方が計画に対して強いこだわりと自信を持っているため、練習メニューやアプローチの違いでどちらの計画が優れているかという主導権争いが起きることがあります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、戦友としての信頼が揺らぐ原因となります。"}]$jue9sjeco$::jsonb,
      $j0z2p9wwd$[]$j0z2p9wwd$::jsonb
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
      'GPMH', 'SPVC',
      $jydi8xkb9$[{"t":"p","text":"計画的であることのみを共有し、他の要素がすべて異なる組み合わせです。基準型が勝利に向けた逆算の計画を立てるのに対し、相手は毎日同じ型を完璧に反復するための計画を立てます。計画が好きという点は同じでも、基準型は変化と達成を求め、相手は不変と安心を求めます。"}]$jydi8xkb9$::jsonb,
      $j8qx1hfj3$[{"t":"p","text":"毎週決まった曜日・時間に行う定期練習や、定型化されたトレーニングメニューの実施など、予測可能性の高い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型が毎月決まった日に集まるという確固たるルールを設定し、その運営の定型業務を相手に任せるといった分業が良いです。"},{"t":"p","text":"コミュニケーションにおいては、基準型が将来の展望を語りすぎず、相手が今日のルーティンを完遂したことを称賛する形を取るべきです。"}]$j8qx1hfj3$::jsonb,
      $jtst4rxfi$[{"t":"p","text":"基準型が勝利のために強度を上げようと提案することは、相手が何よりも大切にしている完璧なルーティンを根こそぎ破壊する行為となります。"},{"t":"p","text":"基準型が相手をチームの活動に強く巻き込もうとすると、一人の時間を愛し、精神的な揺らぎを抱える相手は過剰なプレッシャーを感じてしまいます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の継続が困難になります。"}]$jtst4rxfi$::jsonb,
      $j24wvlq9k$[]$j24wvlq9k$::jsonb
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
      'GPMH', 'SPVH',
      $jht6uru1k$[{"t":"p","text":"計画的かつ高強度という強力な動力を共有する組み合わせです。しかし、基準型がチームを率いて外向きの勝利を目指すのに対し、相手は一人で緻密な計画を練り、内向きの自己超越を目指します。同じようにストイックでありながら、誰と、何のために限界を超えるのかという哲学が異なります。"}]$jht6uru1k$::jsonb,
      $jnefhkmgl$[{"t":"p","text":"専門的なトレーニング施設や、個々のデータ測定が可能な環境を選ぶことが推奨されます。"},{"t":"p","text":"相手が抱える計画通りにいかないことへの不安を、基準型の安定感が優しくカバーする関係が理想的です。"},{"t":"p","text":"運動後の振り返りでは、基準型がチームへの貢献を評価し、相手が自己の限界突破を記録するという、異なる達成の形を尊重し合うと良いです。"}]$jnefhkmgl$::jsonb,
      $jkkzldrs7$[{"t":"p","text":"基準型がチームで一緒にやろうと誘っても、相手は一人のほうが計画の精度が保てるとして強い抵抗を示しやすいです。"},{"t":"p","text":"計画が崩れた際、メンタルが安定している基準型はすぐに代替案に切り替えて前進しようとしますが、完璧主義の相手は深く絶望し、投げ出してしまいやすいです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での協力体制が崩壊します。"}]$jkkzldrs7$::jsonb,
      $jxn9y4mia$[]$jxn9y4mia$::jsonb
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
      'GPVC', 'GFMC',
      $j2xilpwgl$[{"t":"p","text":"複数人での低強度トレーニングを好む点は共通していますが、運動の約束に対する心理的重みが対照的です。計画を重んじ他者への責任感を継続の糧とする基準型に対し、相手はその場の楽しさや気分の高まりを優先して動きます。基準型が定例の練習を義務として誠実に守ろうとする一方で、相手は自由な参加スタイルを好むため、継続の足並みを揃える際に温度差が生じやすいです。"}]$j2xilpwgl$::jsonb,
      $j6yd8xfcp$[{"t":"p","text":"基準型が練習の日時や場所の固定といった運営面を担い、相手が当日の雰囲気作りや新しい参加者への声掛けを担当する役割分担が効果的です。"},{"t":"p","text":"どちらも高負荷なトレーニングを求めないため、ウォーキングや軽めの球技など、会話を楽しみながら体を動かせる種目を選ぶと自然にペースが合います。"},{"t":"p","text":"相手の気分を尊重しつつも基準型が事前にリマインドを送るなど、計画性と柔軟性を組み合わせたスケジュール管理を行うことで、互いにストレスなく集まれます。"}]$j6yd8xfcp$::jsonb,
      $jz0un700a$[{"t":"p","text":"相手が当日の気分で急に欠席を決めた際、準備を整えて待っていた基準型は自分の誠実さが軽んじられたと感じて心理的なダメージを受けやすいです。"},{"t":"p","text":"基準型が毎週必ず参加することを前提にメニューを組んでいると、相手の不定期な参加スタイルによって計画が停滞し、基準型が一人で負担を抱え込みます。"},{"t":"p","text":"基準型が場を維持しようと真剣になるほど、相手には運動の場が重苦しい義務に感じられ、逆に相手が気楽さを求めると基準型は場を軽視されていると誤解します。"}]$jz0un700a$::jsonb,
      $j7qqxnj82$[]$j7qqxnj82$::jsonb
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
      'GPVC', 'GFMH',
      $jlc1g4wna$[{"t":"p","text":"複数人で動くという点以外は対照的なスタイルを持ちます。基準型は同じ場所で同じメンバーと低強度の運動を誠実に続けることに価値を置きますが、相手は非日常的なイベントや高強度の挑戦で爆発的に燃え上がることを好みます。相手の熱量が冷めた際に見せる急激な離脱は、場を守ることを使命とする基準型にとって理解しがたい振る舞いとなり、運動の継続性を巡って心理的な距離が生じやすいです。"}]$jlc1g4wna$::jsonb,
      $jbuetaeak$[{"t":"p","text":"相手が刺激的なスポーツイベントや大会を見つけて提案し、基準型がその参加申し込みや練習スケジュールの調整を担うことで、期間限定のプロジェクトとして協力します。"},{"t":"p","text":"基準型が普段のルーティンでは選ばないような、相手が好むアクティブな体験型イベントに一度限りのゲストとして参加し、非日常の刺激を共有します。"},{"t":"p","text":"大会当日などの特別な場面では相手の爆発的なエネルギーを頼りにし、日常のコンディショニングでは基準型の安定した継続力を活かすといった役割の切り替えを行います。"}]$jbuetaeak$::jsonb,
      $jj4vrf1j9$[{"t":"p","text":"基準型が丁寧に育ててきた定例の練習会に対し、相手が飽きや気分の変化を理由に突然来なくなると、基準型は裏切られたような深い喪失感を抱きます。"},{"t":"p","text":"相手が求める高強度のトレーニングに基準型が無理についていこうとすると、身体的な疲労だけでなく、自分のペースを乱されることへの心理的な抵抗が強まります。"},{"t":"p","text":"基準型が事前の準備や段取りを完璧に整えていても、相手が当日の直感で内容の変更を求めると、計画を信頼の基盤とする基準型は混乱し、運動への意欲を削がれます。"}]$jj4vrf1j9$::jsonb,
      $jb5ewh1eo$[]$jb5ewh1eo$::jsonb
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
      'GPVC', 'GFVC',
      $jmafh43lh$[{"t":"p","text":"複数人での穏やかな運動を好む点で非常に親和性が高いです。どちらも運動を通じて心身を整えることを重視し、仲間とのつながりを大切にする繊細な感性を持っています。計画を重んじる基準型と、その日の気分や心の状態を優先する相手という違いはありますが、互いに相手を思いやる気持ちが強いため、運動の場を温かく維持できます。相手が気分の落ち込みで欠席した際、基準型がそれを責めずに受け入れることができれば、長期的な信頼関係が築けます。"}]$jmafh43lh$::jsonb,
      $jl04814i5$[{"t":"p","text":"基準型が活動のスケジュールや場所の確保といった外枠を整え、相手が当日のメンバーの表情や心の変化に寄り添うといった、役割の補完を行います。"},{"t":"p","text":"どちらもなりたい由来の繊細さを持つため、運動の合間に今の体調や気分の揺れを素直に共有できるような、リラックスした休憩時間を多めに設けます。"},{"t":"p","text":"計画を固定しすぎず、当日の参加者のコンディションに合わせて運動の内容を柔軟に変更できるような、余白のあるプランを基準型が事前に用意しておきます。"}]$jl04814i5$::jsonb,
      $jdfzix8cb$[{"t":"p","text":"基準型が「約束を守ること」を誠実さの証と考える一方で、相手が「自分の心に正直であること」を優先して欠席すると、基準型は場が崩れたと感じて不安になります。"},{"t":"p","text":"基準型が良かれと思って立てた綿密な計画が、繊細な相手にとっては「必ず行かなければならない」というプレッシャーに変わり、運動そのものが苦痛になります。"},{"t":"p","text":"互いに相手の顔色を伺いすぎるあまり、運動の強度や内容に不満があっても言い出せず、表面的な調和の裏で心理的な疲弊が蓄積していきます。"}]$jdfzix8cb$::jsonb,
      $jeokqk7yt$[]$jeokqk7yt$::jsonb
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
      'GPVC', 'GFVH',
      $ja5s0rnu7$[{"t":"p","text":"仲間との感情的な絆を重視する点は共通していますが、運動に求める熱量と継続のスタイルが異なります。基準型は静かに約束を守り、低強度の活動を毎週積み重ねることで信頼を育みますが、相手は周囲を巻き込みながら高強度の体験を共有し、一気に熱量を高めることを好みます。相手の爆発的なエネルギーに基準型が圧倒され、無理に合わせようとして疲弊するリスクがある一方、互いの役割を認め合えば、安定した運営と活気ある活動を両立できます。"}]$ja5s0rnu7$::jsonb,
      $jy7v7mbra$[{"t":"p","text":"相手が「このスポーツが面白い」と情熱を持って提案したものを、基準型が無理のない練習頻度や継続可能なスケジュールに落とし込み、熱量を長続きさせる工夫をします。"},{"t":"p","text":"なりたい由来の繊細さを互いに持っているため、運動後の振り返りで「あの時のプレーが嬉しかった」といった感情的なフィードバックを積極的に伝え合い、絆を深めます。"},{"t":"p","text":"相手がリードする高強度のイベントと、基準型が守る低強度の定例練習を明確に分け、基準型が自分のペースを保てる安全圏を確保しながら参加します。"}]$jy7v7mbra$::jsonb,
      $jjk6h5nv3$[{"t":"p","text":"相手がその場のノリで運動の強度を急激に上げようとした際、着実な調整を好む基準型は身体的な不安と計画の乱れを感じて反発しやすくなります。"},{"t":"p","text":"相手が新しい刺激を求めて次々と活動内容を変えると、一つのことを誠実に続けたい基準型は、これまでの積み重ねが無意味になったように感じて意欲を失います。"},{"t":"p","text":"どちらも感情の振れ幅が大きいため、運動中の些細な言葉遣いや態度の変化を敏感に察知し、誤解から深刻な心理的対立に発展して運動の継続が困難になります。"}]$jjk6h5nv3$::jsonb,
      $jy20qtfb6$[]$jy20qtfb6$::jsonb
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
      'GPVC', 'GPMC',
      $jdcoognrj$[{"t":"p","text":"複数人での計画的な低強度トレーニングを好む、極めて安定感のあるペアです。どちらも運動の場を長期的に守り、参加者が安心して続けられる環境を作ることに高い意欲を持ちます。基準型は「仲間に迷惑をかけたくない」という繊細な責任感から動き、相手は感情の揺れが少なく淡々と計画を遂行します。基準型の細やかな気配りと相手の揺るぎない安定感が組み合わさることで、コミュニティ全体の継続率が飛躍的に高まります。"}]$jdcoognrj$::jsonb,
      $js3726eno$[{"t":"p","text":"相手が全体の年間スケジュールや予算管理などの大枠を決定し、基準型が参加者一人ひとりの体調やモチベーションの細かな変化をフォローする役割に徹します。"},{"t":"p","text":"運動の前後で、計画の進捗だけでなく「最近のコミュニティの雰囲気」について意見交換する時間を持ち、二人の視点を合わせることで運営の質を高めます。"},{"t":"p","text":"どちらも急な変更を嫌うため、天候不順時の代替案や怪我をした際の対応マニュアルを事前に二人で作成し、万全の準備を整えて安心感を共有します。"}]$js3726eno$::jsonb,
      $jduqntiqa$[{"t":"p","text":"基準型が活動後の反省会で「あの人の表情が気になった」と繊細な懸念を伝えた際、ありたいな相手が「計画通り進んでいるから問題ない」と合理的に切り捨てると、基準型は孤独を感じます。"},{"t":"p","text":"相手が効率を優先して運動メニューを簡略化しようとすると、参加者との情的なつながりを重視する基準型は、場が冷たくなったように感じて抵抗を示します。"},{"t":"p","text":"基準型が心配事から決断を先延ばしにしていると、感情に左右されない相手が強引に物事を進めてしまい、基準型が自分の役割を否定されたように受け取ります。"}]$jduqntiqa$::jsonb,
      $jt9h1s7tu$[]$jt9h1s7tu$::jsonb
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
      'GPVC', 'GPMH',
      $jxujvn6mo$[{"t":"p","text":"グループで計画的に進める姿勢は一致していますが、運動の目的と強度に対する考え方が異なります。基準型は全員が脱落せず穏やかに続けることを重視しますが、相手は高い目標を掲げ、そこに向けてチームの能力を高めることに情熱を注ぎます。相手の揺るぎない自信と達成志向は基準型にとって頼もしい反面、繊細な参加者への配慮が欠けているように見え、運動の方向性を巡って葛藤が生じやすいです。"}]$jxujvn6mo$::jsonb,
      $jzwj9ws9h$[{"t":"p","text":"相手が大会での記録更新や技術向上といった高い目標を設計し、基準型がその目標に到達するまでの過程でメンバーが無理をしないよう調整役を担います。"},{"t":"p","text":"どちらも逆算思考が得意なため、長期的なトレーニング計画を練る会議を定期的に設け、論理的に納得感のあるメニューを二人で作り上げます。"},{"t":"p","text":"相手の安定したメンタリティを活かし、基準型が不安を感じた際に「この計画で大丈夫だ」と背中を押してもらう関係性を意識的に構築します。"}]$jzwj9ws9h$::jsonb,
      $jq6b351v3$[{"t":"p","text":"相手がチーム全体の強度を上げようと提案した際、基準型は「ついていけない人が出るのではないか」という不安から強く反対し、議論が平行線になります。"},{"t":"p","text":"運動後の振り返りで、基準型が自分の至らなさを繊細に反省している横で、相手が淡々と次の高い目標を語り始めると、基準型は突き放されたような感覚に陥ります。"},{"t":"p","text":"相手が結果を重視して計画を合理的に変更しようとすると、決まった手順を守ることで安心を得ている基準型は、場が不安定になったと感じて混乱します。"}]$jq6b351v3$::jsonb,
      $jlhos3flp$[]$jlhos3flp$::jsonb
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
      'GPVC', 'GPVH',
      $jnfw8ndo5$[{"t":"p","text":"仲間への強い責任感と計画性を共有する、非常に誠実なペアです。どちらも「一度決めた約束は必ず守る」という価値観をなりたい由来の繊細な感受性で支えており、運動の場を維持することへの熱量は同等です。違いは負荷への向き合い方のみで、基準型が穏やかな継続を願うのに対し、相手は高みを目指す挑戦を仲間に求めます。互いの「場を大切にしたい」という根底の想いを信頼し合えれば、最強の運営パートナーとなります。"}]$jnfw8ndo5$::jsonb,
      $jgeaa3g34$[{"t":"p","text":"どちらも約束を破られると深く傷つく特性を持つため、欠席連絡のルールや遅刻への対応など、誠実さを確認し合える細かな約束事をあらかじめ決めておきます。"},{"t":"p","text":"相手が掲げる高い目標に対し、基準型が「全員が脱落しないためのセーフティネット」としてトレーニング強度を微調整する役割を担い、チームの崩壊を防ぎます。"},{"t":"p","text":"運動後のミーティングでは、技術的な反省だけでなく「今日のみんなの表情はどうだったか」という感情面の共有を重視し、なりたい同士の深い共感を確認し合います。"}]$jgeaa3g34$::jsonb,
      $jz3jds89a$[{"t":"p","text":"相手がチーム全体の士気を高めるために厳しい練習を課そうとした際、基準型は「これでは誰かが傷ついてしまう」と過剰に心配し、相手の熱意に水を差してしまいます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の指導や指摘が少しでも語気が強まると、相手を攻撃していると誤解し、深刻な感情的しこりを残します。"},{"t":"p","text":"基準型が全員の参加を最優先するあまり、本気で上を目指したい相手の向上心を「和を乱すもの」として無意識に抑え込んでしまい、相手の不満を募らせます。"}]$jz3jds89a$::jsonb,
      $jxdgtakqm$[]$jxdgtakqm$::jsonb
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
      'GPVC', 'SFMC',
      $j68t3upv3$[{"t":"p","text":"低強度の運動を好む点は一致していますが、運動の場に対する向き合い方が正反対です。基準型は固定メンバーとの約束を誠実に守り、計画された定例活動を継続の柱としますが、相手は一人でその日の気分に従って自由に歩くことを好みます。基準型が相手をコミュニティの枠に当てはめようとすると、相手は束縛を感じて離れ、基準型は相手の気まぐれな参加スタイルに不誠実さを感じて傷つくといった、構造的なすれ違いが生じやすいです。"}]$j68t3upv3$::jsonb,
      $jpkubb8qe$[{"t":"p","text":"基準型が主催する定例ウォーキングなどを「予約不要・出入り自由」のオープンな形式にし、相手が気が向いた時だけふらりと立ち寄れるような、緩やかな接点を維持します。"},{"t":"p","text":"相手が一人で見つけてきた魅力的な散歩コースや景色の情報を、基準型がコミュニティの活動プランに取り入れるといった、情報の循環による間接的な協力を楽しみます。"},{"t":"p","text":"どちらも身体的な負荷を上げすぎないことを良しとするため、一緒に動く際は「今日はここまで」と早めに切り上げる合意を最初に取り、互いの体力を尊重し合います。"}]$jpkubb8qe$::jsonb,
      $j6rnui136$[{"t":"p","text":"基準型が「来週も待っています」と誠実に伝えた言葉が、ありたいな相手にとっては「来なければならない」という重圧に感じられ、次回の参加を躊躇させる原因になります。"},{"t":"p","text":"相手が当日の直感で別の場所へ行くと決めた際、計画を信頼の証とする基準型は、自分の準備や想いが無下にされたと感じて深い心理的なダメージを負います。"},{"t":"p","text":"基準型がコミュニティの団結力を高めようとイベントを企画しても、一人で動くことを好む相手が冷淡な反応を示すと、基準型は自分の努力を否定されたように感じます。"}]$j6rnui136$::jsonb,
      $jp7mojueo$[]$jp7mojueo$::jsonb
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
      'GPVC', 'SFMH',
      $j7g3v1kcl$[{"t":"p","text":"全4軸が異なる対極のタイプであり、運動の価値観が根本から衝突しやすいです。基準型は固定の仲間と計画的に低強度の運動を続けることで安心感を得ますが、相手は一人で直感に従い、高強度の冒険に挑むことで充実感を得ます。相手の予測不能な行動と激しい負荷志向は、場を整えたい基準型にとって最大の不安要素となり、同じ活動の枠組みに留まろうとすると、双方が多大なストレスを抱えることになります。"}]$j7g3v1kcl$::jsonb,
      $jbcrf9lm5$[{"t":"p","text":"互いの運動スタイルが全く別物であることを認め、一緒に動くことよりも、活動後にそれぞれの体験を報告し合う「非同期的な交流」に留めます。"},{"t":"p","text":"相手が一人で挑む過酷な挑戦に対し、基準型が安否確認や緊急連絡先を引き受けるといった、運動そのものには関わらない後方支援の形で協力します。"},{"t":"p","text":"相手が好む刺激的な場所や種目の話を、基準型が自分のコミュニティの「特別な日のイベント案」として安全にアレンジして取り入れるためのヒントにします。"}]$jbcrf9lm5$::jsonb,
      $jryd2k15y$[{"t":"p","text":"相手がその場の思いつきで「もっとハードなコースに行こう」と提案した際、安全と計画を最優先する基準型は、自分たちの居場所を破壊されるような恐怖を感じます。"},{"t":"p","text":"基準型が仲間のために用意した丁寧な段取りを、相手が「自由がない」と一蹴したり無視したりすると、基準型は自分の存在意義を否定されたと感じて深く傷つきます。"},{"t":"p","text":"相手のありたい由来の淡白な反応が、繊細な基準型には「自分や仲間への無関心」と映り、運動を通じた絆を信じる基準型のモチベーションを根底から崩します。"}]$jryd2k15y$::jsonb,
      $jlyw3odbj$[]$jlyw3odbj$::jsonb
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
      'GPVC', 'SFVC',
      $jfei4krni$[{"t":"p","text":"繊細な感性と低強度への志向を共有する、穏やかなペアです。どちらも運動を通じて心を落ち着かせ、無理のない範囲で体を動かすことに喜びを感じます。なりたい同士として、相手の体調や気分の揺れを敏感に察知し、労わり合える関係を築きやすいです。しかし、基準型が「仲間との約束」を継続の糧とするのに対し、相手は「一人での自由」を好むため、運動の頻度や参加の形態を巡って、基準型が一人で期待を抱えすぎる傾向があります。"}]$jfei4krni$::jsonb,
      $j4662oupn$[{"t":"p","text":"基準型が日時を固定した定例会を用意しつつも、相手に対しては「気が向いた時だけの一人参加」を公認し、たまに合流できた時間を特別に喜ぶような距離感を保ちます。"},{"t":"p","text":"どちらもなりたい同士の繊細さを持つため、運動の最中に感じた景色や空気の心地よさを、短い言葉や写真で共有し合うことで、情緒的なつながりを深めます。"},{"t":"p","text":"計画をガチガチに固めず、当日の二人の「心の重さ」に合わせて、歩く距離を短縮したりカフェでの休憩に切り替えたりできるような、柔軟なプランを共有します。"}]$j4662oupn$::jsonb,
      $jfwqhl23x$[{"t":"p","text":"基準型が「来週も一緒に歩きましょう」と誠実に約束を求めた際、気分を優先したい相手はプレッシャーを感じてしまい、逆に基準型は相手の曖昧な返答に不安を覚えます。"},{"t":"p","text":"どちらも繊細で相手を傷つけることを恐れるため、運動の内容に違和感があっても我慢してしまい、ある日突然、一方が燃え尽きて運動を辞めてしまいます。"},{"t":"p","text":"相手が一人で静かに動きたい時に、基準型が良かれと思って他の仲間を大勢誘ってしまうと、相手は居場所を失ったと感じてコミュニティから離脱します。"}]$jfwqhl23x$::jsonb,
      $jhb63bm28$[]$jhb63bm28$::jsonb
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
      'GPVC', 'SFVH',
      $ji96qjdsh$[{"t":"p","text":"なりたい由来の繊細な感受性を共有しながらも、運動の表現方法が真逆であるため、構造的なすれ違いが生じやすいです。基準型は仲間との約束を誠実に守り、穏やかな活動を続けることで心の安定を図りますが、相手は自分の内なる葛藤や情熱を一人での高強度トレーニングにぶつけ、限界を突破しようとします。相手の激しさと予測不能な行動は、平穏な場を維持したい基準型にとって心理的な脅威となり、同じ活動空間を共有することは困難を極めます。"}]$ji96qjdsh$::jsonb,
      $jn7ang6ak$[{"t":"p","text":"互いの運動スタイルを「静」と「動」の極致として尊重し、直接一緒に動くのではなく、相手が挑んだ過酷な記録を基準型が承認する関係に留めます。"},{"t":"p","text":"相手が感情を爆発させてトレーニングに没頭している間、基準型はあえて距離を置き、相手が落ち着いたタイミングで短い労いのメッセージを送るような非同期の接点を持つのも手です。"},{"t":"p","text":"なりたい同士として、運動の技術よりも「なぜそこまでして動くのか」という内面的な動機について深く語り合う時間を持ち、精神的な理解者としての地位を築きます。"}]$jn7ang6ak$::jsonb,
      $jy4hrhps4$[{"t":"p","text":"相手がその日の感情の高ぶりに任せて「今から山を走ってくる」と計画を無視した行動をとると、誠実な準備を重んじる基準型は、自分の存在を無視されたと感じて絶望します。"},{"t":"p","text":"基準型が全員の安全を考えて提示した低強度のメニューに対し、相手が「ぬるすぎる」と苛立ちを露わにすると、基準型は自分の気配りを否定されたと感じて深く傷つきます。"},{"t":"p","text":"どちらも繊細で感情が激しく揺れやすいため、運動中の些細な衝突が「自分は理解されていない」という深刻な被害意識に繋がり、絶縁に近い状態まで悪化しやすいです。"}]$jy4hrhps4$::jsonb,
      $jmgx0dh7m$[]$jmgx0dh7m$::jsonb
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
      'GPVC', 'SPMC',
      $jcrgz9l16$[{"t":"p","text":"計画的に低強度の運動を継続するスタイルが一致しており、身体的なペース配分においては非常に安定したペアです。どちらも日々のルーティンを大切にし、無理な負荷を避けて着実に体を整えることに価値を置きます。しかし、基準型が仲間との約束を継続の支えとするのに対し、相手は一人で思索しながら淡々と動くことを好みます。相手の感情に左右されない安定感は基準型を落ち着かせますが、基準型のコミュニティへの強い帰属意識が相手には重荷になることもあります。"}]$jcrgz9l16$::jsonb,
      $jh2ze32rl$[{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月先のウォーキング大会や健康目標に向けた詳細なトレーニングメニューを二人で論理的に作成し、進捗を報告し合います。"},{"t":"p","text":"基準型が主催する定例会に相手を「特別顧問」のような一歩引いた立場で招き、相手が一人で深めた運動の知識やコツをメンバーに共有してもらう場を作ります。"},{"t":"p","text":"運動の最中は無理に会話を盛り上げようとせず、周囲の景色や自分の身体感覚に集中する「静かな時間」を共有することで、整える型同士の心地よい共鳴を楽しみます。"}]$jh2ze32rl$::jsonb,
      $jwjh0xg2b$[{"t":"p","text":"基準型が「全員で揃って動くこと」を強調しすぎると、一人の自律性を重んじる相手は監視されているような窮屈さを感じ、運動への意欲を急速に失います。"},{"t":"p","text":"相手が合理的な理由で「今日は一人でやりたい」と告げた際、仲間との絆を信じる基準型は、自分たちの関係が軽視されたと誤解して深く傷つきます。"},{"t":"p","text":"基準型が活動後の反省会で感情的な悩みを打ち明けた際、ありたいな相手が「それは計画の問題だ」と冷淡に分析して解決策だけを提示すると、基準型は突き放されたと感じます。"}]$jwjh0xg2b$::jsonb,
      $jv0h3mvb0$[]$jv0h3mvb0$::jsonb
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
      'GPVC', 'SPMH',
      $j4dcsftod$[{"t":"p","text":"計画的に動くという方法論のみを共有する、ビジネスライクな協力関係になりやすいペアです。基準型は全員が継続できるための計画を立てますが、相手は自分が最高の結果を出すためのストイックな計画を立てます。相手のありたい由来の揺るぎない自信は基準型に安心感を与えることもありますが、相手の個人主義と高負荷志向は、基準型が守りたい「全員参加の穏やかな場」とは本質的に相容れないため、運動の現場では別行動が基本となります。"}]$j4dcsftod$::jsonb,
      $j1ub7w2ok$[{"t":"p","text":"相手が持つ「目標達成のためのトレーニング理論」を基準型が学び、それをコミュニティのメンバーが安全に実践できるレベルに翻訳して導入します。"},{"t":"p","text":"どちらも計画を重視するため、お互いのトレーニングログや記録を数値で共有し、客観的なデータに基づいてアドバイスし合う「コーチング的」な関係を築きます。"},{"t":"p","text":"相手が挑む過酷なレースや挑戦に対し、基準型が「応援団長」としてコミュニティの仲間を率いて応援に行き、相手の孤独な挑戦を外側から支えます。"}]$j1ub7w2ok$::jsonb,
      $jlw53k19k$[{"t":"p","text":"相手が「もっとストイックに追い込むべきだ」と基準型のコミュニティ運営に口を出すと、全員の脱落を防ぎたい基準型は、自分の気配りを台無しにされたと感じて憤慨します。"},{"t":"p","text":"基準型が相手を無理にグループの懇親会や定例練習に誘い続けると、一人の時間を愛する相手は基準型を「非効率で重い存在」と見なして距離を置きます。"},{"t":"p","text":"相手が結果の出ない参加者を切り捨てるような発言をすると、一人ひとりの誠実な歩みを尊重する基準型は、相手の価値観を冷酷だと感じて心理的な拒絶反応を起こします。"}]$jlw53k19k$::jsonb,
      $j3o99mu3i$[]$j3o99mu3i$::jsonb
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
      'GPVC', 'SPVC',
      $jau13a0p7$[{"t":"p","text":"計画的に、繊細に、低強度の運動を続ける姿勢が完全に一致する組み合わせです。どちらも「一度始めたことは誠実に続けなければならない」という強い責任感を持ち、日々の積み重ねを心の支えとしています。基準型が作る安定したコミュニティの場は、一人で動くことを好む相手にとっても「自分のルーティンの一部」として組み込みやすく、互いの継続を静かに支え合う理想的な補完関係が成立します。"}]$jau13a0p7$::jsonb,
      $j2as2nnwl$[{"t":"p","text":"基準型が毎週同じ時間・同じコースでの活動を徹底して提供し、相手がそれを自分の生活リズムの中に「欠かせない習慣」として自然に組み込めるようにします。"},{"t":"p","text":"どちらもなりたい由来の繊細さを持つため、運動の後に「今週も無事に続けられた」という達成感を短い言葉で分かち合い、互いの誠実さを承認し合います。"},{"t":"p","text":"相手が一人で培ってきた効率的なストレッチやケアの方法を基準型が教わり、それをコミュニティの全員が実践できるような標準メニューとして採用します。"}]$j2as2nnwl$::jsonb,
      $jj5yc3al8$[{"t":"p","text":"相手が自分の厳格な個人ルーティンを優先してコミュニティの特別行事を欠席した際、仲間との一体感を重んじる基準型は、自分たちの絆が軽視されたと感じて傷つきます。"},{"t":"p","text":"どちらも繊細で「相手に迷惑をかけたくない」という想いが強すぎるため、体調不良などで運動を休む際の連絡が過度に丁寧になり、かえって心理的な負担を増大させます。"},{"t":"p","text":"基準型がコミュニティの活性化のために急な内容変更を行うと、決まった手順で動くことで安心を得ている相手は、自分のリズムを壊されたと感じて強いストレスを抱きます。"}]$jj5yc3al8$::jsonb,
      $j1vluxu8s$[]$j1vluxu8s$::jsonb
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
      'GPVC', 'SPVH',
      $jrwqqihkh$[{"t":"p","text":"運動に対して真剣に向き合い、計画的に取り組む姿勢を共有するペアです。どちらもなりたい由来の強い感受性を持ち、「自分はこうありたい」という理想に向けて誠実に努力することを厭いません。しかし、基準型が仲間との約束を支えに穏やかに続けるのに対し、相手は一人で自分を追い込み、内なる限界を突破することに情熱を注ぎます。互いの「真剣さ」は理解し合えますが、運動の強度と社会性の不一致により、現場での協力には工夫が必要となります。"}]$jrwqqihkh$::jsonb,
      $jcuvoimsm$[{"t":"p","text":"相手が一人で挑む高強度のチャレンジに対し、基準型がそのコンディショニングやスケジュール管理をサポートする「マネージャー」的な役割を担います。"},{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月に一度、お互いの長期的な運動計画を突き合わせて、論理的な矛盾や無理がないかを繊細な視点でチェックし合う会議を持ちます。"},{"t":"p","text":"相手がストイックになりすぎて心が折れそうな時に、基準型が「あなたは十分頑張っている」と感情的に寄り添うことで、相手の孤独な挑戦を精神的に支えます。"}]$jcuvoimsm$::jsonb,
      $jmvoau78m$[{"t":"p","text":"相手が「もっと自分を追い込むべきだ」と基準型の穏やかな活動を批判した際、誠実に場を守っている基準型は、自分の生き方そのものを否定されたと感じて深く落ち込みます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の些細なアドバイスが「自分の努力が足りない」という責め言葉に聞こえてしまい、互いに殻に閉じこもって対話が途絶えます。"},{"t":"p","text":"基準型が相手をグループの定例練習に誘いすぎると、一人で集中したい相手は「自分の成長を妨げる重荷」として基準型を避け始め、信頼関係が崩壊します。"}]$jmvoau78m$::jsonb,
      $jhbl1taoz$[]$jhbl1taoz$::jsonb
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
      'GPVH', 'GFMC',
      $jgs95sj0t$[{"t":"p","text":"集団での目標達成を至上命題とする側と、場を盛り上げる体験を重視する側との組み合わせです。複数人という共通基盤があるため、同じ空間で活動すること自体への抵抗は少ないです。しかし、緻密なトレーニング計画を完遂したい側と、その場の気分や楽しさを優先したい側では、練習メニューの決定プロセスにおいて根本的な差異が存在します。さらに、理想の自分を目指して限界を突破しようとする姿勢と、現在の心身の状態を整えることを目的とする姿勢が交差するため、一回のセッションに求める運動強度や心理的熱量において大きな温度差が生じやすいです。"}]$jgs95sj0t$::jsonb,
      $jt714viwy$[{"t":"p","text":"チームスポーツやグループワークアウトなど、他者の存在が刺激になる環境を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は最低限の集合時間と場所の決定に留め、具体的な運動内容については当日の体調や雰囲気に合わせて調整できる余白を残すことが求められます。"},{"t":"p","text":"高負荷なメインメニューと軽めの調整メニューを並行して行える施設やプログラムを選択し、同じ空間にいながら異なる負荷レベルを許容する工夫が必要です。"}]$jt714viwy$::jsonb,
      $jevrcp5gb$[{"t":"p","text":"集団での活動を好むがゆえに、チーム内での貢献度や熱量に対する期待値がずれやすく、一方が相手の参加姿勢を「不真面目」だと感じてしまうリスクがあります。"},{"t":"p","text":"計画通りにトレーニングを進めたい側と気分で動きたい側との間で、スケジュール調整やメニュー変更のたびにフラストレーションが蓄積しやすいです。"},{"t":"p","text":"感情を燃やして高い目標に向かう側と、穏やかに現状を維持したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$jevrcp5gb$::jsonb,
      $js6u3p8hw$[]$js6u3p8hw$::jsonb
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
      'GPVH', 'GFMH',
      $jliq1h9bb$[{"t":"p","text":"集団での活動と高い運動強度を求める点において、非常に強力なエネルギーを生み出す組み合わせです。共に限界まで追い込むことを厭わないため、ハードなトレーニングや競技において高い成果を追求できます。しかし、長期的な計画に基づき着実にステップアップしたい側と、その瞬間の高揚感や熱狂的な体験を求める側では、継続のメカニズムが異なります。感情を爆発させて目標に突き進む姿勢と、常に一定の精神状態を保ちながら成果を出そうとする姿勢が交差するため、イベント後のモチベーション維持において温度差が生じやすいです。"}]$jliq1h9bb$::jsonb,
      $jynbrs7uv$[{"t":"p","text":"互いに高い負荷を求める特性を最大限に活かし、マラソン大会や競技会など、明確な挑戦の場を共有することが推奨されます。"},{"t":"p","text":"事前の計画は「この大会で結果を出す」といった大きなマイルストーンに絞り、日々のメニューには相手がその日の気分で爆発的な力を発揮できるような柔軟性を持たせることが効果的です。"},{"t":"p","text":"運動後の達成感を共有する時間を設け、成果だけでなくその過程での感情的なつながりを確認し合うことが重要です。"}]$jynbrs7uv$::jsonb,
      $jvgqjw4xh$[{"t":"p","text":"計画通りに段階を踏んで強度を上げたい側と、その日の気分で突発的に限界に挑みたい側との間で、オーバーワークや怪我のリスク管理を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチームの成長を計画する側にとって、イベントが終わると急激に熱が冷めてしまう相手の振る舞いは、無責任や裏切りとして映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々と結果のみを追求する側との間で、共感の欠如による不満が生じやすいです。"}]$jvgqjw4xh$::jsonb,
      $jpljukyzj$[]$jpljukyzj$::jsonb
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
      'GPVH', 'GFVC',
      $jhuiwey0e$[{"t":"p","text":"集団での活動を好み、運動を通じた感情の起伏や内面的な変化を共有しやすい組み合わせです。共になりたいという軸を持つため、目標に向かう過程での葛藤や喜びを深く分かち合うことができます。しかし、計画的に高い成果を目指して自分を追い込みたい側と、その日の気分に合わせて周囲との調和や安心感を優先したい側では、一回の練習に求める「質」が異なります。限界突破を追求する高めるの姿勢と、心身の平穏を保つ整えるの姿勢が対立するため、求める負荷レベルの調整において繊細な配慮が必要となります。"}]$jhuiwey0e$::jsonb,
      $jho111j9k$[{"t":"p","text":"集団での活動という共通項を活かし、チームとしての連帯感を感じられる環境を選ぶことが重要です。"},{"t":"p","text":"事前の計画には「全員で楽しむ時間」と「個々が追い込む時間」を明確に分け、相手がプレッシャーを感じずに参加できる余白を残すことが求められます。"},{"t":"p","text":"運動強度の差を埋めるために、一つの種目の中で役割を分担することが効果的です。一方が競技として本気で取り組み、もう一方がサポートや応援を行うなど、並行して異なる活動を許容する柔軟な姿勢が関係を深めます。"}]$jho111j9k$::jsonb,
      $jth47tvea$[{"t":"p","text":"計画通りに高い負荷をかけたい側と、その日の気分で周囲との交流を優先したい側との間で、練習の優先順位を巡ってフラストレーションが生じやすいです。"},{"t":"p","text":"目標未達時や不調時に双方が感情的に熱くなりやすいため、一度衝突すると修復に多大なエネルギーを要するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側と、全員が笑って帰れることを目的とする側では、成功の定義が根本的に異なります。"}]$jth47tvea$::jsonb,
      $jvso499vc$[]$jvso499vc$::jsonb
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
      'GPVH', 'GFVH',
      $jxurrhwiu$[{"t":"p","text":"集団での活動、高い目標への追求、そして運動を通じた感情の共鳴において、最も高い熱量を生み出す組み合わせです。共に限界まで追い込むことを喜びとし、チームとしての成功を強く望むため、爆発的な成果を上げることが可能です。しかし、長期的な計画に基づき着実に進めたい側と、その瞬間の熱量や仲間の本気に突き動かされて動きたい側では、行動のトリガーが異なります。計画的な管理を重視する姿勢と、その場の高揚感を最優先する姿勢が交差するため、日常的な練習の継続性において微細なズレが生じやすいです。"}]$jxurrhwiu$::jsonb,
      $j8hs3gswd$[{"t":"p","text":"集団での活動という共通項を最大限に活かし、互いの熱量が連鎖するような高強度なグループワークアウトや競技会に参加することが推奨されます。"},{"t":"p","text":"事前の計画には「この日は本気でやる」というスイッチを明確に設定し、相手がその瞬間に全力を出し切れるような環境を整えることが効果的です。"},{"t":"p","text":"運動後の感情的なシェアを大切にし、互いの「本気」を認め合う時間を設けることが重要です。"}]$j8hs3gswd$::jsonb,
      $jg7i3o7d9$[{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その場のノリや熱量で突発的に強度を上げたい側との間で、トレーニングの規律を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチーム運営を計画する側にとって、熱量が下がった瞬間に参加意欲を失ってしまう相手の振る舞いは、信頼を損なう原因となります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$jg7i3o7d9$::jsonb,
      $jjpr30mqk$[]$jjpr30mqk$::jsonb
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
      'GPVH', 'GPMC',
      $j5qdwg5x8$[{"t":"p","text":"集団での活動と長期的な計画性を重んじる点において、安定した協力関係を築ける組み合わせです。共にスケジュール管理や段取りを重視するため、練習の実施時間を合わせることや、事前の段取りにおいて摩擦が少なく、スムーズに進行できます。しかし、理想の自分を目指して限界に挑み続けたい側と、現在のコミュニティや自身の状態を維持し、穏やかに整えたい側では、運動の最終的なゴールが異なります。感情を燃やして高みを目指す姿勢と、常に一定の精神状態を保ちながら継続することを目的とする姿勢が交差するため、求める負荷のレベルにおいて温度差が生じやすいです。"}]$j5qdwg5x8$::jsonb,
      $j3f8ow57c$[{"t":"p","text":"計画性を共有している強みを活かし、数ヶ月先の大会やイベントに向けた長期的なトレーニングスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを前提とし、メインのトレーニングは各自のペースで行いつつ、集合時間やウォームアップ、クールダウンの時間を共有する形式をとることが効果的です。"},{"t":"p","text":"定期的な振り返りの場を設け、成果だけでなく「いかに安定して続けられたか」という継続の価値を認め合うことが重要です。"}]$j3f8ow57c$::jsonb,
      $jp7e89no8$[{"t":"p","text":"計画を重視するあまり、目標設定の高さや負荷の上げ方を巡って意見が対立し、妥協点を見出すのに時間を要することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、現状維持を優先し変化を嫌う相手の姿勢は、成長の停滞や意欲の欠如として映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々とルーティンをこなすことを良しとする側との間で、共感の欠如による不満が生じやすいです。"}]$jp7e89no8$::jsonb,
      $j84bsm9d9$[]$j84bsm9d9$::jsonb
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
      'GPVH', 'GPMH',
      $jdjbkbbtx$[{"t":"p","text":"集団での活動、緻密な計画性、そして高い成果への飽くなき追求において、最も合理的かつ強力なタッグを組める組み合わせです。共に限界まで追い込むことを当然とし、目標から逆算したトレーニングを完遂する規律を持っているため、競技において圧倒的な結果を出すことが可能です。しかし、理想の自分を目指して感情を燃やしながら突き進みたい側と、常に一定の精神状態を保ち、客観的なデータや戦略に基づいて成果を出したい側では、内面的な熱量が異なります。情熱を燃料とする姿勢と、冷静な計算を武器とする姿勢が交差するため、勝負どころでの振る舞いにおいて微細な温度差が生じやすいです。"}]$jdjbkbbtx$::jsonb,
      $jd7o8b35w$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、難易度の高い大会や記録更新に向けた本格的な共同トレーニングを行うことが推奨されます。"},{"t":"p","text":"事前の計画には具体的な数値目標と戦略を盛り込み、役割分担を明確にすることが効果的です。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果だけでなく、その過程での互いの献身や努力を称え合う時間を設けることが重要です。"}]$jd7o8b35w$::jsonb,
      $jf0qa9ojw$[{"t":"p","text":"計画を重視するあまり、目標達成に向けた「最短ルート」を巡って意見が対立し、激しい議論に発展するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、常に冷静で感情を表に出さない相手の姿勢は、冷淡や無関心として映るリスクがあります。"},{"t":"p","text":"双方が高いプライドと達成欲求を持っているため、リーダーシップの所在を巡って主導権争いが生じやすいです。"}]$jf0qa9ojw$::jsonb,
      $j7amkajgq$[]$j7amkajgq$::jsonb
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
      'GPVH', 'GPVC',
      $ja4gcr9es$[{"t":"p","text":"集団での活動、計画的な進行、そして運動を通じた感情の共有において、非常に調和のとれた協力関係を築ける組み合わせです。共にスケジュールを守り、チームとしてのまとまりを重視するため、日常的な練習の運営が安定し、心理的な安心感を持って活動できます。しかし、理想の自分を目指して限界まで追い込みたい側と、現在のチームの状態や自身の心身を穏やかに整えたい側では、求める運動強度が異なります。限界突破を燃料とする姿勢と、調和と維持を目的とする姿勢が交差するため、目標設定の高さにおいて微細な温度差が生じやすいです。"}]$ja4gcr9es$::jsonb,
      $jkut9gjss$[{"t":"p","text":"計画性を共有している強みを活かし、全員が無理なく参加できる定期的なスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを解消するために、メインの練習時間を「本気枠」と「調整枠」に分け、各自がその日の状態に合わせて選択できる形式をとることが効果的です。"},{"t":"p","text":"運動後のクールダウンや対話の時間を大切にし、成果だけでなくその過程での感情的なつながりを深めることが重要です。"}]$jkut9gjss$::jsonb,
      $jgjd7ztm0$[{"t":"p","text":"計画を重視するあまり、練習の負荷を上げるタイミングや目標の難易度を巡って意見が対立し、妥協点を見出すのに苦労することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、和を優先して自分を追い込まない相手の姿勢は、向上心の欠如や甘えとして映るリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時やチーム内のトラブルの際、感情のぶつかり合いが長期化するリスクがあります。"}]$jgjd7ztm0$::jsonb,
      $jh2vxbeiu$[]$jh2vxbeiu$::jsonb
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
      'GPVH', 'SFMC',
      $j04axp7uj$[{"t":"p","text":"集団での目標達成に情熱を燃やす側と、一人の空間でその時の気分を大切にする側という、運動の前提条件が全て対極にある組み合わせです。チームとしての結束や計画の完遂を重視する側に対し、相手は自由な移動や心身の調和を最優先するため、同じ目的を持って活動することが極めて難しいです。理想の自分を目指して限界に挑む高めるの姿勢と、現在の自分を穏やかに受け入れる整えるの姿勢が交差するため、一回のセッションに求める意味や価値観において決定的な断絶が生じやすいです。"}]$j04axp7uj$::jsonb,
      $jwgvi3ong$[{"t":"p","text":"互いの運動スタイルが根本的に異なることを認め、同じ場所にいながらも別々の活動を行う「並行的な共存」を目指すことが現実的です。"},{"t":"p","text":"事前の計画は「何時にこの場所で会う」といった最小限の約束に留め、相手にチームへの参加や高い負荷を期待しない配慮が必要です。"},{"t":"p","text":"運動そのものを共有するのではなく、運動後の食事や休憩といったリラックスした時間だけを共有する形式をとることが効果的です。"}]$jwgvi3ong$::jsonb,
      $j8tr4u7kv$[{"t":"p","text":"集団での一体感やチームへの貢献を強要された際、一人の時間を重んじる側は強い束縛感と心理的な圧迫を感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画通りにトレーニングを進めたい側と、その日の気分で突発的に行き先や内容を変えたい側との間で、スケジュール調整の段階から深刻なフラストレーションが蓄積します。"},{"t":"p","text":"感情を露わにして目標に向かう側と、淡々と現実を受け止める側との間で、共感の欠如による不満が常態化しやすいです。"}]$j8tr4u7kv$::jsonb,
      $jglahm378$[]$jglahm378$::jsonb
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
      'GPVH', 'SFMH',
      $jjp6qe761$[{"t":"p","text":"高い運動強度を求める点においては一致していますが、その実施環境やプロセスにおいて大きな隔たりがある組み合わせです。共に限界まで追い込むことを厭わないため、単発のハードなトレーニングでは互いに刺激し合える可能性があります。しかし、チームとしての結束と計画的な積み上げを重視する側に対し、相手は一人の空間でその瞬間の直感に従って全力を出したいと考えます。理想の自分を目指して感情を燃やす姿勢と、常に一定の精神状態を保ちながら成果を出そうとする姿勢が交差するため、継続的な共同練習において心理的な温度差が生じやすいです。"}]$jjp6qe761$::jsonb,
      $jy07qochk$[{"t":"p","text":"ボルダリングやHIITなど、同じ空間にいながらも各自が自分のペースで限界に挑める種目を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は「この施設のこの時間帯にいる」といった最小限の枠組みに留め、相手をチームの規律に縛り付けないような配慮が求められます。"},{"t":"p","text":"運動後の達成感を共有する時間を短く設定し、互いの「追い込み」を認め合う程度のドライな関係性を維持することが推奨されます。"}]$jy07qochk$::jsonb,
      $jbes0oj2i$[{"t":"p","text":"チームとしての連帯感や定期的な参加を強要された際、一人の時間を重んじる側は強い束縛感と不自由さを感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その場の直感で突発的に強度を上げたい側との間で、トレーニングの安全管理や効率性を巡って意見が対立しやすいです。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々と一人の世界で集中したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$jbes0oj2i$::jsonb,
      $jyk5gofdg$[]$jyk5gofdg$::jsonb
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
      'GPVH', 'SFVC',
      $jrr96prr4$[{"t":"p","text":"運動を通じた内面的な変化や感情の揺れを共有しやすいですが、その表現方法や環境設定において大きなズレがある組み合わせです。共になりたいという軸を持つため、理想の姿への憧れや葛藤には共感できます。しかし、チームの熱量の中で計画的に自分を追い込みたい側と、一人の静かな空間でその時の気分に従って心身を整えたい側では、一回のセッションに求める「温度」が決定的に異なります。限界突破を目指す高めるの姿勢と、安らぎを求める整えるの姿勢が対立するため、共同での活動において心理的な摩擦が生じやすいです。"}]$jrr96prr4$::jsonb,
      $jiy3psics$[{"t":"p","text":"互いの運動環境に対するニーズが異なることを前提とし、アプローチの仕方は各自の裁量に完全に委ねる「非干渉の共存」を目指すことが重要です。"},{"t":"p","text":"事前の計画は「この時間帯にこの公園にいる」といった緩やかな約束に留め、相手にチームへの参加や高い負荷を期待しない配慮が必要です。"},{"t":"p","text":"運動そのものよりも、その後のクールダウンや静かな対話の時間を共有し、互いの内面的な気づきを分かち合うことに価値を置くことが効果的です。"}]$jiy3psics$::jsonb,
      $jp5xstp9f$[{"t":"p","text":"チームの一体感や定期的なコミットを強要された際、一人の静かな時間を重んじる側は強い恐怖心と心理的な疲弊を感じ、運動そのものを拒絶するようになります。"},{"t":"p","text":"計画通りに高い負荷をかけたい側と、その日の気分で心身の安らぎを優先したい側との間で、メニューの決定を巡って深刻なフラストレーションが生じます。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、ネガティブな感情が連鎖し、場全体が重苦しい空気に包まれるリスクがあります。"}]$jp5xstp9f$::jsonb,
      $jhzpj8fk9$[]$jhzpj8fk9$::jsonb
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
      'GPVH', 'SFVH',
      $j9vrry7gr$[{"t":"p","text":"高い運動強度への要求と、運動を通じた感情の爆発において、非常に強力な共鳴を起こす可能性がある組み合わせです。共に限界まで追い込むことを喜びとし、理想の自分を目指して全力を尽くすため、単発のセッションでは互いに最高の刺激を与え合うことができます。しかし、チームとしての結束と計画的な積み上げを重視する側に対し、相手は一人の空間でその瞬間のスイッチが入った時にだけ全力を出したいと考えます。計画的な管理を重視する姿勢と、その場の衝動を最優先する姿勢が交差するため、日常的な練習の継続性において深刻なズレが生じやすいです。"}]$j9vrry7gr$::jsonb,
      $jf0sh5kjb$[{"t":"p","text":"格闘技のスパーリングやHIITなど、短時間で爆発的なエネルギーを発散できる種目を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は「この時間帯にこの場所で本気でやる」という一点に絞り、相手を長期的なチームの規律に縛り付けない配慮が求められます。"},{"t":"p","text":"運動後の感情的な充足感を共有する時間を設け、互いの「本気」を認め合うことで、心理的な繋がりを深めることが重要です。"}]$jf0sh5kjb$::jsonb,
      $jvts9l6ei$[{"t":"p","text":"チームとしての連帯感や定期的な参加を強要された際、一人の時間を重んじる側は強い束縛感と心理的な反発を感じ、関係が急速に悪化します。"},{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その日の気分や衝動で突発的に強度を上げたい側との間で、トレーニングの規律や安全性を巡って意見が対立しやすいです。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$jvts9l6ei$::jsonb,
      $jp66y1yk6$[]$jp66y1yk6$::jsonb
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
      'GPVH', 'SPMC',
      $jtyleprsq$[{"t":"p","text":"長期的な計画性を重んじる点では一致していますが、その実施環境や運動の目的に大きな隔たりがある組み合わせです。共にスケジュール管理や段取りを重視するため、練習の実施時間を合わせること自体は容易です。しかし、チームの熱量の中で限界に挑み続けたい側に対し、相手は一人の静かな空間で淡々と習慣を積み重ね、心身を整えることを最優先します。理想の自分を目指して感情を燃やす姿勢と、常に一定の精神状態を保ちながら現状を維持する姿勢が交差するため、一回のセッションに求める負荷レベルにおいて決定的な温度差が生じやすいです。"}]$jtyleprsq$::jsonb,
      $j0s5vn7tv$[{"t":"p","text":"計画性を共有している強みを活かし、数ヶ月単位の長期的なウォーキング目標やジムの利用時間を共に設定することが効果的です。"},{"t":"p","text":"運動強度の違いを前提とし、同じ施設を利用しながらも活動内容は完全に分離する「並行的な習慣化」を目指すことが重要です。"},{"t":"p","text":"運動そのものよりも、その後の穏やかな対話やログの共有に価値を置き、互いの「継続の型」を尊重し合うことが推奨されます。"}]$j0s5vn7tv$::jsonb,
      $ju7bfrnis$[{"t":"p","text":"チームの一体感や高い目標へのコミットを強要された際、一人の静かなルーティンを重んじる側は強い心理的な抵抗とストレスを感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画を重視するあまり、目標設定の高さやメニューの厳密さを巡って意見が対立し、妥協点を見出すのに多大な時間を要することがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、常に冷静で淡々と活動したい側との間で、共感の欠如による不満が常態化しやすいです。"}]$ju7bfrnis$::jsonb,
      $jb6eb48ol$[]$jb6eb48ol$::jsonb
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
      'GPVH', 'SPMH',
      $jkxdbtzrs$[{"t":"p","text":"高い運動強度への要求と、緻密な計画性において、非常に高いレベルで切磋琢磨できる組み合わせです。共に限界まで追い込むことを当然とし、目標から逆算したトレーニングを完遂する規律を持っているため、競技において圧倒的な成果を出すことが可能です。しかし、チームとしての結束と感情的な燃え上がりを重視する側に対し、相手は一人の空間で淡々と自己の記録を更新することにのみ集中したいと考えます。情熱を燃料とする姿勢と、冷静なデータ管理を武器とする姿勢が交差するため、勝負どころでの振る舞いにおいて心理的な温度差が生じやすいです。"}]$jkxdbtzrs$::jsonb,
      $jwkvfgvgg$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、同じ大会や記録会に向けて各自が自分のメニューをこなす「同一空間・別メニュー」の形式をとることが効果的です。"},{"t":"p","text":"事前の計画には具体的な数値目標とタイムスケジュールを盛り込み、互いの領域に干渉しないためのルールを明確にすることが求められます。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果やデータの更新を称え合うことに主眼を置き、過度な感情的連帯を求めないドライな交流を心がけることが重要です。"}]$jwkvfgvgg$::jsonb,
      $j7z10tekp$[{"t":"p","text":"チームの一体感や感情的な結束を強要された際、一人の世界で集中したい側は強い不快感と心理的な疲弊を感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画を重視するあまり、トレーニングの「正解」を巡って意見が対立し、激しい主導権争いに発展するリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、常に冷静で淡々と活動したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$j7z10tekp$::jsonb,
      $ji5x6j29e$[]$ji5x6j29e$::jsonb
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
      'GPVH', 'SPVC',
      $j9byt37e1$[{"t":"p","text":"長期的な計画性を重んじ、運動を通じた内面的な変化を大切にする点において、安定した協力関係を築ける組み合わせです。共にスケジュール管理や型を重視するため、練習の実施時間を合わせることや、事前の段取りにおいて摩擦が少なく、スムーズに進行できます。しかし、チームの熱量の中で限界に挑み続けたい側に対し、相手は一人の空間で自分の決めたルーティンを完璧にこなし、心身を整えることを最優先します。限界突破を追求する高めるの姿勢と、調和と維持を目的とする整えるの姿勢が交差するため、一回のセッションに求める負荷レベルにおいて温度差が生じやすいです。"}]$j9byt37e1$::jsonb,
      $jxuq1a6ho$[{"t":"p","text":"計画性を共有している強みを活かし、互いのルーティンを崩さない範囲での定期的な共同トレーニングをスケジュールに組み込むことが効果的です。"},{"t":"p","text":"運動強度の違いを解消するために、同じ施設を利用しながらも活動内容は完全に分離し、最後に短時間の対話やクールダウンだけを共有する形式をとることが重要です。"},{"t":"p","text":"運動後の感情的なシェアを大切にし、成果だけでなく「いかに自分の型を守れたか」という過程を認め合う時間を設けることが推奨されます。"}]$jxuq1a6ho$::jsonb,
      $jyffg5w18$[{"t":"p","text":"チームの一体感や高い負荷へのコミットを強要された際、一人の静かなルーティンを重んじる側は強い心理的な抵抗と自由の剥奪を感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画を重視するあまり、メニューの変更や突発的なイベントへの対応を巡って意見が対立し、激しいフラストレーションが生じるリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、ネガティブな感情が連鎖し、互いの手法を否定し合う結果になります。"}]$jyffg5w18$::jsonb,
      $jhpzhuvts$[]$jhpzhuvts$::jsonb
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
      'GPVH', 'SPVH',
      $jfq0aq995$[{"t":"p","text":"高い運動強度への要求、緻密な計画性、そして運動を通じた自己変革において、最も高い次元で共鳴できる組み合わせです。共に限界まで追い込むことを当然とし、理想の自分を目指して全力を尽くすため、単発のセッションでは互いに最高の刺激を与え合うことができます。しかし、チームとしての結束と感情的な燃え上がりを重視する側に対し、相手は一人の空間で完璧に自己を管理し、孤高の境地で限界を超えたいと考えます。情熱を燃料とする姿勢と、冷徹な自己規律を武器とする姿勢が交差するため、共同練習の形式において微細な温度差が生じやすいです。"}]$jfq0aq995$::jsonb,
      $j4wejaley$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、同じ大会や競技会に向けて各自が自分のメニューを完遂する「同一空間・別ライン」の形式をとることが効果的です。"},{"t":"p","text":"事前の計画には具体的な数値目標とタイムスケジュールを盛り込み、互いの領域に干渉しないためのルールを明確にすることが求められます。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果だけでなく、その過程での互いの献身や克己心を称え合う時間を設けることが重要です。"}]$j4wejaley$::jsonb,
      $j9enmu3tw$[{"t":"p","text":"チームの一体感や感情的な結束を強要された際、一人の世界で集中したい側は強い不快感と心理的な疲弊を感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画を重視するあまり、トレーニングの「正解」を巡って意見が対立し、激しい主導権争いに発展するリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$j9enmu3tw$::jsonb,
      $jjj5zmdrh$[]$jjj5zmdrh$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;

INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (1, 1, 'S', '集中して何かに取り組みたいとき、まず一人になれる環境を探す方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (2, 1, 'G', '誰かと一緒にいると、一人のときより自然と活力がわいてくる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (3, 1, 'G', '何かに取り組もうとするとき、一人でやるより仲間がいた方が動き出しやすい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (4, 1, 'S', 'グループでの活動や打ち合わせが続くと、一人になりたいという欲求が強くなる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (5, 1, 'S', '疲れたとき、人に会うより一人の時間を取る方が回復できる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (6, 1, 'G', '新しいコミュニティや集まりに参加することに、あまり抵抗がない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (7, 1, 'S', '自分のペースで進められることが、何かに取り組む上で特に大切にしていることのひとつだ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (8, 1, 'G', '友人が何か新しいことを始めたと聞くと、自分も一緒にやってみたいと思うことが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (9, 2, 'F', '気が向いたことは、計画を立てる前にとりあえず始めてしまうことが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (10, 2, 'P', '何かを始める前に、まずおおまかな計画や手順を考えてから動く方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (11, 2, 'F', '細かいスケジュールや手順を決められると、かえってやる気がそがれることがある') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (12, 2, 'P', '見通しが立っていると安心して取り組めるし、立っていないと落ち着かない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (13, 2, 'F', 'その日の気分に合わせて行動できる方が、決めたことを淡々とこなすより自分らしい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (14, 2, 'P', '急に予定が変わったり、段取りが狂ったりすると、気分が乱れやすい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (15, 2, 'P', 'やるべきことをリスト化したり整理したりすることに、ある種の達成感を覚える') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (16, 2, 'F', '先の予定をあまり決めず、直前に判断することの方が多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (17, 3, 'M', 'うまくいかないことがあっても、比較的早く気持ちを切り替えられる方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (18, 3, 'V', '批判されたり評価が低かったりすると、しばらく引きずってしまう方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (19, 3, 'M', '完璧にできなくてもとりあえず前に進む、という考え方が自分には合っている') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (20, 3, 'V', '周りと比べて自分が遅れていると感じると、やる気が落ちることが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (21, 3, 'M', '何かで行き詰まったとき、「次に何ができるか」を考える方に気持ちが向く') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (22, 3, 'V', '調子の良い日と悪い日の差が大きく、気分のムラを感じることが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (23, 3, 'M', '一度やめてしまったことでも、また始めることにあまり心理的な抵抗がない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (24, 3, 'V', '調子が出ていないときは、無理に取り組んでも意味がないと感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (25, 4, 'C', '自分のペースで無理なく続けることを、大きな成果より優先する方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (26, 4, 'D', '高い目標や難しい課題に向かうとき、燃えてくるような感覚がある') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (27, 4, 'C', '少し余裕のある目標設定の方が、高い目標より自分には合っていると感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (28, 4, 'D', '何かに取り組んでいて「もう少し頑張れる」と感じると、自然と限界を試したくなる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (29, 4, 'C', '疲れたり消耗しそうなときは、ペースを落とすか休む方を迷わず選ぶ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (30, 4, 'D', '高い基準で結果を出すために、きつい局面も乗り越えることにモチベーションを感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (31, 4, 'C', '過度なプレッシャーやノルマは、意欲を下げる方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (32, 4, 'D', 'ストイックに努力を重ねている人を見ると、自分もそうありたいという気持ちになる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;

INSERT INTO public.exercise_app_settings (setting_key, setting_value) VALUES ('option_labels', $j8dvqgj1g$["とても賛成","賛成","どちらかといえば賛成","どちらかといえば反対","反対","とても反対"]$j8dvqgj1g$::jsonb) ON CONFLICT (setting_key) DO UPDATE SET setting_value = EXCLUDED.setting_value;
