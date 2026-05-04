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