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