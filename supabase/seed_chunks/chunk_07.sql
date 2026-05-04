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