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