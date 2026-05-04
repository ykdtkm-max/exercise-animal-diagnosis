INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SPMH', 'SPMC',
      $jk21i3sd9$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に穏やかに整えたい側では、一人で活動するという形態や計画性は共通していますが、強度の設定において差異があります。互いに自律的な計画を重んじる点は一致しているため、強度の違いを「個人の選択」として尊重し合えれば、非常に安定した協力関係を築けます。互いの限界や現状を比較せず、計画通りの遂行を認め合うことが、長期的な共存のための鍵となります。"}]$jk21i3sd9$::jsonb,
      $jetupwkod$[{"t":"p","text":"一緒に活動する場合は、同じ時間や場所を共有しつつも、互いに異なる強度のメニューを実行する並行的な関わり方が適しています。計画性を共有しながらも、個人のペースや負荷を完全に守れる環境を整えることで、一方は安定を、もう一方は成長を追求できます。"},{"t":"p","text":"互いの計画の進捗や記録を共有する際は、強度の違いや成果を比較せず、計画通りに実行できたかどうかの継続性に焦点を当てることが望ましいです。客観的な記録の交換を習慣化することで、直接的な干渉を避けながら互いの存在を励みにすることができます。"},{"t":"p","text":"相手の穏やかな習慣の維持を評価しつつも、自身はストイックな挑戦に専念するという境界線を明確にすることが推奨されます。互いの目標設定の方向性が異なることを早期に合意しておくことで、無理な下方修正を求められるストレスを回避できます。"}]$jetupwkod$::jsonb,
      $jjy72396x$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、穏やかな習慣を好む側は強い心理的負担を感じ、運動のリズムを乱されてしまいます。強度の押し付けは、自律的に動きたい側の意欲を削ぎ、運動そのものを苦痛に変えてしまう原因となります。"},{"t":"p","text":"現状維持の姿勢を「向上心がない」と否定されると、静かに継続したい側は深く傷つき、トレーニングの場が不快な空間へと変質してしまいます。強度の違いを価値の優劣として捉える発言は、計画的な継続を重んじる者同士の信頼関係を根底から揺るがします。"},{"t":"p","text":"互いの記録や成果を過度に比較し合うと、競争意識が芽生え、本来の目的である自身の成長が疎かになってしまいます。異なる目標を持っていることを忘れ、優劣を競うようなコミュニケーションは、運動継続のモチベーションを低下させます。"}]$jjy72396x$::jsonb,
      $j5a8nmpk7$[]$j5a8nmpk7$::jsonb
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
      'SPMH', 'SPVC',
      $jxsi42dgt$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に理想のルーティンを追求する側では、一人で活動するという形態や計画性、なりたい姿を目指す姿勢が共通しています。しかし、強度の設定において差異があるため、一緒に動く際は「限界突破」か「完成度」のどちらを優先するかで温度差が生じます。互いの計画の厳格さを認め合い、数値やシステム面での情報交換に特化することで、非常に高いレベルでの切磋琢磨が可能になります。"}]$jxsi42dgt$::jsonb,
      $jz077b00c$[{"t":"p","text":"計画性と目標達成への意欲を共有し、互いのトレーニングメニューや進捗を数値で報告し合うことが非常に有効です。直接一緒に動くよりも、記録を共有して競い合ったり、効率的なトレーニング手法やルーティンの構築について議論したりする知的・論理的な関わり方が適しています。"},{"t":"p","text":"一方は限界への挑戦を、もう一方は理想的な動作の反復を重視するという、アプローチの違いを明確にすることが重要です。互いの専門性を認め合い、異なる次元での自己超越を目指すパートナーとして尊重し合うことで、良好な関係を築けます。"},{"t":"p","text":"トレーニングのログや分析ツールを共通化し、客観的なデータに基づいて互いの成長を確認し合うことが推奨されます。感情的な励ましよりも、事実に基づいた評価を交換することで、ストイックな者同士の信頼関係が深まります。"}]$jz077b00c$::jsonb,
      $j5jm983kz$[{"t":"p","text":"高強度のトレーニングや限界への挑戦に無理に付き合わせようとすると、完成度を重視する側は自身のルーティンを乱されることに強いストレスを感じます。強度の押し付けは、自律的に動きたい側の心理的な安全性を損ない、深刻な対立を招きます。"},{"t":"p","text":"理想の動作やルーティンの完璧さを相手にも求めると、限界突破を優先する側は、その細かさに苛立ちを感じます。完璧主義の押し付けは、自己超越を目指す側の勢いを削ぐ不純物として認識され、関係性を損なう要因となります。"},{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"}]$j5jm983kz$::jsonb,
      $jbcny9pf9$[]$jbcny9pf9$::jsonb
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
      'SPMH', 'SPVH',
      $jgtc9n6n1$[{"t":"p","text":"一人で計画的に高みを目指したい側と、一人で計画的に高強度の理想を追求する側では、運動のあらゆる構成要素が一致しています。共に孤独を愛し、緻密な計画に基づき、高い目標に向かって自分を追い込むストイックな姿勢を共有しています。互いの自律性を最大限に尊重し、沈黙の中で互いの限界に挑む姿を見せ合うことが、最も強力なモチベーションの源泉となります。"}]$jgtc9n6n1$::jsonb,
      $ji0mgn4wq$[{"t":"p","text":"言葉によるコミュニケーションを最小限に抑え、同じ空間で互いに限界に挑む姿を視認し合う「サイレント・セッション」が最も効果的です。互いの集中力を削ぐことなく、存在そのものを強力なライバルかつ理解者として認識することで、一人では到達できない高みを目指せます。"},{"t":"p","text":"計画の立案やデータの分析において、高度に専門的な情報交換を行うことが推奨されます。最新のトレーニング理論やサプリメント、リカバリー手法などについて客観的なデータに基づき議論することで、互いのパフォーマンス向上に直接的に寄与し合えます。"},{"t":"p","text":"互いの独立性を神聖なものとして扱い、トレーニング中の干渉を一切行わないという暗黙の了解を徹底することが重要です。適度な距離感を保ちながら、数値的な成果を競い合うことで、ストイックな者同士にしか分からない深い信頼関係を構築できます。"}]$ji0mgn4wq$::jsonb,
      $jshgdzg62$[{"t":"p","text":"数値的な成果や記録を巡って過度な競争意識が働き、互いの計画を無視した無理な負荷の掛け合いに発展するリスクがあります。健全な切磋琢磨が、相手を打ち負かすための攻撃的な姿勢に変わってしまうと、トレーニングの場が険悪なものとなります。"},{"t":"p","text":"一方が自身の計画や手法の絶対性を主張し、相手のやり方を否定し始めると、深刻な対立が生じます。自律的な追求を重んじる者同士にとって、手法への介入は自己の尊厳を脅かす行為として認識され、修復不可能な断絶を招きます。"},{"t":"p","text":"トレーニング以外の日常的な社交を過度に求められると、ストイックな側は集中力を削がれることに強い不快感を示します。運動を純粋な自己更新の場として聖域化している認識にズレが生じることが、関係性を損なう決定的な要因となります。"}]$jshgdzg62$::jsonb,
      $jv5kbjgpk$[]$jv5kbjgpk$::jsonb
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
      'SPVC', 'GFMC',
      $j0tjslwp4$[{"t":"p","text":"一人で完璧なルーティンを遂行したい側と、複数人でその場の気分を共有したい側では、運動の前提条件が大きく異なります。前者が予測可能なスケジュールと静寂の中での調整を求めるのに対し、後者は突発的な交流や賑やかな場を優先するため、一緒に動く際は活動の境界線を明確に引く必要があります。互いの運動スタイルを干渉させず、空間のみを共有する並行的な関わり方が、長期的な関係維持の鍵となります。"}]$j0tjslwp4$::jsonb,
      $jgq00p4b6$[{"t":"p","text":"運動の場を共有する際は、あらかじめ日時や場所を厳格に定め、それ以外の要素については互いに干渉しないことが重要です。計画的な側が自身のルーティンを完遂できるよう、一人の時間を尊重する姿勢を示すことで、安心感を持って同じ空間に滞在することが可能になります。"},{"t":"p","text":"交流を深める場合は運動中ではなく前後の時間に限定し、活動自体は個人のペースを尊重することが推奨されます。時間の区切りを明確にすることで、一方は静寂の中で体を整え、もう一方は対話を通じて満足感を得るという、異なるニーズを同時に満たすことができます。"},{"t":"p","text":"相手の社交的な振る舞いを否定せず、自身の計画に影響を与えない範囲で寛容に受け入れる態度が求められます。互いの行動原理の違いを理解し、無理に合わせようとしない距離感を保つことが、一人で動くことを好む側にとっての心理的な安全に寄与します。"}]$jgq00p4b6$::jsonb,
      $jg1s05l6k$[{"t":"p","text":"突発的な予定の変更や事前の合意がない状態での参加要請は、完璧なルーティンを維持しようとする側にとって最大のストレス要因となります。予測不可能性は運動を継続するためのシステムを脅かす不純物として認識され、強い拒絶反応を引き起こします。"},{"t":"p","text":"運動の最中に過度なコミュニケーションや感情の共有を求められると、一人で集中して動作を反復したい側はペースを乱されます。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"集団での活動を優先するあまり個人の計画やメニューが軽視されると、計画的な側は不満を募らせます。集団の和を重んじる側と個人の自律性を重んじる側のバランスが崩れることが、合同トレーニングにおける決定的な対立を生む原因となります。"}]$jg1s05l6k$::jsonb,
      $jdulswmig$[]$jdulswmig$::jsonb
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
      'SPVC', 'GFMH',
      $juc1rmvfm$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、複数人でその場の気分に従い高強度の刺激を楽しみたい側では、運動のあらゆる構成要素が対極にあります。前者が求める予測可能性と静寂は、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。異なる世界で活動していることを前提とし、運動という文脈では干渉を避けることが、互いの意欲を守るための最善策となります。"}]$juc1rmvfm$::jsonb,
      $jgzmesaz4$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jgzmesaz4$::jsonb,
      $jni1ti3iz$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的で穏やかな習慣を重んじる側にとって耐え難い苦痛となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$jni1ti3iz$::jsonb,
      $jqky42oqg$[]$jqky42oqg$::jsonb
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
      'SPVC', 'GFVC',
      $jvimxbqyg$[{"t":"p","text":"一人で計画的にルーティンを遂行したい側と、複数人でその場の気分を共有し穏やかに整えたい側では、運動の強度は共通していますが、活動の起点が異なります。一方は予定通りの遂行を、もう一方は感情の充足を優先するため、一緒に動く際は互いのリズムを尊重し合う必要があります。一人で穏やかに活動するという共通項を基盤にしつつ、過度な同調を避けることが、互いの心地よい継続を支える鍵となります。"}]$jvimxbqyg$::jsonb,
      $jqwzargzt$[{"t":"p","text":"一緒に活動する場合は、互いに独立したメニューを同じ空間で行うなど、並行的な関わり方が適しています。会話や感情的な交流を必須とせず、個人のペースを完全に守れる環境を整えることで、一方は計画をこなし、もう一方は自身の内面と向き合うことができます。"},{"t":"p","text":"互いの活動について共有する際は、計画の達成度や理想への接近度ではなく、活動そのものの心地よさや感覚に焦点を当てることが望ましいです。評価基準を柔軟に設定することで、異なる動機を持つ者同士でも、互いの存在を穏やかな刺激として受け入れることができます。"},{"t":"p","text":"相手の気分を重視し穏やかに整える姿勢を評価しつつも、自身は計画的で完璧なルーティンの維持に専念するという境界線を明確にすることが望ましいです。自身の調整リズムを守るための自律的な姿勢を貫くことが、長期的な関係を維持するための前提条件となります。"}]$jqwzargzt$::jsonb,
      $jrfgcb7sm$[{"t":"p","text":"厳密な計画やルーティンを相手に強要すると、気分で動きたい側は強い束縛を感じて反発し、運動への意欲を失ってしまいます。計画の押し付けは、相手の自由な調整能力を奪う行為とみなされ、深刻な心理的ハードルを生む原因となります。"},{"t":"p","text":"運動の最中に過度なコミュニケーションや感情の共有を求められると、一人で集中して動作を反復したい側はペースを乱されます。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"相手の突発的な予定変更やトレーニングの中断に対して過度に不満を示すと、関係が悪化し、合同での活動が困難になります。気まぐれな行動を許容できない態度は、自律性を重んじる側にとって大きなストレスとなり、運動の場が不自由な空間へと変質してしまいます。"}]$jrfgcb7sm$::jsonb,
      $jrkfwtot3$[]$jrkfwtot3$::jsonb
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
      'SPVC', 'GFVH',
      $jaxq2rybp$[{"t":"p","text":"一人で計画的に穏やかなルーティンを守りたい側と、複数人でその場の気分に従い高みを目指したい側では、運動のあらゆる構成要素が対極にあります。前者が求める予測可能性と静寂は、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。異なる世界で活動していることを前提とし、運動という文脈では干渉を避けることが、互いの意欲を守るための最善策となります。"}]$jaxq2rybp$::jsonb,
      $jhyqyrhpu$[{"t":"p","text":"運動に関する活動は完全に別行動とし、互いの領域に一切踏み込まないことが最善の策です。異なる運動哲学を持っていると割り切り、トレーニングの内容や頻度について干渉を避けることが、良好な人間関係を維持するための前提条件となります。"},{"t":"p","text":"もし関わりを持つのであれば、運動以外の全く異なる分野での接点を探ることが推奨されます。運動という文脈では対立が避けられないため、別の共通項を見つけることで、トレーニングの場でのストレスを持ち込まずに交流することが可能になります。"},{"t":"p","text":"相手の活動報告や成果に対しては、客観的な事実として受け止め、評価や意見を控えることが望ましいです。価値観が根本的に異なることを前提とした、ドライで礼儀正しいコミュニケーションが、無用な摩擦を防ぐことに繋がります。"}]$jhyqyrhpu$::jsonb,
      $jjxua8lfs$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的で穏やかな習慣を重んじる側にとって耐え難い苦痛となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$jjxua8lfs$::jsonb,
      $jwcb5q1vm$[]$jwcb5q1vm$::jsonb
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
      'SPVC', 'GPMC',
      $jmp3wqxkd$[{"t":"p","text":"一人で完璧なルーティンを遂行したい側と、コミュニティ全体で計画的に穏やかに整えたい側では、計画性と穏やかな強度が共通しています。しかし、活動の単位が個人かコミュニティかという違いがあるため、一緒に動く際は「個人のリズム」と「集団の維持」のどちらを優先するかで温度差が生じます。互いの計画の独立性を尊重し、システム面での協力にとどめることが、良好な関係を築く鍵となります。"}]$jmp3wqxkd$::jsonb,
      $jft6h87c6$[{"t":"p","text":"集団の活動に参加する場合でも、個人のペースやメニューを維持できる「自律的な枠組み」を確保することが重要です。同じ時間帯に集まりながらも、各自が独立して動ける環境を整えることで、一方はコミュニティの繋がりを感じ、もう一方は自身のルーティンを遂行できます。"},{"t":"p","text":"活動の計画立案や記録の管理といったシステム面での協力を通じて関わることが有効です。直接一緒に体を動かさなくても、トレーニングの仕組みやログの共有によって連帯感を持つことができ、互いの継続を支え合う関係を構築できます。"},{"t":"p","text":"集団への参加頻度や関わり方について、あらかじめ明確なルールや境界線を定めておくことが推奨されます。義務感を感じさせない範囲での参加を保証し、一人の時間を尊重する姿勢を示すことが、計画的な側の安心感と意欲維持に寄与します。"}]$jft6h87c6$::jsonb,
      $jgpdm6kru$[{"t":"p","text":"コミュニティの行事や穏やかなグループ活動に無理に巻き込もうとする行為は、一人で完璧なルーティンを追求する側にとって強いプレッシャーとなります。集団への参加の押し付けは、自律的に動きたい側の心理的な安全性を損ない、運動そのものを苦痛に変えてしまいます。"},{"t":"p","text":"集団のルールや同調圧力を過度に押し付けられると、一人で活動したい側は強い息苦しさを感じ、運動そのものから遠ざかってしまいます。個人の自律性が脅かされる状況は、習慣の継続を阻害する大きな要因として認識されます。"},{"t":"p","text":"コミュニティの計画に合わせて個人のスケジュールやメニューを変更するよう求められると、自律的な計画を重んじる側は強い抵抗を示します。個人の時間の侵害やルーティンの破壊は、完璧な調整のためのシステムを脅かす行為として強く反発されます。"}]$jgpdm6kru$::jsonb,
      $j7q6q9rvn$[]$j7q6q9rvn$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;