INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GFVC', 'GPMH',
      $j5auaeu3b$[{"t":"p","text":"他者との関わりを持つという点でのみ共通していますが、運動に対する根本的なアプローチは完全に相反しています。前者がその日の感情状態に合わせて無理なく他者と過ごす時間を大切にするのに対し、後者は明確な目標を設定し、感情に左右されずに限界を超えていくことを重視します。この現状維持志向と目標達成志向の決定的な違いは、同じ場で活動する際に互いの存在意義や運動の価値観そのものを否定しかねないほどの強い摩擦を生む可能性を秘めています。"}]$j5auaeu3b$::jsonb,
      $j3tfl6ebq$[{"t":"p","text":"運動の目的や強度が全く異なるため、競技や本格的なトレーニングの時間は完全に分離し、活動前後の交流や準備の時間のみを共有する設計が最も効果的です。"},{"t":"p","text":"限界突破を目指す側が競技者として目標に向かって活動し、調和を求める側がサポートや運営の役割を担うという完全な分業体制を構築します。"},{"t":"p","text":"食事や観戦など、強度や計画性が問われない活動を通じて関係性を深めることが、互いの理解を促進する鍵となります。"}]$j3tfl6ebq$::jsonb,
      $jqxswotg2$[{"t":"p","text":"計画と限界突破を重視する側の目標達成に向けた厳しい要求やプレッシャーが、感覚と調和を重視する側にとっては過度な負担となり、運動そのものへの意欲を完全に喪失させる原因となります。"},{"t":"p","text":"内面に敏感な側が感情の波や体調不良を理由に計画を変更しようとする際、目標達成を重視する側はそれを障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"限界突破を目指す側は結果や数値を評価の基準とするのに対し、調和を求める側は参加すること自体や場の雰囲気を重視します。"}]$jqxswotg2$::jsonb,
      $jyu80zxpr$[]$jyu80zxpr$::jsonb
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
      'GFVC', 'GPVC',
      $j1it7kkxm$[{"t":"p","text":"他者と共に無理のない強度で活動し、互いの感情状態に敏感に寄り添うという運動基盤が一致しています。感情の波を共有し、安心できる場を構築する能力に長けている一方で、時間や約束に対するアプローチに違いが見られます。前者がその日の状態に合わせて流動的に動くことを好むのに対し、後者は事前に定められた枠組みやスケジュールがあることで安心感を得ます。この感覚的な自由さと計画的な規律の差をいかに調整するかが、関係性を安定させるための重要な課題となります。"}]$j1it7kkxm$::jsonb,
      $jdtnicvv7$[{"t":"p","text":"計画を重視する側が活動の日時や場所といった基本的な枠組みを事前に設定し、その中で感覚を重視する側が当日の具体的な内容やペースを提案するという役割分担が効果的です。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、互いのその日のコンディションや気分の波を事前に共有する習慣をつけることが重要です。"},{"t":"p","text":"定期的な活動の中に、感覚を重視する側が自由に選択できる余白を意図的に設けることで、計画性と流動性が矛盾なく両立します。"}]$jdtnicvv7$::jsonb,
      $j2zi2u4yc$[{"t":"p","text":"感覚を重視する側の突発的な予定変更や遅刻が、計画を重視する側にとっては事前の枠組みを崩される強いストレスとなります。"},{"t":"p","text":"計画を重視する側が定めたスケジュールを厳格に守ろうとする姿勢が、感覚を重視する側にとっては窮屈さや義務感として感じられることがあります。"},{"t":"p","text":"内面の状態に敏感であるが故に、予定変更に伴う互いの感情の揺れがネガティブに増幅しやすいです。"}]$j2zi2u4yc$::jsonb,
      $jj3lsohu4$[]$jj3lsohu4$::jsonb
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
      'GFVC', 'GPVH',
      $jciw8n9hr$[{"t":"p","text":"他者との関わりを重視し、感情状態が運動に深く影響するという点では共通していますが、計画性と運動強度において大きな対比が存在します。前者がその日の感情に従い、無理のない範囲で活動を維持しようとするのに対し、後者は感情の波を抱えながらも事前に定めた目標に向けて限界を超えようと努力します。同じ感情の揺れを経験しながらも、それを受け入れて立ち止まるか、乗り越えて前進するかという姿勢の違いが、活動の方向性を決定的に分かつ要因となります。"}]$jciw8n9hr$::jsonb,
      $j8s1a4tbt$[{"t":"p","text":"運動の強度や計画性に対するアプローチが異なるため、本格的なトレーニングや競技の時間は分離し、活動前後の交流や準備の時間のみを共有する設計が有効です。"},{"t":"p","text":"限界突破を目指す側が目標に向かって活動する際、調和を求める側がサポートや応援の役割を担うという分業体制を構築します。"},{"t":"p","text":"内面の状態に敏感であるという共通点を活かし、活動後の振り返りにおいて互いの感情や苦労を共有する時間を設けることが重要です。"}]$j8s1a4tbt$::jsonb,
      $jyw0bguy3$[{"t":"p","text":"限界突破と計画を重視する側の目標達成に向けた強い意志やプレッシャーが、調和と感覚を重視する側にとっては過度な負担となり、運動そのものへの意欲を喪失させる原因となります。"},{"t":"p","text":"感覚を重視する側が感情の波や体調不良を理由に計画を変更しようとする際、計画を重視する側はそれを目標への障害とみなし、厳しい態度をとることがあります。"},{"t":"p","text":"限界突破を目指す側は結果や限界を超えることを評価の基準とするのに対し、調和を求める側は参加すること自体や場の雰囲気を重視します。"}]$jyw0bguy3$::jsonb,
      $jzvxuidir$[]$jzvxuidir$::jsonb
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
      'GFVC', 'SFMC',
      $jcs9b8vd6$[{"t":"p","text":"その日の状態に合わせて無理のない強度で流動的に活動するという運動スタイルにおいては一致していますが、他者との関わり方と感情の処理において対照的な特徴を持ちます。前者が他者との関わりを求め、感情の揺れを共有することで安心感を得ようとするのに対し、後者は他者の存在や感情の波に左右されず、自身のペースで淡々と活動することを好みます。この依存性と自立性、感情の共有と独立という違いを理解し、適度な距離感を保つことが関係構築の前提となります。"}]$jcs9b8vd6$::jsonb,
      $j4ielhwek$[{"t":"p","text":"独立性を重視する側の領域を尊重し、同じ空間にいながらも各自が別々の活動を行うという並行型の設計が有効です。"},{"t":"p","text":"感覚で動くという共通点を活かし、事前の厳密なスケジュールに縛られず、当日の状況に合わせて柔軟に活動内容を変更する余白を残すことが重要です。"},{"t":"p","text":"活動の終了後に短い交流の時間を設けることで、関わりを求める側のコミュニケーション欲求を満たしつつ、独立性を重視する側の負担を最小限に抑えることができます。"}]$j4ielhwek$::jsonb,
      $jc4kodz0f$[{"t":"p","text":"関わりを求める側が過度にコミュニケーションや一体感を求めると、独立性を重視する側にとってはそれが干渉や束縛として感じられ、心理的な距離を置く原因となります。"},{"t":"p","text":"内面に敏感な側が感情の揺れや体調不良の不安を表現した際、一定の精神状態を保つ側がそれを単なる一時的な事象として淡々と処理しようとすると、心理的なすれ違いが生まれます。"},{"t":"p","text":"独立性を重視する側が自身のペースを優先しすぎるあまり、関わりを求める側が取り残されたような孤独感や疎外感を抱くことがあります。"}]$jc4kodz0f$::jsonb,
      $jlqesnnsw$[]$jlqesnnsw$::jsonb
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
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GFVH', 'GPMC',
      $jxakuhmos$[{"t":"p","text":"複数人の軸のみを共有し、集団で活動するという前提以外はすべて対極にあります。コミュニティ長老が計画と安定を重んじ、場を整えることで長期的な関係性を築くのに対し、熱狂伝道者はその場の気分と熱量で強度を高めることを求めます。熱狂伝道者の即興的で爆発的な行動は、コミュニティ長老にとって築き上げた秩序を脅かす要素として映りやすく、日常的な活動を共にするには根本的なすり合わせが必要となります。"}]$jxakuhmos$::jsonb,
      $jow0e2gtx$[{"t":"p","text":"日常的な定例活動はコミュニティ長老が管理し、熱狂伝道者は特別なイベント時のみ参加して熱量を注入するというように、関与する場面を明確に切り分けることが有効です。"},{"t":"p","text":"コミュニティ長老が構築した安定した基盤の上に、熱狂伝道者が外部からの新しい刺激や熱気を持ち込むことで、組織全体のマンネリ化を防ぐ相互補完の関係が築けます。"},{"t":"p","text":"周年行事や大規模な大会など、双方が特別視できる明確な節目においてのみ協働することで、計画性と熱量の両方が求められる状況を作り出し、摩擦を最小限に抑えます。"}]$jow0e2gtx$::jsonb,
      $jym907mwf$[{"t":"p","text":"熱狂伝道者がその場の雰囲気で突発的に内容や強度を変更しようとすると、コミュニティ長老は計画の破綻に対する強いストレスを感じ、信頼関係が損なわれます。"},{"t":"p","text":"熱狂伝道者の感情的な起伏や不調時の振る舞いに対し、コミュニティ長老が一定の精神状態を保つ性質から淡々と対応するため、熱狂伝道者は心理的な距離感や冷たさを感じやすいです。"},{"t":"p","text":"コミュニティ長老が場を維持すること自体に責任を感じる一方で、熱狂伝道者はその瞬間の熱量を最優先するため、活動に対する優先順位が噛み合わず不満が蓄積します。"}]$jym907mwf$::jsonb,
      $jtzaqk160$[]$jtzaqk160$::jsonb
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
      'GFVH', 'GPMH',
      $j21gwmm8m$[{"t":"p","text":"複数人と高めるの軸を共有し、集団で高い目標に向かって強度を引き上げていくという方向性は一致しています。しかし、勝利の女神が綿密な計画と逆算に基づいて着実に成果を積み上げるのに対し、熱狂伝道者はその日の気分や場の熱量に依存して出力を変化させます。勝利の女神が構築した計画に熱狂伝道者がうまく乗った際の爆発力は凄まじいですが、感情の波によるパフォーマンスの変動が評価の衝突を招きやすいです。"}]$j21gwmm8m$::jsonb,
      $jx6ve0s6q$[{"t":"p","text":"勝利の女神が全体的なトレーニング計画や目標設定を担い、熱狂伝道者がその枠組みの中で当日のパフォーマンスを最大化するという役割分担が最も機能します。"},{"t":"p","text":"明確な期日のある大会や試合を共通の目標として設定することで、熱狂伝道者の熱量が維持されやすくなり、勝利の女神の計画性とも合致します。"},{"t":"p","text":"勝利の女神が本気で取り組む姿勢そのものが熱狂伝道者の着火剤となるため、互いの真剣な態度を可視化し、相互に刺激を与え合う環境を作ることが重要です。"}]$jx6ve0s6q$::jsonb,
      $jyacqi4kf$[{"t":"p","text":"熱狂伝道者が感情的な理由でパフォーマンスを落とした際、勝利の女神はそれを計画の阻害要因として論理的に指摘するため、熱狂伝道者は感情を否定されたと感じて反発します。"},{"t":"p","text":"熱狂伝道者がその場のノリで計画外の過負荷なトレーニングを提案した際、勝利の女神は全体計画へのリスクとみなし、能力を高める方向性は同じでもアプローチの違いから対立が生じます。"},{"t":"p","text":"勝利の女神がチーム全体の計画達成度を評価の主軸に置くのに対し、熱狂伝道者は個人の完全燃焼感を重視するため、結果に対する納得感や反省点が一致しないことが多いです。"}]$jyacqi4kf$::jsonb,
      $jjxaf735c$[]$jjxaf735c$::jsonb
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
      'GFVH', 'GPVC',
      $jux7pjnrm$[{"t":"p","text":"複数人となりたいの軸を共有し、集団の中で互いの感情や内面状態を重んじる姿勢は共通しています。しかし、チームの守り神が計画された枠組みの中で安全に場を整えることを優先するのに対し、熱狂伝道者は気分と熱量に任せて限界まで能力を高めることを求めます。熱狂伝道者の予測不能な熱量の爆発は、チームの守り神にとって守るべき秩序や安心感への脅威となるため、活動の前提条件を明確にする必要があります。"}]$jux7pjnrm$::jsonb,
      $jzmosoch3$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、互いの不調や感情の起伏を言葉にせずとも察し合い、無理を強要しないという心理的安全性の高い関係を築くことができます。"},{"t":"p","text":"チームの守り神が活動の時間や内容の枠組みを明確に設定し、熱狂伝道者がその制限された範囲内でのみ全力を出し切るというルールを設けることで、双方の欲求が満たされます。"},{"t":"p","text":"強度や成果を一切求めないリラクゼーション主体の活動を定期的に取り入れることで、熱狂伝道者の熱量を鎮め、チームの守り神の安心感を共有する時間を作ります。"}]$jzmosoch3$::jsonb,
      $jumojmcmd$[{"t":"p","text":"熱狂伝道者が場の盛り上がりに任せて活動時間を延長しようとすると、チームの守り神は約束された枠組みが崩れることに強い不安と不満を覚えます。"},{"t":"p","text":"熱狂伝道者が感情的に落ち込んだ際、チームの守り神は次に向けて環境を整えようと動きますが、熱狂伝道者はただ感情に寄り添うことを求めるため、支援の方向性がすれ違います。"},{"t":"p","text":"チームの守り神が計画通りに無事終了したことに達成感を見出す一方で、熱狂伝道者は全力を出し切れなかった場合に不完全燃焼感を抱くため、満足度に差が生じます。"}]$jumojmcmd$::jsonb,
      $jyy98suu6$[]$jyy98suu6$::jsonb
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
      'GFVH', 'GPVH',
      $jf8jivol6$[{"t":"p","text":"複数人、なりたい、高めるの3軸を共有し、集団の中で感情を共有しながら限界まで追い込むというプレースタイルが極めて近いです。互いが本気で取り組む姿勢が強力な相互刺激となり、集団全体の熱量を劇的に引き上げるポテンシャルを持ちます。唯一の違いは気分と計画であり、熱狂伝道者がその日の空気感で出力を決めるのに対し、熱血キャプテンは事前の計画に基づいて強度を要求するため、衝突の火種となります。"}]$jf8jivol6$::jsonb,
      $jq5da9edx$[{"t":"p","text":"熱血キャプテンが設定した高い目標や厳しい練習メニューに対し、熱狂伝道者がその場の熱量で応えることで、互いの能力を高める欲求が連鎖的に増幅される環境を作ります。"},{"t":"p","text":"活動終了後にその日の感情的な起伏や達成感、悔しさなどを言語化して共有することで、内面状態に敏感なタイプ同士の深い共感が生まれ、次への強力なモチベーションとなります。"},{"t":"p","text":"双方が同じ集団に属することで、熱血キャプテンの牽引力と熱狂伝道者の伝播力が組み合わさり、周囲のメンバーをも巻き込む圧倒的な推進力を生み出すことができます。"}]$jq5da9edx$::jsonb,
      $jtty884c8$[{"t":"p","text":"双方が限界を超えて能力を高める傾向があるため、ブレーキ役が不在となり、オーバートレーニングや怪我のリスクを無自覚に高めてしまう危険性があります。"},{"t":"p","text":"熱狂伝道者が気分や感情の低下により本来のパフォーマンスを発揮できない際、熱血キャプテンはそれを精神的な甘えと厳しく非難しがちであり、深刻な感情的対立に発展しやすいです。"},{"t":"p","text":"熱狂伝道者がその場の雰囲気で練習内容を即興的に変更しようとすると、熱血キャプテンは計画への冒涜と受け取り、アプローチの根本的な違いが表面化します。"}]$jtty884c8$::jsonb,
      $j82nbbb15$[]$j82nbbb15$::jsonb
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
      'GFVH', 'SFMC',
      $jsypbz3t3$[{"t":"p","text":"気分の軸のみを共有し、その日の感覚で即興的に動くという点以外はすべて異なります。気まぐれ散策者が一人の時間をマイペースに身体を整えることを好むのに対し、熱狂伝道者は集団の熱量の中で強度を高めることを求めます。熱狂伝道者が良かれと思って発する熱量や一体感への誘いは、気まぐれ散策者にとっては自己の領域への過剰な干渉と感じられるため、適切な距離感が必要となります。"}]$jsypbz3t3$::jsonb,
      $jeji6c5h6$[{"t":"p","text":"気分の性質を共有しているため、事前の計画を立てず、その日の思いつきで目的地を決めない散策など、自由度の高い活動を選択することで摩擦を回避できます。"},{"t":"p","text":"気まぐれ散策者が提案したルートや活動に対し、熱狂伝道者がそれに合わせる形で同行し、自身の能力を高める欲求を一時的に封印することで穏やかな共有時間が生まれます。"},{"t":"p","text":"熱狂伝道者が強度やタイムへの執着を手放し、気まぐれ散策者の身体を整えるペースに身を委ねることで、普段とは異なるリラックスした運動体験を得ることができます。"}]$jeji6c5h6$::jsonb,
      $jwowy6kt6$[{"t":"p","text":"熱狂伝道者が場の熱量を高めようと過剰な声かけや一体感を強要すると、気まぐれ散策者は自分のペースを乱されたと感じ、強い拒絶反応を示します。"},{"t":"p","text":"熱狂伝道者が活動後の高揚感を共有しようと熱弁を振るっても、気まぐれ散策者はありたい状態を重視する性質から淡白な反応を返すため、熱狂伝道者は肩透かしを食ったように感じます。"},{"t":"p","text":"熱狂伝道者が集団での活動を前提とするのに対し、気まぐれ散策者は単独行動を基本とするため、活動への参加頻度や関与の深さに対する期待値が全く噛み合いません。"}]$jwowy6kt6$::jsonb,
      $j0rs446st$[]$j0rs446st$::jsonb
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
      'GFVH', 'SFMH',
      $jxaxyqbjn$[{"t":"p","text":"気分と高めるの2軸を共有し、計画に縛られずその日の感覚で限界に挑むという強度の出し方は一致しています。しかし、直感の冒険家が完全に自己の内面に向かって孤独に限界を追求するのに対し、熱狂伝道者は他者の存在と熱量を燃料とします。直感の冒険家が放つ圧倒的な熱量は熱狂伝道者の着火剤となり得ますが、熱狂伝道者がその熱を共有しようと介入すると、直感の冒険家の集中を阻害してしまいます。"}]$jxaxyqbjn$::jsonb,
      $jzg49k01z$[{"t":"p","text":"直感の冒険家が単独で限界に挑む姿を熱狂伝道者が間近で感じることで、言葉を交わさずとも熱狂伝道者の能力を高める欲求が強く刺激され、相乗効果が生まれます。"},{"t":"p","text":"その日の感覚で強度や距離を即興的に調整するという気分の特性を活かし、互いに縛り合わない柔軟な目標設定を行うことで、ストレスのない並走が可能になります。"},{"t":"p","text":"活動中は互いの領域に干渉せず、終了後にそれぞれの視点から今日の自分の限界について語り合うことで、異なるアプローチながらも深い理解を得ることができます。"}]$jzg49k01z$::jsonb,
      $jz18erhsa$[{"t":"p","text":"熱狂伝道者が一体感を求めて活動中に声かけや応援を行うと、直感の冒険家は自己との対話を妨害されたと感じ、集中力を著しく削がれます。"},{"t":"p","text":"熱狂伝道者が感情の波によって不調に陥った際、直感の冒険家はそれを自己解決すべき問題として突き放すため、熱狂伝道者は冷酷さを感じて孤立感を深めます。"},{"t":"p","text":"熱狂伝道者が他者との熱量の共有を活動の意義とするのに対し、直感の冒険家は自己完結した達成のみを評価するため、同じ場にいても充足感の源泉が交わりません。"}]$jz18erhsa$::jsonb,
      $jj00ocneh$[]$jj00ocneh$::jsonb
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
      'GFVH', 'SFVC',
      $j5auougho$[{"t":"p","text":"気分となりたいの2軸を共有し、その日の感情や内面状態に素直に従って動くというスタンスは共通しています。しかし、ほっこり探索者が一人の静かな環境で身体を整えることを目的とするのに対し、熱狂伝道者は集団の熱気の中で強度を高めることを欲します。熱狂伝道者の発する強いエネルギーは、内省を深めようとするほっこり探索者にとってノイズとなりやすいため、活動の動と静を明確に分離する必要があります。"}]$j5auougho$::jsonb,
      $juwz0k3z4$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、互いの感情の起伏や不調を言葉にせずとも理解し合い、無理な活動を強要しないという穏やかな信頼関係を築くことができます。"},{"t":"p","text":"熱狂伝道者が激しい運動を終えた後に、ほっこり探索者が選んだ静かな場所で合流するなど、活動のフェーズを完全に分けることで双方の欲求を衝突させずに満たします。"},{"t":"p","text":"気分の特性を活かし、事前の計画に縛られず、その日の互いの感情状態に合わせて柔軟に活動内容や場所を変更することで、無理のない共有時間が生まれます。"}]$juwz0k3z4$::jsonb,
      $j6h4x58cf$[{"t":"p","text":"熱狂伝道者が活動中にさらなる高揚を求めて介入すると、ほっこり探索者は自己の内面に向かう静かな時間を破壊されたと感じ、強いストレスを抱きます。"},{"t":"p","text":"熱狂伝道者の能力を高める欲求とほっこり探索者の身体を整える欲求が同じ空間で衝突すると、熱狂伝道者は不完全燃焼に陥り、ほっこり探索者は過剰な疲労を強いられます。"},{"t":"p","text":"熱狂伝道者が活動後の熱気をそのまま持ち込もうとすると、ほっこり探索者はそのエネルギーを受け止めきれず、次回の活動への参加を躊躇する原因となります。"}]$j6h4x58cf$::jsonb,
      $ji9iglgbg$[]$ji9iglgbg$::jsonb
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
      'GFVH', 'SFVH',
      $jaw2020de$[{"t":"p","text":"気分、なりたい、高めるの3軸を共有し、感情の赴くままに限界まで強度を引き上げていくという運動のコア部分が完全に一致しています。全力一匹狼が単独で極限の集中状態に入った際、その圧倒的な熱量が熱狂伝道者に伝播し、熱狂伝道者のパフォーマンスを劇的に引き上げます。一人と複数人の差は、全力一匹狼の孤独な熱量を熱狂伝道者が環境の熱として享受することで、見事な補完関係として機能します。"}]$jaw2020de$::jsonb,
      $jeycz2esf$[{"t":"p","text":"全力一匹狼が自己の限界に挑む姿そのものが熱狂伝道者にとって最高の着火剤となるため、同じ空間で各自が全力を尽くす並行活動が最も機能します。"},{"t":"p","text":"気分の性質を共有しているため、その日の直感で目標や強度を上方修正する判断が一致しやすく、計画に縛られない爆発的なパフォーマンスを発揮できます。"},{"t":"p","text":"活動終了後に互いの感情の起伏や限界に挑んだ感覚を言語化して共有することで、内面状態に敏感なタイプ同士の深い共鳴が生まれ、次への強力な動機付けとなります。"}]$jeycz2esf$::jsonb,
      $j69qvzmry$[{"t":"p","text":"熱狂伝道者が一体感を求めて活動中に過剰なコミュニケーションを図ると、全力一匹狼の極限の集中状態を破壊してしまい、深刻な対立を招きます。"},{"t":"p","text":"双方が限界を超えて能力を高める傾向があるため、互いの熱量に当てられて適切な終了タイミングを見失い、深刻な疲労や怪我を引き起こすリスクが高いです。"},{"t":"p","text":"熱狂伝道者が活動の意義を共に熱くなったことに見出すのに対し、全力一匹狼は個人の限界を超えたことに見出すため、達成感の解釈に微妙なズレが生じます。"}]$j69qvzmry$::jsonb,
      $j7ndbejlx$[]$j7ndbejlx$::jsonb
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
      'GFVH', 'SPMC',
      $jgpv71slw$[{"t":"p","text":"4軸すべてが対極にあり、運動に対する動機、アプローチ、求める環境が完全に相反します。ゆるり哲学者が一人の静寂の中で計画的なルーティンを整えることを至上の価値とするのに対し、熱狂伝道者は集団の熱狂の中で即興的に強度を高めることを求めます。熱狂伝道者の存在そのものがゆるり哲学者にとっては予測不能なノイズであり、同じ空間で同じ目的を持って活動することは双方にとって著しい消耗を強います。"}]$jgpv71slw$::jsonb,
      $jdhrbvesu$[{"t":"p","text":"日常的な運動の場は完全に分離し、年に数回の特別な行事など運動強度や熱量を一切求めない場面に限定して接点を持つことが関係維持の絶対条件となります。"},{"t":"p","text":"熱狂伝道者が自身の能力を高める欲求を完全に封印し、ゆるり哲学者の静かなルーティンにただ同行するだけの日を設けることで、互いの異質さを観察する機会となります。"},{"t":"p","text":"コミュニティの運営など運動そのものではない領域において、ゆるり哲学者が計画を練り、熱狂伝道者が実行部隊として動くという役割分担であれば機能します。"}]$jdhrbvesu$::jsonb,
      $jmeh26s0q$[{"t":"p","text":"熱狂伝道者がその場のノリで計画外の行動や強度の変更を提案すると、ゆるり哲学者は自身の神聖なルーティンが侵害されたと感じ、強い拒絶を示します。"},{"t":"p","text":"熱狂伝道者が感情的な一体感を求めてアプローチしても、ゆるり哲学者はありたい状態を重視する性質から極めて冷淡に反応するため、熱狂伝道者は深い疎外感を味わいます。"},{"t":"p","text":"双方が相手の運動スタイルを根本的に理解できず、熱狂伝道者は相手を無気力とみなし、ゆるり哲学者は相手を野蛮とみなすという評価の断絶が起きやすいです。"}]$jmeh26s0q$::jsonb,
      $jph4valp0$[{"heading":"D3（熱狂伝道者 のコンテンツ）: 相性リスト bad（すれ違い・摩擦が出やすい）。","blocks":[{"t":"q","lines":["4軸すべてが対極。GFVHの「場の熱量で着火する動き方」とSPMCの「静かな習慣の積み重ね」は、動機・強度・場の使い方がすべて逆向きで、同じ場での運動で必ず摩擦が生まれる。"]}]}]$jph4valp0$::jsonb
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
      'GFVH', 'SPMH',
      $jq8c4vlc1$[{"t":"p","text":"高めるの軸のみを共有し、限界に挑むという結果の形は似ているものの、そこに至るプロセスが全く異なります。孤高の挑戦者が数値と計画に基づき感情を排して孤独に自己を更新するのに対し、熱狂伝道者は他者との感情的な熱量の共有によって出力を引き上げます。孤高の挑戦者の機械的なストイックさは熱狂伝道者にとって熱を奪う冷気のように感じられ、アプローチの違いが際立ちます。"}]$jq8c4vlc1$::jsonb,
      $jz8bqc7yt$[{"t":"p","text":"同じ大会や目標を設定しつつも、そこに至るまでの練習プロセスは完全に分離し、本番の場でのみ互いの全力を確認し合うという距離感が最も適しています。"},{"t":"p","text":"孤高の挑戦者が黙々と限界に挑む姿を熱狂伝道者が少し離れた場所から観察することで、直接的な干渉を避けつつ自身の着火剤として利用することができます。"},{"t":"p","text":"互いの能力を高める欲求の強さ自体は尊敬し合えるため、アプローチの違いには言及せず、結果としての強度や達成のみを承認し合う文化を作ることが有効です。"}]$jz8bqc7yt$::jsonb,
      $jjmkps3g6$[{"t":"p","text":"熱狂伝道者が感情の波によってパフォーマンスを落とした際、孤高の挑戦者はそれを計画の不備や意志の弱さと断じ、熱狂伝道者の感情を激しく逆撫でします。"},{"t":"p","text":"熱狂伝道者が集団の熱量を高めようと働きかけても、孤高の挑戦者はそれを自己の集中を乱す不要な変数として切り捨てるため、熱狂伝道者の熱意が行き場を失います。"},{"t":"p","text":"孤高の挑戦者が数値的な成果のみを評価するのに対し、熱狂伝道者はその場の熱気や一体感を評価するため、活動後の振り返りで議論が噛み合いません。"}]$jjmkps3g6$::jsonb,
      $jizvou7x8$[]$jizvou7x8$::jsonb
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
      'GFVH', 'SPVC',
      $j1cagzpry$[{"t":"p","text":"内面状態に敏感な軸のみを共有し、感情や内面状態の揺れ動きを認識する点では一致していますが、その対処法と運動スタイルが対極にあります。ルーティン課長が感情の波を静かな一人の計画的ルーティンの中で整えようとするのに対し、熱狂伝道者は感情の波を集団の熱量にぶつけて能力を高めようとするため、運動という手段においては領域を侵食し合いやすいです。"}]$j1cagzpry$::jsonb,
      $jqgow7rqv$[{"t":"p","text":"内面状態に敏感な性質を共有しているため、運動の場を離れたところで互いの不調や感情の揺れについて深く語り合い、共感し合える関係を築くことができます。"},{"t":"p","text":"ルーティン課長の日常的な計画には一切干渉せず、あらかじめ合意された特別な日においてのみ、熱狂伝道者が強度を抑えて同行するという限定的な接点を持ちます。"},{"t":"p","text":"双方が別々の場所で活動を終えた後に合流し、それぞれの体験や感情の変化について報告し合うことで、運動スタイルを衝突させずに内面的な共有を図ります。"}]$jqgow7rqv$::jsonb,
      $j849q4n9c$[{"t":"p","text":"熱狂伝道者が突発的に活動の延長や強度の変更を持ちかけると、ルーティン課長は計画の破綻と静寂の喪失に直面し、強いストレスと疲労を感じます。"},{"t":"p","text":"熱狂伝道者が活動中に感情を高ぶらせて周囲を巻き込もうとすると、ルーティン課長は自己の内面を整えるプロセスを強制終了させられ、不満を募らせます。"},{"t":"p","text":"熱狂伝道者が熱量を発散できないことに不満を抱く一方で、ルーティン課長は熱狂伝道者の存在自体に圧迫感を覚えるため、同じ空間にいるだけで双方が消耗します。"}]$j849q4n9c$::jsonb,
      $j0ynwddro$[{"heading":"D3（熱狂伝道者 のコンテンツ）: 相性リスト bad（すれ違い・摩擦が出やすい）。","blocks":[{"t":"q","lines":["GFVHの「場の熱量で動く即興性」とSPVCの「静かなルーティンの積み重ね」が根本的に相容れない。熱量文化とルーティン文化の衝突が日常的に起きやすい。"]}]}]$j0ynwddro$::jsonb
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
      'GFVH', 'SPVH',
      $jpy7uvnwr$[{"t":"p","text":"なりたいと高めるの2軸を共有し、感情の波を抱えながらも限界まで強度を引き上げていくという深い欲求は一致しています。しかし、自己超越者が綿密な計画に基づき一人で自己の限界に挑むのに対し、熱狂伝道者はその場の気分と集団の熱量によって出力を決めます。自己超越者の放つ圧倒的な集中力は熱狂伝道者の着火剤として機能しますが、他者の介入を拒絶する姿勢が一体感を求める熱狂伝道者と衝突します。"}]$jpy7uvnwr$::jsonb,
      $jl9q94bvx$[{"t":"p","text":"自己超越者が計画通りに限界に挑む姿を熱狂伝道者が同じ空間で共有することで、言葉を交わさずとも熱狂伝道者の能力を高める欲求が強く刺激されます。"},{"t":"p","text":"活動終了後に互いが直面した限界やその時の感情の動きについて語り合うことで、内面状態に敏感なタイプ同士の深い共鳴と能力を高めるタイプ同士の相互尊敬が生まれます。"},{"t":"p","text":"同じ大会などの目標を共有しつつ、準備段階から本番の競技中まで互いのペースに一切干渉しないというルールを徹底することで、最高の並走関係が実現します。"}]$jl9q94bvx$::jsonb,
      $j8lxvnx73$[{"t":"p","text":"熱狂伝道者が活動中に一体感を求めて声かけやペースの同調を求めると、自己超越者は自身の計画と集中に対する重大な侵害とみなし、激しく反発します。"},{"t":"p","text":"熱狂伝道者が感情の波により計画通りのパフォーマンスを出せない際、自己超越者はそれを実務的に修正しようとするため、感情の共有を求める熱狂伝道者との間に溝ができます。"},{"t":"p","text":"熱狂伝道者が共に熱狂したことを成功とするのに対し、自己超越者は計画通りに自己を更新したことを成功とするため、達成感のベクトルが交わりません。"}]$j8lxvnx73$::jsonb,
      $ja7xf6sei$[]$ja7xf6sei$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;