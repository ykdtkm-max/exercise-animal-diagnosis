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