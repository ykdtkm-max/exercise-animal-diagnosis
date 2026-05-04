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
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPMC', 'GFMC',
      $jppq4g4tj$[{"t":"p","text":"複数人で集まり、現状の自分を肯定しながら無理のない強度で体を整えるという運動の基本姿勢が一致しています。集団の中で穏やかに継続し、感情の起伏に左右されずに場を維持しようとする土台が共通しているため、同じ空間で運動するだけで自然な安心感が生まれます。唯一の相違点である計画と気分の違いが、共同トレーニングにおける役割分担を明確にします。計画型の基準型が定例の枠組みやメニューの継続性を担保する一方で、気分型の相手は当日の参加者のコンディションに合わせた空気作りや新規メンバーの歓迎を担います。この固定と流動のバランスが機能することで、安定感と開放感を両立した理想的な運動環境が実現します。"}]$jppq4g4tj$::jsonb,
      $j9tnmwafp$[{"t":"p","text":"基準型が練習の日時や場所、基本的なメニュー構成といったトレーニングの骨格を維持し、相手がその場に合わせた声かけや雰囲気作りを担うという分業を意識的に行います。"},{"t":"p","text":"基準型が主導する週次の定例ウォーキングやジム通いの中に、相手が提案する月一回の特別なレクリエーション要素を組み込むことで、継続性と即興性のバランスを保ちます。"},{"t":"p","text":"相手の開放的な振る舞いが新しい練習仲間を惹きつけ、基準型の安定した運営がその定着を促すという循環を理解し、互いの異なる貢献を具体的な成果として評価し合います。"}]$j9tnmwafp$::jsonb,
      $j8aniphcu$[{"t":"p","text":"相手が当日の気分で急に活動場所や種目の変更を提案した際、基準型は事前の計画が脅かされたと感じ、運動そのものへのモチベーションや場への信頼が揺らぐ要因となります。"},{"t":"p","text":"相手が事前の相談なしに新しい練習仲間を連れてきた場合、基準型は想定外の対人変数が生じたことに負担を感じ、リラックスして体を整えるはずの時間がストレスに変わります。"},{"t":"p","text":"基準型は既存メンバーとの安定した継続を最優先するのに対し、相手は新しい刺激や参加者の増加を歓迎するため、コミュニティの方向性に関する認識のズレが運営方針の対立に発展します。"}]$j8aniphcu$::jsonb,
      $jls2t36t0$[]$jls2t36t0$::jsonb
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
      'GPMC', 'GFMH',
      $jzkoka5ua$[{"t":"p","text":"複数人で集まり、今の自分を大切にするありたい軸を共有しているため、集団の中で感情に流されず活動する安定感は一致しています。しかし、計画と気分、整えると高めるの違いが、運動の目的と強度に明確な差異を生みます。基準型が同じ場所での継続的な定例活動に価値を見出すのに対し、相手は新しいイベントや高強度の挑戦を渡り歩くことに充実感を覚えます。このため、基準型の穏やかなルーティンに対して相手が不定期に刺激を持ち込む形になりやすいです。互いの運動スタイルが異なることを前提とし、相手が外部の大会情報などを持ち込み、基準型がそれを受け止める安定した練習拠点を提供するという関係性が有効です。"}]$jzkoka5ua$::jsonb,
      $jzvaungdm$[{"t":"p","text":"相手が外部のスポーツ大会やイベントの情報を持ち込み、基準型がその参加に向けた練習スケジュールの管理やメンバーのフォローを担う協力体制を構築します。"},{"t":"p","text":"基準型が運営する日常的な低強度の定例活動と、相手が志向する非日常的な高強度のイベントを明確に切り分け、互いの領域に干渉せずにそれぞれの強みを発揮できる環境を整えます。"},{"t":"p","text":"感情の起伏が少ないありたい軸の共通点を活かし、トレーニングの負荷設定や参加頻度について、主観を排した事実ベースの客観的な意見交換を定期的に行います。"}]$jzvaungdm$::jsonb,
      $jqt3y2qiy$[{"t":"p","text":"基準型が重視する定例の練習を、相手が他のイベントやその日の気分を優先して欠席することが続くと、基準型は相手の継続意思が欠如していると見なし不満を蓄積させます。"},{"t":"p","text":"相手がコミュニティの活動強度を突発的に引き上げようとした際、基準型は既存メンバーの安全や継続が困難になると判断し、管理者の立場から強く反発して雰囲気が悪化します。"},{"t":"p","text":"基準型は毎週の参加を運動への誠実さとみなしますが、相手は単発の盛り上がりを重視するため、互いの貢献度に対する評価が噛み合わず、心理的な距離が生じやすくなります。"}]$jqt3y2qiy$::jsonb,
      $jtybfx9h1$[]$jtybfx9h1$::jsonb
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
      'GPMC', 'GFVC',
      $jcy8trmil$[{"t":"p","text":"複数人で集まり、無理のないペースで体を整えるという身体的な方向性が一致しています。集団の中で過度な負荷を避け、心地よい強度で運動を継続しようとする価値観は共通しています。しかし、計画と気分の違いに加え、ありたいとなりたいの心理的な差異が運動への向き合い方に影響を与えます。基準型は感情に左右されず計画通りにメニューをこなすことに安心感を覚えますが、相手はその日の気分や体調、周囲の空気に強く影響されます。相手の流動的な参加姿勢は、基準型にとって計画の不確実性と映りますが、相手の細やかな配慮は、基準型の論理的な運営に温かさを付与する補完関係にあります。"}]$jcy8trmil$::jsonb,
      $jbx62au54$[{"t":"p","text":"基準型が活動の日時や場所を固定して安定した練習の場を用意し、相手がその中で参加者への気遣いやリラックスできる雰囲気作りを担当する役割分担を行います。"},{"t":"p","text":"相手の当日の気分や体調による欠席をあらかじめ想定内の変数として計画に組み込み、参加の義務感をなくすことで、相手がプレッシャーを感じずに運動を続けられるようにします。"},{"t":"p","text":"強度を競わないウォーキングやストレッチなど、両者が心地よいと感じる整える軸の活動を中心に据え、身体的なペースを同調させることで心理的な一体感を高めます。"}]$jbx62au54$::jsonb,
      $jl6oqyrlo$[{"t":"p","text":"相手の気分による欠席や遅刻が頻発すると、基準型はトレーニング計画の遂行が妨げられると感じ、相手の運動に対する真剣さを疑うようになってしまいます。"},{"t":"p","text":"相手がその場の雰囲気で急なプログラム変更を提案した際、基準型は事前の合意がない変更をリスクと捉え、柔軟性を欠いた頑なな対応をしてしまい空気が冷え込みます。"},{"t":"p","text":"基準型が相手の運動に対する不安や感情的な揺らぎを論理的な正論で解決しようとすると、相手は共感が得られないと感じて孤立し、運動から足が遠のく原因となります。"}]$jl6oqyrlo$::jsonb,
      $j4udpvf6p$[]$j4udpvf6p$::jsonb
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
      'GPMC', 'GFVH',
      $j2li5lw5q$[{"t":"p","text":"複数人で集まって運動するという1軸のみが共通しており、それ以外の運動スタイルは対極に近いです。基準型が計画的に穏やかな強度で場を維持しようとするのに対し、相手は感情の高まりに従って突発的に高強度の活動を求めます。相手の熱量と即興性は、基準型が構築した安定したトレーニングリズムを揺るがす要因となりやすいです。逆に、相手から見れば基準型のメニューは予測可能すぎて刺激に欠けると評価されます。このペアが共に運動を楽しむためには、日常の練習を共有するのではなく、基準型が設定した特別なイベントにおいて相手が熱量を爆発させるという、限定的な関わり方が適しています。"}]$j2li5lw5q$::jsonb,
      $j8ep92r4e$[{"t":"p","text":"基準型が年間スケジュールや大会参加の枠組みを設計し、相手が当日の盛り上げや参加者のモチベーションを引き上げる役割に専念できる環境を作ります。"},{"t":"p","text":"相手の感情的な高揚によるオーバートレーニングを基準型が客観的に観察し、場の熱量や負荷が過剰にならないよう安全管理のブレーキ役として機能します。"},{"t":"p","text":"日常の穏やかな定例活動は基準型が管理し、数ヶ月に一度の挑戦的な特別企画のみ相手が主導するというように、活動の頻度と役割を明確に使い分けます。"}]$j8ep92r4e$::jsonb,
      $j9obgmrmd$[{"t":"p","text":"相手が活動中に予定外の延長や負荷の増加を求めた際、基準型は参加者の安全と計画の遵守を優先するため、現場で指導方針が激しく対立し、場の空気が悪化します。"},{"t":"p","text":"相手が外部から多数の参加者を突発的に招き入れた場合、基準型は管理の範疇を超える事態として強いストレスを感じ、運動を純粋に楽しめなくなります。"},{"t":"p","text":"基準型は地道な継続を、相手は瞬間の熱狂を運動の価値とするため、活動終了時の達成感の基準が異なり、互いの努力を正当に認め合えない状況が続きます。"}]$j9obgmrmd$::jsonb,
      $je8nndvw2$[]$je8nndvw2$::jsonb
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
      'GPMC', 'GPMH',
      $jw80z74z2$[{"t":"p","text":"複数人を計画的に導き、感情に流されず目的を遂行する姿勢が一致している隣接タイプです。集団のトレーニングを論理的に設計し、着実に実行していく運営能力において極めて高い親和性を持っています。唯一の相違点である整えると高めるの違いが、運動目標の設定における議論の焦点となります。基準型が参加者全員の継続と安全を最優先して低〜中強度を維持しようとするのに対し、相手は目標達成に向けた限界突破や強度の向上を志向します。この強度の違いを役割として認識し、初心者層と上級者層の管理を分担することで、隙のない強力な運動コミュニティを構築できます。"}]$jw80z74z2$::jsonb,
      $jvnvz2zhr$[{"t":"p","text":"基準型が既存メンバーのコンディション管理と継続フォローを担当し、相手が記録向上や大会出場を目指すメンバー向けの強化プログラムを設計します。"},{"t":"p","text":"大会参加や遠征の企画において、相手が逆算的な目標設定を行い、基準型がその計画に無理がないか、全体の安全面から細部を調整する共同作業を行います。"},{"t":"p","text":"互いに感情的な対立を避ける傾向があるため、継続率と目標達成率という異なる客観的な指標を用いて、定期的にトレーニング内容の改善会議を実施します。"}]$jvnvz2zhr$::jsonb,
      $jh86n8nfo$[{"t":"p","text":"相手がコミュニティ全体の目標水準や負荷を強引に引き上げようとした際、基準型は脱落者が出ることを懸念し、保守的な姿勢を崩さないことで計画が停滞します。"},{"t":"p","text":"相手が最新のトレーニング理論に基づいて計画の頻繁なアップデートを提案すると、基準型は決定事項の維持を重視するため、変更に対する疲労感を蓄積させます。"},{"t":"p","text":"基準型が全員を同じスローペースに合わせることを強要すると、相手は自身の成長機会やチームの可能性が損なわれていると感じ、運動への意欲を低下させます。"}]$jh86n8nfo$::jsonb,
      $jcq9glu9l$[]$jcq9glu9l$::jsonb
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
      'GPMC', 'GPVC',
      $j6q9xr5es$[{"t":"p","text":"複数人で計画的に、無理のないペースで体を整えるという運動の根本的な方向性が一致しています。集団を安全に導き、着実な継続を重視する価値観が共通しているため、非常に安定した協力関係を築けます。唯一の相違は、基準型がありたいで感情的に一定しているのに対し、相手がなりたいで周囲の反応や計画の細部に敏感である点です。相手の細やかな気配りやリスクへの懸念を、基準型が客観的に受け止めて計画に反映させることで、極めて安全性が高く、参加者の満足度も高い理想的な運動環境を作り出すことができます。"}]$j6q9xr5es$::jsonb,
      $j15on89gc$[{"t":"p","text":"基準型が全体のスケジュール管理や大枠の意思決定を担い、相手が参加者一人ひとりの体調変化やモチベーションの細やかなフォローを担当する分業体制を敷きます。"},{"t":"p","text":"相手が抱くトレーニング上の不安や安全面での懸念事項を基準型が定期的に聞き出し、論理的な解決策を提示することで、相手の心理的な負担を軽減させます。"},{"t":"p","text":"長期的なウォーキングイベントや基礎体力の向上プログラムなど、両者が得意とする低負荷で計画的な活動を共同で企画し、着実な成果を積み上げます。"}]$j15on89gc$::jsonb,
      $jhsa7e256$[{"t":"p","text":"相手が些細な怪我のリスクなどを過剰に心配して計画の進行を躊躇した際、基準型が問題ないと即断してしまうと、相手は自分の専門性や懸念を軽視されたと感じます。"},{"t":"p","text":"トレーニング後の振り返りにおいて、相手が反省点や改善案を深く掘り下げようとするのに対し、基準型が早々に切り替えようとすることで、熱量の温度差が生じます。"},{"t":"p","text":"トラブル発生時、基準型が仕組みの改善による再発防止を優先する一方で、相手は当事者の感情的なケアを最優先するため、対応の優先順位で意見が対立します。"}]$jhsa7e256$::jsonb,
      $jpz91ufhe$[]$jpz91ufhe$::jsonb
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
      'GPMC', 'GPVH',
      $j7fe01eoe$[{"t":"p","text":"複数人で集まり、計画的に運動を進めるという運営の基本姿勢は一致しています。集団活動を組織化し、スケジュール通りに実行する能力は共通しています。しかし、ありたいとなりたい、整えると高めるという心理面と強度面の2軸が異なるため、運動の目的と実行プロセスで摩擦が生じやすいです。基準型が全員の継続を重視して安定した低強度の運営を目指すのに対し、相手は高い目標を掲げ、感情を前面に出してチームの負荷を引き上げようとする。基準型にとって相手の要求は過大に映り、相手にとって基準型の運営は刺激不足と評価されるため、役割の明確な分離が必要となります。"}]$j7fe01eoe$::jsonb,
      $jy3u69ji9$[{"t":"p","text":"基準型が初心者や現状維持を目的とする層を担当し、相手が大会出場や記録更新を目指す層を担当する、レベル別のトレーニング構造を構築します。"},{"t":"p","text":"相手が設定した高い目標や高負荷なメニューに対して、基準型が実現可能なマイルストーンを引き直し、参加者が脱落しない実行可能な計画へと落とし込みます。"},{"t":"p","text":"相手の感情的な発露や熱血な指導を基準型が冷静に受け止め、チーム全体の雰囲気が過熱して怪我や燃え尽きが起きないようバランサーとして機能します。"}]$jy3u69ji9$::jsonb,
      $jce8z0on0$[{"t":"p","text":"相手が参加者全員に一律で高強度のトレーニングを要求した際、基準型は脱落を防ぐために介入し、指導方針や負荷設定を巡って正面から衝突します。"},{"t":"p","text":"相手が熱意を込めて語る高いビジョンに対し、基準型が客観的で淡々とした反応を返すと、相手は自分の情熱を否定されたと誤認し、信頼関係に亀裂が入ります。"},{"t":"p","text":"目標達成のために計画を柔軟かつ大胆に変更したい相手と、一度決めたルーティンの完遂を重視する基準型との間で、スケジュールの運用方法を巡り不一致が生じます。"}]$jce8z0on0$::jsonb,
      $j7a2y0fvx$[]$j7a2y0fvx$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;