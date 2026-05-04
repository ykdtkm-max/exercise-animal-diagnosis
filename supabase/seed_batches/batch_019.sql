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