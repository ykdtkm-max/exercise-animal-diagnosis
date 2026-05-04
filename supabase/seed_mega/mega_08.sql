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