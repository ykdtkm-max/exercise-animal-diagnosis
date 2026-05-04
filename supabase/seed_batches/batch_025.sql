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