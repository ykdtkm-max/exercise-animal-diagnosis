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