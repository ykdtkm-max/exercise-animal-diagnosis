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