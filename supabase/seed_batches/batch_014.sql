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