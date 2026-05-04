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