      $juejxwle3$[{"t":"p","text":"一人軸、気分軸、整える軸を共有する両者は、誰にも縛られずその日の思いつきで穏やかに身体を動かすという外形的な行動様式が完全に一致している組み合わせです。唯一の違いは基準型が精神的に安定しているのに対し相手は感情の揺れを伴う点です。相手の気分の落ち込みや不安に対して基準型が淡々と対応することで生じる微細な温度差が運動の継続において調整を要する課題となります。"}]$juejxwle3$::jsonb,
      $j0the3fk1$[{"t":"p","text":"計画や目標を一切設定せずその日の気分に従って穏やかな活動を共有します。一人軸と整える軸の共通により互いに干渉することなく心地よいペースで運動の時間を過ごすことができます。"},{"t":"p","text":"相手の感情の揺れに対して基準型が過剰に反応せず適度な距離感を保つようにします。ありたい軸の安定感を持って相手のなりたい軸の起伏を静かに見守ることで運動中の関係の均衡が保たれます。"},{"t":"p","text":"互いに無理をしてまで行動を共にしないという暗黙の了解を形成します。気分が乗らない時は自由に離脱できる環境を整えることで気分軸の自由が最大限に尊重されます。"}]$j0the3fk1$::jsonb,
      $ju92hbxon$[{"t":"p","text":"相手が感情の落ち込みや不安を共有しようとした際、基準型の客観的で淡々とした反応が相手に冷たさとして受け取られてしまいます。ありたい軸となりたい軸の感情処理の違いが運動中のすれ違いを生みます。"},{"t":"p","text":"相手が自身の感情の揺れから無意識に同調を求めたり義務感を作り出したりすると基準型は束縛を感じて距離を置きます。一人軸の自由が感情的な依存によって脅かされ運動への意欲を削ぎます。"},{"t":"p","text":"相手の不調や気分の波が場の空気を重くし精神的な安定を好む基準型の快適さを損なわせます。感情の伝染が基準型にとって運動中の予期せぬストレス要因となります。"}]$ju92hbxon$::jsonb,
      $jygbe1bnt$[]$jygbe1bnt$::jsonb
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
      'SFMC', 'SFVH',
      $jk2wv1c9m$[{"t":"p","text":"一人軸と気分軸を共有する両者は、他者に縛られず直感に従って運動を開始する点では一致している組み合わせです。しかし基準型が精神の安定を保ちながら穏やかに活動するのに対し相手は激しい感情の波と共に限界まで高める活動を求めます。同じ思いつきによる単独行動であっても基準型のそれは静かな散歩であり相手のそれは全力の疾走です。"}]$jk2wv1c9m$::jsonb,
      $jyop76570$[{"t":"p","text":"事前の計画を立てずその瞬間の直感で運動の内容を決定する自由さを共有します。互いに他者の干渉を嫌う一人軸の特性を活かし独立した個としての関係性を維持します。"},{"t":"p","text":"相手が意図的に活動の強度を極限まで下げ感情の起伏を抑えた休息日においてのみ行動を共にします。整える軸とありたい軸の領域に相手が歩み寄った場合に限り穏やかな共有が可能になります。"},{"t":"p","text":"同じ場所にいながら全く別のペースと強度で活動する並行状態を受け入れます。互いの行動に干渉せずそれぞれの目的を独立して追求することで運動中の摩擦を回避します。"}]$jyop76570$::jsonb,
      $j14lktzpb$[{"t":"p","text":"相手が突発的に全力を出し切るような高強度の活動を開始すると基準型は完全に取り残され関心を失います。高める軸の爆発的なエネルギーは整える軸の基準型には理解不能な疲労の対象となります。"},{"t":"p","text":"相手の激しい感情の起伏とそれに伴う行動の極端な変化が精神的に安定している基準型には過剰な刺激として作用します。なりたい軸の波がありたい軸の静寂を乱し運動への意欲を削ぎます。"},{"t":"p","text":"相手が自身の全力の姿勢を基準型にも無意識に期待したり共有を求めたりすると基準型は強い圧迫感を感じて即座に逃避します。強度の強要は基準型の自由を奪う最大の要因となります。"}]$j14lktzpb$::jsonb,
      $jmq39wfxn$[]$jmq39wfxn$::jsonb
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
      'SFMC', 'SPMC',
      $jzswkhvkv$[{"t":"p","text":"一人軸、ありたい軸、整える軸を共有する両者は、精神的な安定を保ちながら誰にも縛られず穏やかな活動を好む点で運動のペースが極めて似ている組み合わせです。しかし相手が穏やかな活動を習慣化し計画的に継続しようとするのに対し基準型はその継続の約束自体に強い束縛を感じます。この継続に対する価値観の決定的な違いが運動を通じた関係の長期的な維持を困難にします。"}]$jzswkhvkv$::jsonb,
      $j87p43x1e$[{"t":"p","text":"激しい負荷を伴わない穏やかな活動を一人それぞれのペースで楽しむ空間を共有します。整える軸とありたい軸の共通により互いに無理な要求をせず精神的に安定した時間を過ごせます。"},{"t":"p","text":"相手が自身の計画性や習慣化の要求を基準型に一切向けずその場限りの単発の活動として割り切るようにします。気分軸の基準型に対して次回の約束を求めないことが運動中の関係成立の絶対条件となります。"},{"t":"p","text":"互いの独立性を尊重し同じルートを歩く場合でも無言で並走するなど過度な交流を避けます。一人軸の特性を活かし干渉しない心地よさを最大限に享受するようにします。"}]$j87p43x1e$::jsonb,
      $jsb12yeui$[{"t":"p","text":"相手が活動の習慣化を提案し定期的なスケジュールを組もうとした瞬間、基準型の参加意欲は完全に消滅します。計画軸による継続の要求は気分軸の基準型にとって運動の自由の終わりを意味します。"},{"t":"p","text":"相手が過去の記録や頻度を持ち出し現状維持の指標として提示すると基準型はそれをノルマとして受け取り重圧を感じます。記録の概念自体が基準型の運動スタイルと対立します。"},{"t":"p","text":"基準型がその日の気分で突然予定をキャンセルする行動が計画通りに物事を進めたい相手の秩序を静かに乱します。互いに悪意はないものの行動の前提が異なるため運動中のすれ違いが避けられません。"}]$jsb12yeui$::jsonb,
      $jskgckbfr$[]$jskgckbfr$::jsonb
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
      'SFMC', 'SPMH',
      $jk31fliq3$[{"t":"p","text":"一人軸とありたい軸を共有する両者は、他者に依存せず精神的な安定を保ちながら独立して行動する点で運動中の相互理解を持つ組み合わせです。しかし活動の目的と手法において基準型が気分に従い穏やかに整えるのに対し相手は計画的に限界まで高め自己記録の更新を狙います。互いの存在を尊重し合うことはできても運動という枠組みの中で行動を共にすることは極めて困難な関係です。"}]$jk31fliq3$::jsonb,
      $jjdzhtpr9$[{"t":"p","text":"互いの独立した精神性と一人の時間を重んじる価値観を尊重し干渉しない関係を維持します。ありたい軸と一人軸の共通により異なる目標を持つ他者として客観的に認め合うことができます。"},{"t":"p","text":"相手が記録や計画を完全に手放す完全休養日においてのみ基準型の穏やかな散策に同行します。高める軸と計画軸を一時的に封印した状態でのみ活動のペースが一致します。"},{"t":"p","text":"同じ公園などの空間を共有しつつ全く別の活動を行う並行状態を基本とします。相手が激しいトレーニングを行う傍らで基準型が静かに過ごすなど運動中の空間の共有のみに留めます。"}]$jjdzhtpr9$::jsonb,
      $jzdczwl8v$[{"t":"p","text":"相手が明確な数値目標や計画的なトレーニングの概念を会話に持ち込むだけで基準型は強い心理的抵抗を覚えます。計画軸と高める軸の価値観は気分軸と整える軸の基準型には重圧でしかありません。"},{"t":"p","text":"相手の自己成長への強い執着と継続的な努力の姿勢が現状の穏やかさを好む基準型には理解しがたい苦行として映ります。目的意識の違いが運動中の行動の共有を不可能にします。"},{"t":"p","text":"基準型の無計画で気まぐれな行動様式に対し相手が非効率や目的の欠如を感じる場合があります。互いの行動原理が相反するため運動の場では交わらないことが最善となります。"}]$jzdczwl8v$::jsonb,
      $jta3pqmcu$[]$jta3pqmcu$::jsonb
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
      'SFMC', 'SPVC',
      $jbxw22z3l$[{"t":"p","text":"一人軸と整える軸を共有する両者は、他者に干渉されず穏やかな強度で身体を動かす点で運動のペースは一致しやすい組み合わせです。しかし基準型が気分に従い精神の安定を保つのに対し相手は厳格な計画とルーティンを守ることで感情の安定を得ます。相手のルーティンに基準型が組み込まれた瞬間、穏やかだった関係は義務と重圧に変わり相手の感情の揺れが基準型をさらに遠ざける結果となります。"}]$jbxw22z3l$::jsonb,
      $j4hdit3ym$[{"t":"p","text":"激しい運動を避け散歩や軽いストレッチなど身体的な負荷の少ない活動を選択します。整える軸の共通により互いの体力的なペースや求める強度は自然に一致します。"},{"t":"p","text":"相手が自身の厳格なルーティンから基準型を完全に除外し基準型の突発的な参加や不参加を許容する枠組みを作ります。計画軸の要求を基準型に向けないことが運動継続の鍵となります。"},{"t":"p","text":"互いの一人の時間を尊重し過度な交流や感情の共有を求めないようにします。一人軸の特性を活かし適度な距離感を保ちながら並行して運動する状態を維持します。"}]$j4hdit3ym$::jsonb,
      $jcmrbjr6q$[{"t":"p","text":"相手が毎日の決まった時間やルートでの活動を提案し習慣化を図ろうとすると基準型は強い束縛を感じて逃避します。計画軸によるルーティンの強要は気分軸の基準型の自由を完全に奪います。"},{"t":"p","text":"基準型が気分によって突然活動をキャンセルすると相手のルーティンが崩れなりたい軸の強い感情の揺れや不安を引き起こします。基準型の自由な行動が相手の運動を通じた精神的安定を破壊します。"},{"t":"p","text":"相手の感情的な動揺やルーティンへの固執が精神の安定を好む基準型には過剰な重圧として受け取られてしまいます。ありたい軸の基準型は感情的な巻き込みを嫌い運動の場での関係を断つことを選択しやすいです。"}]$jcmrbjr6q$::jsonb,
      $jpnkfsjor$[]$jpnkfsjor$::jsonb
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
      'SFMC', 'SPVH',
      $jlv1zr356$[{"t":"p","text":"一人軸のみを共有する両者は、他者と群れることを好まず単独で行動するという一点においてのみ一致している組み合わせです。しかし基準型が気分に従い穏やかに精神の安定を保つのに対し相手は緻密な計画のもと限界まで高め感情を燃やし尽くします。一人で運動するという形態は同じであってもその目的、強度、精神状態の全てが相反するため運動の場で交わることはありません。"}]$jlv1zr356$::jsonb,
      $jsc13zii1$[{"t":"p","text":"互いに一人で行動することを好む性質を尊重し一切の干渉を行わない関係を基本とします。一人軸の共通点を活かし互いの独立した領域を侵さないことが運動中の最大の防御策となります。"},{"t":"p","text":"運動や身体活動に関する話題を避け互いの価値観の違いが表面化しない日常の会話のみに留めるようにします。行動原理が根本的に異なることを前提とし無理な理解を求めないことが大切です。"},{"t":"p","text":"相手が完全な休息日として一切の計画と強度を手放した極めて稀な状況においてのみ基準型の穏やかな活動に同席します。この場合も互いのペースを強制しないことが条件となります。"}]$jsc13zii1$::jsonb,
      $jsn9oyejk$[{"t":"p","text":"相手が計画的な高強度トレーニングや自己記録の更新について語るだけで基準型は強い心理的圧迫感と疲労を覚えます。三つの軸の相反が運動前の会話の段階から摩擦を生みます。"},{"t":"p","text":"相手の感情的な起伏や目標達成に対する強い執着が精神的な静寂を好む基準型には過剰なエネルギーとして作用し運動の場から距離を置かせる原因となります。"},{"t":"p","text":"基準型の計画性のなさや現状維持の姿勢に対し相手が自己成長の放棄として否定的な見方をする可能性があります。互いの行動の根底にある価値観が全く異なるため運動を通じた理解は困難です。"}]$jsn9oyejk$::jsonb,
      $j7tovliex$[]$j7tovliex$::jsonb
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
      'SFMH', 'GFMC',
      $jtk0hxo8e$[{"t":"p","text":"直感的に行動を開始する身軽さを共有しつつも運動の目的が自己の限界突破か集団の調和かで分かれる組み合わせです。事前の計画を必要とせずその場の気分で動き出せる点では波長が合いますが、負荷が高まるにつれて方向性の違いが浮き彫りになります。自己の体験を深く掘り下げたい側と周囲との一体感を保ちながら楽しみたい側との間で満足感を得るポイントに構造的なズレが生じやすいです。"}]$jtk0hxo8e$::jsonb,
      $j0sb95ryk$[{"t":"p","text":"事前の詳細なスケジュールを組まず当日の直感に任せて行動を開始するスタイルが両者の身軽さを最大限に引き出します。"},{"t":"p","text":"集団での賑やかな雰囲気が単独で行動しがちな側の新しい刺激に対する好奇心を自然な形で刺激し、行動のきっかけとして機能します。"},{"t":"p","text":"途中で目的や内容が変更になっても互いに精神的な安定を保てるため、状況に応じた柔軟な対応を前提とすることでストレスのない関係を築けます。"}]$j0sb95ryk$::jsonb,
      $jqroepuug$[{"t":"p","text":"運動の強度や難易度をさらに引き上げようとする衝動が、適度な負荷で心地よさを保ちたい側の許容量を超え、体力的な疲労や心理的な負担を与えてしまいます。"},{"t":"p","text":"参加人数を増やして集団の輪を広げようとする動きが、単独での深い体験に没入したい側の集中力を削ぎ、モチベーションを急激に低下させる原因となります。"},{"t":"p","text":"集団のペースに合わせる状態が長く続くと、より高い負荷を求める側にとって物足りなさが蓄積し、共に運動する意義を見失いやすくなります。"}]$jqroepuug$::jsonb,
      $jka7vtdr5$[]$jka7vtdr5$::jsonb
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
      'SFMH', 'GFMH',
      $jr8fl43sl$[{"t":"p","text":"事前の取り決めなしに高い負荷の運動へ飛び込めるエネルギーレベルの高さと即興性が完全に一致する強力な組み合わせです。限界に挑む過程での失敗や予定変更にも動じない精神的な安定感も共有しています。唯一の違いはその高い熱量を集団で分かち合いたいか自己の内面で深く味わいたいかという点にあり、参加人数を最小限に抑えることで互いの高いパフォーマンス要求をぶつけ合えます。"}]$jr8fl43sl$::jsonb,
      $j1a0wcfad$[{"t":"p","text":"直感的に行動を起こすタイミングと勢いが合致しているため、思い立った瞬間に高い負荷のトレーニングや新しいアクティビティへ即座に移行するスタイルが適しています。"},{"t":"p","text":"互いに限界まで追い込むことを好むため、運動の強度を意図的に抑えることなくそれぞれの全力を引き出し合う環境を設定することで深い満足感を得られます。"},{"t":"p","text":"想定外のトラブルやパフォーマンスの不調に対しても互いに精神的な余裕を持って受け流せるため、挑戦的な目標に対しても過度なプレッシャーを感じずに取り組めます。"}]$j1a0wcfad$::jsonb,
      $jxu6f387h$[{"t":"p","text":"集団の規模を拡大して熱量を高めようとする動きが、単独での深い没入感を求める側の集中を妨げ、自己の体験に対する純度を低下させる原因となります。"},{"t":"p","text":"参加者が増えることで生じるペースの同調圧力が、自己の限界に挑みたい側の自由度を奪い、本来のパフォーマンスを発揮できない窮屈さを生み出します。"},{"t":"p","text":"集団の調和を気にかける側からの過剰な配慮や心配が、自己完結的に行動したい側にとっては不必要な干渉として受け取られ、心理的な距離を生む要因となります。"}]$jxu6f387h$::jsonb,
      $jyk35q784$[]$jyk35q784$::jsonb
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
      'SFMH', 'GFVC',
      $j3o1k1a53$[{"t":"p","text":"事前の計画に縛られない自由さは共有しているものの運動に対する根本的な要求が大きく異なる組み合わせです。自己の限界に挑む単独での高負荷な体験を求める側と集団の感情的な調和を重んじながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$j3o1k1a53$::jsonb,
      $jor70k57b$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や会話を楽しむ活動を共有することで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jor70k57b$::jsonb,
      $jelgr1qpe$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、周囲との調和や穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"感情の起伏を伴いながら運動を楽しむ側にとって、常に一定の精神状態を保ちながら唐突に激しい行動に出る側の振る舞いが理解しがたく、不信感につながります。"}]$jelgr1qpe$::jsonb,
      $jcx6ovusg$[]$jcx6ovusg$::jsonb
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
      'SFMH', 'GFVH',
      $j8m3g2rla$[{"t":"p","text":"計画を持たずに高い負荷の運動へ飛び込むという行動の核心部分が共鳴する組み合わせです。思い立った瞬間に全力で動き出せる起動力の高さは一致していますが、その熱量を周囲に感染させたい側と自己の体験として完結させたい側とで方向性が分かれます。また感情を爆発させて取り組む姿勢と常に精神的な安定を保つ姿勢の違いが運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$j8m3g2rla$::jsonb,
      $j5beq8o4u$[{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、運動の強度を意図的に抑えることなく互いの限界を引き出し合うような挑戦的な環境を設定することが望ましいです。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j5beq8o4u$::jsonb,
      $jivricrlq$[{"t":"p","text":"集団全体を巻き込んで熱狂を生み出そうとするアプローチが、単独での深い体験に没入したい側の集中力を削ぎ、運動に対する純粋なモチベーションを低下させます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"高い負荷を求める目的が集団の熱量向上か個人の限界突破かで対立し、同じ空間で激しく動いていても互いに見ているゴールが異なるため一体感を得にくいです。"}]$jivricrlq$::jsonb,
      $j5z94y6su$[]$j5z94y6su$::jsonb
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
      'SFMH', 'GPMC',
      $jon03cyiz$[{"t":"p","text":"精神的な安定を保ちながら運動に向き合うという一点のみを共有し、それ以外の全ての行動原理が対立する非常に難易度の高い組み合わせです。直感的に高い負荷を求め単独で新しい刺激を追求する側にとって、集団の調和を重んじ計画的かつ穏やかに習慣を積み重ねる側の世界観は強い拘束感と退屈さを伴います。逆に秩序と安定を重んじる側にとって、予測不可能なタイミングで突発的に激しい行動を起こす側の存在は、コミュニティの調和を脅かす不確定要素として強い心理的ストレスを与えます。"}]$jon03cyiz$::jsonb,
      $jvpa5x8w7$[{"t":"p","text":"互いに運動スタイルが根本的に異なる事実を尊重し、同じ空間にいても完全に別の行動をとるという不可干渉のルールを徹底することが重要です。"},{"t":"p","text":"固定化されたコミュニティの活動を重んじる側が、例外的に日常の枠組みを外す特別な機会を設けた場合に限り、直感的に動く側の予測不可能な提案を受け入れる余白が生まれます。"},{"t":"p","text":"運動の目的や強度が全く異なることを前提とし、運動そのものではなく互いの独立した時間を確保するための環境づくりにおいて協力し合う視点が有効です。"}]$jvpa5x8w7$::jsonb,
      $jigq1t00e$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な振る舞いが、緻密な計画と反復によって心理的な安定を保っている側の秩序を破壊し、強い感情的な動揺を引き起こす原因となります。"},{"t":"p","text":"限界に挑むような高強度の運動を突発的に求める側のアプローチは、身体的な調和と穏やかなペースを計画的に維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"}]$jigq1t00e$::jsonb,
      $jj67n33g7$[]$jj67n33g7$::jsonb
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
      'SFMH', 'GPMH',
      $jbw36fjka$[{"t":"p","text":"精神的な安定を保ちながら高い負荷を求めるという運動の核心部分が一致しており、全力を出し切る心地よさを共有できる関係性です。しかしその力を発揮する前提条件が大きく異なり、一方はその日の衝動に従って単独で動くことを好むのに対し、もう一方はチームの目標達成のために綿密な計画を立てて動くことを重視します。お互いの能力の高さは認め合えるものの、運動の目的をどこに置くかのすり合わせが必要になります。"}]$jbw36fjka$::jsonb,
      $j1euohlzk$[{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、単発の高強度な運動であれば言葉を交わさずとも息を合わせることができ、目標や計画を脇に置いた即興のセッションが有効です。"},{"t":"p","text":"精神的な波が少なく互いの違いを客観的に受け入れられる性質を持っているため、一方は計画通りに動きもう一方はその日の気分で動くという別々のやり方を許容し合うことが望ましいです。"},{"t":"p","text":"集団での目標達成を目指す側があえて計画を持たない自由な日を設けることで、衝動的に動く側のペースに合わせる余白が生まれ、純粋な身体的限界への挑戦というテーマで噛み合います。"}]$j1euohlzk$::jsonb,
      $jcb0yzpvw$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"突発的に高いパフォーマンスを発揮して満足する側と、それを次の計画のデータとして蓄積したい側とで、運動後の振り返りに対する温度差が生じ、義務感によるストレスが発生します。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jcb0yzpvw$::jsonb,
      $jxifsmjlm$[]$jxifsmjlm$::jsonb
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
      'SFMH', 'GPVC',
      $jbpvpnpir$[{"t":"p","text":"全ての行動原理と価値観が対極に位置する、最も理解し合うことが困難な組み合わせです。単独で直感的に限界へ挑み精神的な安定を保つ側と、集団の調和を重んじ計画的に穏やかなペースを守りながら感情の起伏を伴う側とでは、運動に求めるものが何一つ交わりません。互いの存在がそれぞれの運動スタイルに対する根本的な脅威となり得るため、無理に行動を共にすることは深刻なストレスと疲労を招く結果となります。"}]$jbpvpnpir$::jsonb,
      $jy9hzi3sq$[{"t":"p","text":"互いの運動に対する哲学が完全に相反する事実を明確に認識し、運動の場を一切共有しないという選択が最も互いを尊重する結果となります。"},{"t":"p","text":"どうしても行動を共にする必要がある場合は、運動そのものを目的とせず、移動や観光といった別の枠組みの中で身体を動かす要素を取り入れるアプローチが求められます。"},{"t":"p","text":"互いのやり方に干渉せずそれぞれの独立した活動を遠くから見守る姿勢を保つことで、不要な摩擦を回避し精神的な平穏を維持できます。"}]$jy9hzi3sq$::jsonb,
      $j7oamsazl$[{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、緻密にスケジュールを管理して段階的な成長を狙う側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j7oamsazl$::jsonb,
      $j14chbt89$[]$j14chbt89$::jsonb
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
      'SFMH', 'GPVH',
      $j61go3d52$[{"t":"p","text":"限界まで体を追い込むという高い強度への要求のみを共有し、それ以外の全てのアプローチが対立する組み合わせです。単独で直感的に行動し精神的な安定を保つ側と、集団を率いて計画的に目標を達成し感情を爆発させる側とでは、全力を出すための前提条件が全く異なります。互いの能力の高さは認め合えるものの、運動の目的やプロセスにおけるすり合わせが極めて困難であり、同じ空間で活動する際には常に緊張感が伴います。"}]$j61go3d52$::jsonb,
      $jd8sxg3oq$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"計画的に限界を追求する側があえて事前のプログラムを放棄し、その場の直感のみで全力を出し切る非日常的なセッションを設けることで、直感的に動く側の爆発的なエネルギーと同調することができます。"},{"t":"p","text":"互いに単独での行動を基本としているため、同じ目標に向かって協力するのではなく、同じ空間でそれぞれが独立して限界に挑む並行した全力のスタイルをとることが望ましいです。"}]$jd8sxg3oq$::jsonb,
      $jxl54k3cp$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jxl54k3cp$::jsonb,
      $j98znxhtl$[]$j98znxhtl$::jsonb
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
      'SFMH', 'SFMC',
      $j2px4oh7b$[{"t":"p","text":"単独で直感的に行動し精神的な安定を保ちながら運動に向き合うという基盤を完全に共有する組み合わせです。思い立った瞬間に一人で動き出す身軽さや事前の計画に縛られない自由なスタイルが一致しているため、行動のペースやリズムにおいて深い共鳴を示します。唯一の違いは運動の強度に対する要求にあり、限界まで体を追い込みたい側と心地よい負荷で心身を整えたい側とで運動の最終的な目的が分かれます。"}]$j2px4oh7b$::jsonb,
      $jqcqerunr$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、同じ空間にいながらもそれぞれの独立した運動スタイルを尊重し合うことが良好な関係を保つ鍵となります。"},{"t":"p","text":"高い負荷を求める側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境を楽しむ活動を共有することで無理のない時間を過ごすことができます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた自由な時間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jqcqerunr$::jsonb,
      $j8sz8us2s$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、適度な負荷で心地よさを保ちたい側の許容量を超え、体力的な疲労や心理的な負担を与えてしまいます。"},{"t":"p","text":"限界に挑むような激しい運動を求める側のアプローチが、身体的な調和と穏やかなペースを維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、さらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$j8sz8us2s$::jsonb,
      $jpkus9zx6$[]$jpkus9zx6$::jsonb
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
      'SFMH', 'SFVC',
      $jzud393x8$[{"t":"p","text":"単独で直感的に行動するという点では一致しているものの、運動に対する根本的な要求と精神的なアプローチが大きく異なる組み合わせです。事前の計画に縛られない自由さは共有していますが、自己の限界に挑む単独での高負荷な体験を求める側と、感情の起伏を伴いながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$jzud393x8$::jsonb,
      $jp850g39m$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や感情の共有を楽しむ活動を共にすることで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jp850g39m$::jsonb,
      $j78hs2jco$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、感情の起伏を伴いながら穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j78hs2jco$::jsonb,
      $jppc417bc$[]$jppc417bc$::jsonb
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
      'SFMH', 'SFVH',
      $jtqvc6t7q$[{"t":"p","text":"単独で高い負荷に挑み事前の計画に縛られず直感的に行動するという運動の核心部分を完全に共有する、非常に親和性の高い組み合わせです。互いに妥協なく全力を出し切る姿勢を当然のものとして理解し合えるため、行動を共にする際の熱量は完全に一致します。唯一の違いはその高負荷を生み出す源泉が精神的な安定によるものか感情の爆発によるものかという内面的な差異にあり、運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$jtqvc6t7q$::jsonb,
      $j1jpfbaff$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j1jpfbaff$::jsonb,
      $jzd1nh44i$[{"t":"p","text":"感情の起伏により自身のパフォーマンスに対して強い自己嫌悪に陥っている側に対し、精神的に安定している側がその不調を深刻に受け止めず軽く流してしまうことで心理的なすれ違いが生じます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、感情の高ぶりからさらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$jzd1nh44i$::jsonb,
      $j6pyan6g4$[]$j6pyan6g4$::jsonb
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
      'SFMH', 'SPMC',
      $jm3qymjor$[{"t":"p","text":"単独行動を好み精神的な安定を保ちながら運動に向き合うという基盤は共有しているものの、運動に対する哲学が根本的に異なる組み合わせです。直感と新鮮な刺激を求めて高負荷な挑戦を好む側と、計画的かつ穏やかに習慣を積み重ねることに価値を見出す側とでは、行動の動機が交わることが少ないです。一緒に運動を組み立てることは困難ですが、自立心と精神的な成熟度が高いため、相手のやり方を否定することなく適度な距離感を保ちながら共存できる関係性です。"}]$jm3qymjor$::jsonb,
      $j1izo4irm$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、それぞれの独立した運動スタイルを尊重し合い行動の境界線を明確に引くことで良好な関係が保たれます。"},{"t":"p","text":"計画的に動く側があえて日常のルーティンから外れる特別な日を設けた際にのみ、直感的に動く側の突発的な提案に乗るという限定的な関わり方が機能します。"},{"t":"p","text":"精神的な安定という共通項を活かし、運動のアプローチが全く異なる事実を互いに興味深い個性として受け入れる姿勢を持つことが、このペアの居心地の良さを支える基盤となります。"}]$j1izo4irm$::jsonb,
      $ju44dcbuo$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な動きが、緻密な計画を立てて実行する側のペースを乱し、計画遂行の妨げとなる場面が頻発しストレスが生じやすくなります。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$ju44dcbuo$::jsonb,
      $jhb0sf4cs$[]$jhb0sf4cs$::jsonb
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
      'SFMH', 'SPMH',
      $jogomirtq$[{"t":"p","text":"単独で高い負荷に挑み精神的な安定を保ちながら限界を追求するという運動の核心部分を共有する、非常に親和性の高い組み合わせです。互いに妥協なく全力を出し切る姿勢を当然のものとして理解し合えるため、行動を共にする際の熱量は完全に一致します。しかしその高強度な運動をその瞬間の直感的な体験として消費するか、計画的な記録の積み上げとして蓄積するかというアプローチの違いが存在し、長期的な目標設定においては互いの哲学がすれ違う構造となっています。"}]$jogomirtq$::jsonb,
      $jakxdqh89$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"直感的に動きたい側の突発的なエネルギーを計画を好む側がその場限りの即席プログラムとして柔軟に組み立てることで、単一の衝動が明確な達成感へと昇華されます。"},{"t":"p","text":"精神的な安定という共通の基盤を活かし、計画や記録へのこだわりの差を押し付けず、それぞれのやり方で高みを目指す自立した関係性を保つことが推奨されます。"}]$jakxdqh89$::jsonb,
      $jgtae2x62$[{"t":"p","text":"運動の成果を詳細に記録し次回の計画へと論理的に繋げようとする側のアプローチが、その瞬間の体験のみを重視する側には過剰な分析や不要な制約として感じられ、モチベーションを急激に削ぐ原因となります。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、緻密にスケジュールを管理して段階的な成長を狙う側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、事前に設定した数値目標の達成にこだわる側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$jgtae2x62$::jsonb,
      $jkkbshsg5$[]$jkkbshsg5$::jsonb
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
      'SFMH', 'SPVC',
      $jssngxozw$[{"t":"p","text":"単独行動を好むという一点のみを共有し、それ以外の全ての行動原理が対立する非常に難易度の高い組み合わせです。直感的に高い負荷を求め常に新しい刺激を追求する側にとって、計画的かつ穏やかに同じルーティンを繰り返すことで安心を得る側の世界観は強い拘束感と退屈さを伴います。逆に秩序と安定を重んじる側にとって、予測不可能なタイミングで突発的に激しい行動を起こす側の存在は、築き上げたルーティンを脅かす不確定要素として強い心理的ストレスを与えます。"}]$jssngxozw$::jsonb,
      $jkbzcbieg$[{"t":"p","text":"互いに集団に依存せず単独で完結する運動スタイルを持っている事実を尊重し、同じ空間にいても完全に別の行動をとるという不可干渉のルールを徹底することが重要です。"},{"t":"p","text":"固定化されたルーティンを重んじる側が、例外的に日常の枠組みを外す特別な機会を設けた場合に限り、直感的に動く側の予測不可能な提案を受け入れる余白が生まれます。"},{"t":"p","text":"運動の目的や強度が全く異なることを前提とし、運動そのものではなく互いの独立した時間を確保するための環境づくりにおいて協力し合う視点が有効です。"}]$jkbzcbieg$::jsonb,
      $j8c0qffsa$[{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な振る舞いが、緻密な計画と反復によって心理的な安定を保っている側の秩序を破壊し、強い感情的な動揺を引き起こす原因となります。"},{"t":"p","text":"常に新しい刺激を求め同じことの繰り返しに耐えられない側がその価値観を無意識に表明することで、ルーティンを守り抜くことにアイデンティティを見出す側は自身の存在意義を否定されたように感じます。"},{"t":"p","text":"限界に挑むような高強度の運動を突発的に求める側のアプローチは、身体的な調和と穏やかなペースを計画的に維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"}]$j8c0qffsa$::jsonb,
      $j6j1pohjt$[]$j6j1pohjt$::jsonb
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
      'SFMH', 'SPVH',
      $j0g3sk4ag$[{"t":"p","text":"単独で限界を超えるような高強度な運動をストイックに追求するという点において極めて高い共鳴を示す組み合わせです。互いに妥協を許さず全力を出し切る姿勢が一致しているため、同じ空間で激しいトレーニングを行う際の熱量は完全に合致します。しかしその高負荷を生み出す源泉が直感的な衝動によるものか緻密に計算された計画に基づくものかという決定的な違いが存在し、精神的な安定と感情の起伏という内面的な差異も重なり行動に至るプロセスは大きく異なっています。"}]$j0g3sk4ag$::jsonb,
      $jwc9kzx4m$[{"t":"p","text":"互いに高い負荷を求めるストイックな性質が一致しているため、手加減や妥協を一切排除し、純粋に身体の限界に挑むような激しい運動環境を共有することが最も効果的です。"},{"t":"p","text":"計画的に限界を追求する側があえて事前のプログラムを放棄し、その場の直感のみで全力を出し切る非日常的なセッションを設けることで、直感的に動く側の爆発的なエネルギーと完全に同調することができます。"},{"t":"p","text":"互いに単独での行動を基本としているため、同じ目標に向かって協力するのではなく、同じ空間でそれぞれが独立して限界に挑む並行した全力のスタイルをとることが望ましいです。"}]$jwc9kzx4m$::jsonb,
      $j49vtqbcn$[{"t":"p","text":"運動の成果を詳細に記録し次回の緻密な計画へと繋げることで成長を実感する側のアプローチが、その瞬間の直感的な体験のみを重視する側には過剰な分析や窮屈な制約として感じられます。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、長期的な視点で段階的に負荷をコントロールしようとする側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"感情の起伏により自身のパフォーマンスに対して強い自己嫌悪に陥っている側に対し、精神的に安定している側がその不調を深刻に受け止めず軽く流してしまうことで心理的なすれ違いが生じます。"}]$j49vtqbcn$::jsonb,
      $jv2mxrvrc$[]$jv2mxrvrc$::jsonb
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
      'SFVC', 'GFMC',
      $jrygiz1ay$[{"t":"p","text":"事前の準備を必要とせず、穏やかな強度で動き出すという初動の感覚は一致しやすいです。しかし、一人で静かに内面と向き合うことで心が整う側と、複数人で場を共有し明るく楽しむことで活力を得る側という根本的な違いが存在します。運動を通じた感情のデトックスを求める側に対し、相手は常に一定の心理的安定を保ちながら動くため、トレーニングに対する重みや意味づけに温度差が生じやすいです。"}]$jrygiz1ay$::jsonb,
      $j80qoadpl$[{"t":"p","text":"事前の計画を立てずその日の気分で穏やかに動くという共通のペースを最大限に活かすことが推奨されます。目標や記録を設定せずただ外の空気を楽しむといった余白のある活動であれば両者が自然体で参加できます。"},{"t":"p","text":"複数人で盛り上がる環境ではなく少人数で静かな環境を選ぶことで内面を整えたい側の心理的負担を軽減できます。相手の明るいエネルギーを適度に取り入れつつも静寂を保てる場所を設定することが鍵となります。"},{"t":"p","text":"互いの心理的安定度の違いを理解し感情の揺れがある日は無理に合わせずそれぞれのペースで過ごす選択肢を持っておくことが重要です。参加の義務感をなくすことでより長期的な関係性が築けます。"}]$j80qoadpl$::jsonb,
      $jtvxhr29v$[{"t":"p","text":"複数人で賑やかに楽しむことを善とする側がよかれと思って参加者を増やしたり場を盛り上げようとした際、静かに内面を整えたい側は心理的な圧迫感や居場所のなさを感じやすいです。"},{"t":"p","text":"感情の揺れが大きくその日の状態によって参加を見送りたい側に対し、心理的に安定している側がその繊細な理由を深く理解できず単なる不参加として軽く受け流してしまうことで見えない溝が深まります。"},{"t":"p","text":"気軽な誘いであってもそれが頻繁に繰り返されると一人でいる時間を必要とする側にとっては次第に断ることへの罪悪感が蓄積し、結果として運動そのものに対する疲労感へと繋がっていきます。"}]$jtvxhr29v$::jsonb,
      $j0bvz5xj4$[]$j0bvz5xj4$::jsonb
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
      'SFVC', 'GFMH',
      $jj2l32cmc$[{"t":"p","text":"思い立った時にすぐ行動に移せるという点だけは一致します。しかし一人で穏やかに感情を整えたい側と、複数人で高強度の活動を通じて心理的安定を得る側とでは、運動に求める本質的な目的が対極にあります。相手の持つ高いエネルギーと集団志向は、内省的な静けさを求める側にとって圧倒的な負荷となりやすく、一緒にトレーニングを行うには大きな妥協が必要となります。"}]$jj2l32cmc$::jsonb,
      $j6sns63ca$[{"t":"p","text":"計画に縛られないという唯一の共通点を活かし、ふと思いついたタイミングで短時間の活動を共有することが有効です。長時間の拘束を避けることで心理的な負担を最小限に抑えることができます。"},{"t":"p","text":"活動の強度や規模を意図的に抑え、相手が本来持つ高いエネルギーを一時的に封印してもらう環境を作ることが求められます。静かな場所での散策など刺激の少ない活動を選ぶことが重要となります。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを前提とし、無理に同じ体験を共有しようとせず、それぞれの活動の合間に少しだけ時間を共有するといった付かず離れずの距離感を保つことが推奨されます。"}]$j6sns63ca$::jsonb,
      $j0vri634a$[{"t":"p","text":"高強度の活動と集団の熱気を求める側がそのペースを押し付けた際、穏やかに心を整えたい側は急激なエネルギーの消耗を感じ、トレーニングそのものからの逃避を引き起こす原因となります。"},{"t":"p","text":"感情の起伏が激しい日に静けさを求める側に対し、心理的に安定している側が持ち前の明るさと行動力で介入しようとすると、その善意が逆に深刻な心理的負担として作用してしまいます。"},{"t":"p","text":"相手の次々と新しい刺激を求めるペースに巻き込まれることで内面と向き合う時間が奪われ、結果として運動そのものに対する拒絶感や疲労感が蓄積していく構造が存在します。"}]$j0vri634a$::jsonb,
      $jri1okkbt$[]$jri1okkbt$::jsonb
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
      'SFVC', 'GFVC',
      $j2z1ctmxa$[{"t":"p","text":"事前の計画なしに感情の揺れと連動しながら穏やかに動くという基本的な行動様式は非常に似通っています。唯一の相違点は、一人で内面を整えることを好むか、複数人で温かな関係性を築くことを好むかという点にあります。運動を通じた繊細な共感が生まれやすい一方で、他者との関わりを求める相手の姿勢が、時に一人になりたい側の静かなトレーニング領域を侵食する可能性があります。"}]$j2z1ctmxa$::jsonb,
      $jurmm27dv$[{"t":"p","text":"感情の起伏に寄り添いながら無理のない穏やかな強度で動くという共通のペースを大切にすることが推奨されます。お互いのその日の状態を尊重し合える関係性がトレーニングの基盤となります。"},{"t":"p","text":"複数人での活動を好む相手に対し、少人数や一対一での静かな時間を提案することで一人で心を整えたい側の心理的安全性も確保できます。互いの心地よい人数のバランスを見つけることが鍵となります。"},{"t":"p","text":"感情が沈んでいる日には無理に励まし合うのではなく、ただ静かに同じ空間を共有するだけで十分であるという認識を持つことが重要です。言葉を交わさずとも成立する運動習慣を築くことが望ましいです。"}]$jurmm27dv$::jsonb,
      $jg63hm5gp$[{"t":"p","text":"複数人での温かな交流を求める側がよかれと思って継続的な参加や他者との関わりを促した際、一人で静かに過ごしたい側はそれを重い義務感として受け取ってしまう傾向があります。"},{"t":"p","text":"互いに感情の揺れが大きいため双方が同時に不調に陥った場合、相手を支える余裕がなくなり、トレーニングの継続そのものが困難になるリスクを常に抱えています。"},{"t":"p","text":"一人になりたいという欲求を表明した際、他者との繋がりを重視する側がそれを自身への拒絶と誤認しやすく、繊細な感情を持つ者同士ゆえの深い心理的ダメージに発展する可能性があります。"}]$jg63hm5gp$::jsonb,
      $jg6jmozo6$[]$jg6jmozo6$::jsonb
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
      'SFVC', 'GFVH',
      $j0h0eguaf$[{"t":"p","text":"計画に縛られず感情の赴くままに行動を起こすという点では深い共鳴が生じます。しかしその感情を穏やかに内面で処理し一人で整えたい側と、複数人を巻き込みながら高強度の活動で感情を爆発させたい側とでは、運動の出力方向が完全に異なります。感情の起伏という共通の基盤を持ちながらも、相手の激しいエネルギー放出は静けさを求める側にとって過剰な刺激となりやすいです。"}]$j0h0eguaf$::jsonb,
      $jv0edeo2c$[{"t":"p","text":"計画を立てずその日の感情に従って動くという共通の特性を活かし、お互いの気分が合致した瞬間にのみ活動を共にすることが推奨されます。事前の約束をしないことが心理的負担を下げることに繋がります。"},{"t":"p","text":"相手の激しい感情表現や高強度のトレーニングに無理に付き合うのではなく、活動の前後や相手が意図的にペースを落とした静かな瞬間にのみ時間を共有するという選択が有効です。"},{"t":"p","text":"感情の揺れ動きを理解し合える強みを活かし、運動そのものよりもその背景にある感情の変化について語り合う時間を設けることで、行動様式の違いを超えた共感が得られます。"}]$jv0edeo2c$::jsonb,
      $jhr8p4gj8$[{"t":"p","text":"高強度の活動を通じて感情を爆発させようとする相手のペースに巻き込まれると、穏やかに心を整えたい側は処理能力を超えた刺激を受け、強い疲労感とトレーニングへの拒絶を抱きます。"},{"t":"p","text":"複数人で熱狂的な場を作り出そうとする相手の行動は、一人で静かに内面と向き合いたい側にとって自身の安全な領域を脅かされるような強い圧迫感として作用します。"},{"t":"p","text":"互いに感情の起伏が激しいため、相手の熱量が高まっている日に自身が静けさを求めていると、その温度差が明確な対立構造を生み出し、運動を通じたコミュニケーションが断絶します。"}]$jhr8p4gj8$::jsonb,
      $jjslq2gyf$[]$jjslq2gyf$::jsonb
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
      'SFVC', 'GPMC',
      $jjq1d6jg8$[{"t":"p","text":"穏やかな強度で無理なく活動するという点では一致しています。しかし一人でその日の気分に合わせて感情と連動しながら動く側に対し、相手は複数人で計画的に安定したコミュニティを形成することを重視しています。穏やかなトレーニング環境という外枠は共有できるものの、そこに付随する継続の義務や集団への所属という要素が、内省的な側にとって大きな負担となります。"}]$jjq1d6jg8$::jsonb,
      $jvfrspu7q$[{"t":"p","text":"相手が提供する穏やかで安定した環境に対し、義務感を伴わない不定期な参加が許容される関係性を築くことが推奨されます。気が向いた時だけ合流できる余白がトレーニング継続の鍵となります。"},{"t":"p","text":"計画的な継続を好む相手の特性を尊重しつつ、自身の感情の揺れや気まぐれさを事前に伝え、参加できない日があっても問題視されない合意を形成しておくことが有効です。"},{"t":"p","text":"複数人での活動が基本となる相手のコミュニティにおいて、深く関わりすぎず適度な距離感を保ちながら静かに参加するポジションを確保することで、互いの領域を守ることができます。"}]$jvfrspu7q$::jsonb,
      $jygkyq393$[{"t":"p","text":"計画的かつ継続的な参加を重んじる側がよかれと思って定期的な活動へのコミットメントを求めた際、気分で動きたい側はそれを強い拘束として感じ、運動そのものへの意欲を喪失します。"},{"t":"p","text":"感情の揺れによって参加を見送る側に対し、心理的に安定している側がその繊細な理由を理解できず単なる計画の不履行として処理してしまうことで、心理的な距離が広がる傾向があります。"},{"t":"p","text":"集団の和を大切にする相手の空間において一人で静かに過ごしたいという欲求を出すことが難しく、結果としてその場にいること自体が精神的な消耗に繋がってしまう場面が生じます。"}]$jygkyq393$::jsonb,
      $j45wr6518$[]$j45wr6518$::jsonb
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
      'SFVC', 'GPMH',
      $jsm456ctp$[{"t":"p","text":"運動に対する動機、環境、強度、心理状態のすべてにおいて接点が存在しない組み合わせです。一人で気分に合わせて穏やかに感情を整えたい側にとって、複数人で計画的に高強度の目標達成を目指す相手の存在は、自身の求める安全で静かなトレーニング領域を根本から否定する要素の集合体です。運動という文脈において互いの価値観を共有することは極めて困難な関係性と言えます。"}]$jsm456ctp$::jsonb,
      $j5arnn3a6$[{"t":"p","text":"運動の目的や方法が完全に異なることを前提とし、トレーニングそのものを共有しようとするのではなく、運動以外の時間や全く別の活動を通じて関係性を築くことが強く推奨されます。"},{"t":"p","text":"相手が目標や計画から完全に離れ休息を目的とするような例外的な日にのみ、穏やかな散策などを共有することで互いの違いを脅威と感じずに過ごす時間を持つことができます。"},{"t":"p","text":"互いの行動様式が対極にあることを客観的に認識しその違いを否定するのではなく、自分にはない特性として興味を持って観察する視点を持つことが摩擦を避ける鍵となります。"}]$j5arnn3a6$::jsonb,
      $jwdhnmy5w$[{"t":"p","text":"目標達成や記録向上を目指して高強度の活動を求める相手の姿勢は、穏やかに心を整えたい側にとって常に評価や競争に晒されているような極度の緊張感とプレッシャーを与えます。"},{"t":"p","text":"集団での計画的な行動を重んじる相手に対し一人の気分で動きたい側が合わせようとすると、自身の感情やペースが完全に無視されることになり深刻な心理的疲労を引き起こします。"},{"t":"p","text":"感情の揺れに敏感な側が不調を訴えた際、心理的に安定し目標に向かう相手にはその繊細さが理解されず、怠惰や意欲の欠如と誤認されることで決定的な関係の断絶に繋がります。"}]$jwdhnmy5w$::jsonb,
      $jv58xzgda$[]$jv58xzgda$::jsonb
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
      'SFVC', 'GPVC',
      $jr4gl1o64$[{"t":"p","text":"感情の繊細さを持ちながら穏やかな強度で動くという点では深い理解が得られます。しかし一人でその日の気分に従って動きたい側に対し、相手は複数人での計画的な活動を通じて集団への責任を果たそうとします。感情の揺れを共有できる温かさはあるものの、相手の持つ計画性や集団への帰属意識が、自由と静けさを求める側のトレーニングにおいて重い足かせとなります。"}]$jr4gl1o64$::jsonb,
      $ju9ja71a5$[{"t":"p","text":"感情の繊細さと穏やかな活動を好むという共通点を最大限に活かし、互いの心の状態に寄り添いながら無理のないペースで静かな時間を共有することが推奨されます。"},{"t":"p","text":"相手が重視する計画性や集団での活動に対し、自身の参加を不定期かつ義務のないものとして事前に合意しておくことで、心理的な負担を感じずに相手の温かな空間に参加できます。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が計画通りに進まないことで動揺している際にはその感情を否定せずに受け止める姿勢を持つことが関係性の安定に寄与します。"}]$ju9ja71a5$::jsonb,
      $jfu1oxn9a$[{"t":"p","text":"集団への責任感から計画的な参加を求める相手の期待に対し、気分で動きたい側はそれに応えられない自分に罪悪感を抱き、結果としてトレーニングから距離を置きたくなります。"},{"t":"p","text":"気分による突然の不参加が発生した際、計画を重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"一人で静かに過ごすことで心を整えたい側にとって、複数人での活動を前提とする相手の環境はたとえ強度が穏やかであっても常に他者の感情に晒されるという点で精神的な消耗を伴います。"}]$jfu1oxn9a$::jsonb,
      $jvt4sj0a4$[]$jvt4sj0a4$::jsonb
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
      'SFVC', 'GPVH',
      $jfoeqt83y$[{"t":"p","text":"感情の起伏が大きく内面状態と行動が連動するという点では理解し合えます。しかし一人で気分に合わせて穏やかに整えたい側に対し、相手は複数人で計画的に高強度の活動を行い感情を熱く燃やそうとします。同じ感情の揺れを持ちながらも、そのエネルギーを静寂に向けるか熱狂に向けるかという出力方向が完全に逆であり、相手の熱量は静けさを求める側にとって大きな脅威となります。"}]$jfoeqt83y$::jsonb,
      $jqd192n6o$[{"t":"p","text":"感情が行動の起点になるという唯一の共通点を活かし、互いの心の状態について深く語り合う時間を設けることで、行動様式の違いを超えた精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手が持つ高い熱量や計画的な集団行動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手の熱狂的な活動を遠くから見守りつつ自身は一人の静かなペースを保つという明確な境界線を引くことが重要となります。"}]$jqd192n6o$::jsonb,
      $j17sk6pkb$[{"t":"p","text":"集団で計画的に高強度の活動を推進しようとする相手の熱量は、一人で穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い圧迫感として作用します。"},{"t":"p","text":"感情の揺れを共有しているため、相手が目標に向かって熱く感情を昂らせている時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と集団への責任を重んじる相手が参加を強要した際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$j17sk6pkb$::jsonb,
      $j0hjx72eq$[]$j0hjx72eq$::jsonb
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
      'SFVC', 'SFMC',
      $j0jqv2ipp$[{"t":"p","text":"事前の計画なしに一人で穏やかに動くという外形的な行動様式は完全に一致しています。唯一の違いは感情の揺れと連動して動くか、常に一定の心理的安定を保ちながら気まぐれに動くかという点にあります。トレーニングのペースや好む環境が非常に似ているため一緒に過ごす上での摩擦は極めて少ないですが、内面的な感情の重みにおいて微細な温度差が存在します。"}]$j0jqv2ipp$::jsonb,
      $jx3r0ssw6$[{"t":"p","text":"計画を立てず一人ひとりのペースを尊重しながら穏やかに動くという共通の基盤を活かし、互いに干渉しすぎない自然体での活動を共有することが推奨されます。"},{"t":"p","text":"感情の揺れが大きい日は心理的に安定している相手の淡々としたペースに身を委ねることで、自身の感情の波を穏やかに静める効果的なトレーニング時間として活用することができます。"},{"t":"p","text":"相手の心理的な安定感を冷たさと捉えるのではなく感情に振り回されない頼もしい特性として肯定的に受け止めることで、より安心感のある運動習慣を築くことが可能となります。"}]$jx3r0ssw6$::jsonb,
      $jodegdkzt$[{"t":"p","text":"感情の揺れや不調を訴えた際、心理的に安定している相手がそれを深刻に受け止めず淡々と処理してしまうことで、繊細な側はトレーニングを通じた共感が得られないという孤独感を感じます。"},{"t":"p","text":"気分によって予定を変更した際、相手は気に留めないものの、繊細な側は勝手に罪悪感を抱き込みその感情の処理において一人で疲弊してしまうという非対称な構造が存在します。"},{"t":"p","text":"行動様式が似ているからこそ内面的な感情の重みの違いが浮き彫りになりやすく、相手の軽やかさが時に自身の繊細な感情を否定されているように錯覚させる危険性を孕んでいます。"}]$jodegdkzt$::jsonb,
      $jbzs2ykmz$[]$jbzs2ykmz$::jsonb
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
      'SFVC', 'SFMH',
      $jvbhi3x06$[{"t":"p","text":"計画に縛られず単独で思い立った時に行動するという初動のスタイルは一致します。しかし穏やかに感情を整えたい側と、高強度の活動を通じて心理的な安定や刺激を得たい側とでは、動き出した後のトレーニング展開が大きく異なります。同じように気まぐれにスタートしても相手の求めるスピードや強度にはついていくことができず、結果として別々のペースで動くことになります。"}]$jvbhi3x06$::jsonb,
      $jj5ahk5da$[{"t":"p","text":"思い立った時にすぐ行動できるという共通の特性を活かし、活動のスタート地点や目的地だけを共有し、道中はそれぞれのペースで動くといった柔軟なトレーニング形式が推奨されます。"},{"t":"p","text":"相手が高強度の活動を求めることを前提とし、無理にペースを合わせようとせず自身は穏やかな活動に専念するという明確な役割分担を意識することが重要です。"},{"t":"p","text":"相手が意図的に強度を落とし休息や探索を目的とするような日にのみ行動を共にすることで、互いのペースの違いによる摩擦を避けつつ有意義な時間を共有することが可能となります。"}]$jj5ahk5da$::jsonb,
      $jvfvde8tp$[{"t":"p","text":"気まぐれに行動を開始した後、相手が急激に強度やスピードを上げた際、穏やかに心を整えたい側は取り残される感覚に陥り、強い疲労感と不満を抱くことになります。"},{"t":"p","text":"感情の揺れによって活動を控えたい日であっても、心理的に安定し刺激を求める相手の突発的な行動に巻き込まれると、自身の内面と向き合うトレーニング時間が奪われ精神的に消耗します。"},{"t":"p","text":"互いに単独での行動を好むため、ペースや目的の違いが明確になった瞬間に歩み寄る努力が放棄されやすく、一緒に運動する意味を見失いやすいという構造的な脆さを抱えています。"}]$jvfvde8tp$::jsonb,
      $jqiuyj2ep$[]$jqiuyj2ep$::jsonb
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
      'SFVC', 'SFVH',
      $jlrf0qkuj$[{"t":"p","text":"計画なしに一人で感情の揺れと連動しながら動くという内面的なメカニズムは非常に似通っています。唯一にして最大の違いはその感情を穏やかに整える方向に向かうか、高強度の活動で爆発させる方向に向かうかという点にあります。感情の起伏を共有できるため深い共感関係を築ける一方で、相手の激しいエネルギー放出は静けさを求める側にとって許容範囲を超える刺激となりえます。"}]$jlrf0qkuj$::jsonb,
      $j2joxgxjx$[{"t":"p","text":"感情の揺れに従って単独で動くという共通の特性を活かし、お互いの気分が合致したタイミングで互いに干渉しない距離感を保ちながら活動を共有することが推奨されます。"},{"t":"p","text":"相手が感情を高強度で爆発させたい日には無理に同行せず、互いの感情が落ち着き静けさを求めているタイミングを見計らって穏やかなトレーニング時間を共にすることが有効です。"},{"t":"p","text":"感情の起伏が激しいという共通点を理解し合い、不調な日には互いに距離を置き無理に励ましたり活動を強要したりしないという暗黙のルールを設けることが関係を安定させます。"}]$j2joxgxjx$::jsonb,
      $jhebahnhv$[{"t":"p","text":"感情が高ぶった相手が高強度の活動に突入した際、穏やかに心を整えたい側はその激しいエネルギーに圧倒され自身のペースを乱されることに対する強い拒絶感を抱きます。"},{"t":"p","text":"互いに感情の揺れが大きいため双方が同時にネガティブな感情に支配された場合、負の感情が共鳴し合いトレーニングの継続そのものが極めて不安定な状態に陥る危険性を孕んでいます。"},{"t":"p","text":"感情に従って行動するがゆえに相手の激しい感情表現を自身への攻撃や圧力と誤認しやすく、繊細な者同士の衝突は修復に時間がかかる深い心理的ダメージを生む可能性があります。"}]$jhebahnhv$::jsonb,
      $j3702lmwi$[]$j3702lmwi$::jsonb
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
      'SFVC', 'SPMC',
      $jbk0xystf$[{"t":"p","text":"単独で穏やかな活動を好むという外形的なスタイルは一致しています。しかしその日の気分と感情の揺れに従って動く側に対し、相手は計画表かつ継続的な習慣を通じて心理的安定を維持しようとします。静かで穏やかなトレーニング環境を共有できる安心感はあるものの、相手の持つ規則正しさや継続への意志が、気まぐれで繊細な側にとって無言のプレッシャーとして機能します。"}]$jbk0xystf$::jsonb,
      $j2pt4fsmg$[{"t":"p","text":"一人で穏やかに動くという共通の好みを活かし、相手の計画的な活動に対して自身は気が向いた時だけ参加するという不定期な関わり方を許容してもらうことが推奨されます。"},{"t":"p","text":"相手の規則正しい習慣を尊重しつつ自身の感情の揺れや気まぐれさを事前に伝え、計画通りに行動できない日があっても互いに気にしないという合意を形成しておくことが有効です。"},{"t":"p","text":"心理的に安定している相手の淡々としたペースを自身の感情の揺れを静めるための安全な拠り所として活用することで、互いの違いを補完し合う関係性を築くことが可能となります。"}]$j2pt4fsmg$::jsonb,
      $j76a7tvyw$[{"t":"p","text":"計画的な習慣を重んじる相手がよかれと思って定期的な活動への参加を促した際、気分で動きたい側はそれを強い拘束や義務感として受け取り心理的な負担を増大させます。"},{"t":"p","text":"感情の揺れによって予定をキャンセルした際、心理的に安定している相手は気に留めないものの、繊細な側は計画を乱したことへの罪悪感を抱き込み一人で疲弊してしまいます。"},{"t":"p","text":"規則正しく淡々と行動する相手の姿が感情に振り回されやすい側にとって、時に自身の不安定さを際立たせる鏡のように機能し、劣等感や自己否定を引き起こす原因となります。"}]$j76a7tvyw$::jsonb,
      $j50ham6wb$[]$j50ham6wb$::jsonb
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
      'SFVC', 'SPMH',
      $j5byeffe8$[{"t":"p","text":"他者に干渉されず単独で行動することを好むという点だけは一致します。しかし気分に合わせて穏やかに感情を整えたい側と、計画的に高強度の目標達成を目指し心理的安定を得る側とでは、運動の目的やアプローチが対極にあります。互いに単独行動を好むため直接的な衝突は避けやすいものの、相手のストイックな姿勢は静けさを求める側にとって近寄りがたい異質なものとして映ります。"}]$j5byeffe8$::jsonb,
      $j3nfo5b5j$[{"t":"p","text":"単独で行動するという唯一の共通点を尊重し、無理に活動を共有しようとせず同じ空間にいながらも完全に別の活動を行うといった独立した関係性を保つことが推奨されます。"},{"t":"p","text":"相手が目標や計画から離れ意図的に強度を落として休息をとるような例外的な日にのみ、穏やかな散策などを共有することで互いの領域を侵さずに時間を過ごすことができます。"},{"t":"p","text":"互いの運動に対する価値観が根本的に異なることを前提とし、相手のストイックな姿勢を自身のペースを脅かすものではなく単なる異なる生き方として客観的に観察する視点を持つことが有効です。"}]$j3nfo5b5j$::jsonb,
      $jzwse23o0$[{"t":"p","text":"計画的かつ高強度の目標達成を追求する相手の姿勢が、穏やかに心を整えたい側にとって常に評価や競争の基準を突きつけられているような無言のプレッシャーとして作用します。"},{"t":"p","text":"感情の揺れによって活動を休止したい日であっても、心理的に安定し計画を遂行する相手の存在が自身の感情的な不安定さを否定されているような錯覚を引き起こし心理的負担となります。"},{"t":"p","text":"互いに他者への干渉を好まないため、一度ペースや目的の違いによる違和感が生じるとそれをすり合わせる努力が行われず、心理的な距離が決定的に離れてしまう傾向があります。"}]$jzwse23o0$::jsonb,
      $j3e433g3p$[]$j3e433g3p$::jsonb
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
      'SFVC', 'SPVC',
      $jqx75ko72$[{"t":"p","text":"単独で感情の繊細さと連動しながら穏やかに動くという基本的な性質は非常に似通っています。唯一の違いはその日の気分で動くか、計画的なルーティンを守るかという点にあります。感情の揺れを共有しながら静かな時間を過ごせるため深い安心感が得られる一方で、相手のルーティンへの固執が気まぐれに動きたい側の自由を制限し、トレーニングにおける予期せぬ摩擦を生む可能性があります。"}]$jqx75ko72$::jsonb,
      $jxbzhb77j$[{"t":"p","text":"一人で穏やかに感情と向き合うという共通の基盤を最大限に活かし、互いの心の状態に寄り添いながら静かで刺激の少ない環境での活動を共有することが推奨されます。"},{"t":"p","text":"相手の計画的なルーティンを尊重しつつ自身の参加は不定期であることを事前に合意し、相手の規則正しい生活の中に時折交わるような柔軟な関わり方を構築することが有効です。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手がルーティンを崩されて動揺している際にはその感情を否定せずに受け止め、静かに寄り添う姿勢を持つことがトレーニング関係の安定に寄与します。"}]$jxbzhb77j$::jsonb,
      $j1gb9javf$[{"t":"p","text":"計画的なルーティンを重んじる相手がその規則正しい活動への同調を求めた際、気分で動きたい側は自由を奪われるような強い拘束感を感じ、心理的な逃避を引き起こします。"},{"t":"p","text":"気分によって予定をキャンセルした際、ルーティンを重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"感情の揺れを共有しているがゆえに、相手の計画通りに進まないことへの苛立ちや不安がダイレクトに伝わりやすく、穏やかに心を整えたい側にとって過度な精神的消耗をもたらします。"}]$j1gb9javf$::jsonb,
      $jhy53ei73$[]$jhy53ei73$::jsonb
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
      'SFVC', 'SPVH',
      $jqt23t8p8$[{"t":"p","text":"単独で行動し感情の起伏と深く連動するという内面的なメカニズムは共有しています。しかしその感情を穏やかに整えるために気分で動く側に対し、相手は計画的かつ高強度のトレーニングを通じて自己を超越しようとします。感情の揺れという共通項を持ちながらも、相手のストイックな自己研鑽の姿勢は、静けさと安心を求める側にとって常に自身を否定されているような強い圧迫感を与えます。"}]$jqt23t8p8$::jsonb,
      $jfnzqxvc1$[{"t":"p","text":"単独で行動し感情と連動するという共通の特性を活かし、互いの内面的な葛藤や感情の揺れについて語り合うことで、行動様式の違いを超えた深い精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手の計画的で高強度の活動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手のストイックな姿勢を遠くから見守りつつ自身は一人の穏やかなペースを保つという明確な境界線を引くことが重要となります。"}]$jfnzqxvc1$::jsonb,
      $jb7lwhmmt$[{"t":"p","text":"計画的に高強度の目標達成を追求し自己を超越しようとする相手の熱量は、穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い恐怖感として作用します。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が目標に向かってストイックに自身を追い込んでいる時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と自己研鑽を重んじる相手がその姿勢を求めた際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$jb7lwhmmt$::jsonb,
      $jk6pi6quq$[]$jk6pi6quq$::jsonb
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
      'SFVH', 'GFMC',
      $jbvtfo3ie$[{"t":"p","text":"事前の計画を持たずにその日の感覚で動く点ではプレースタイルが一致しています。しかし基準型が一人で内面的な感情の爆発を高める方向へ向かうのに対し、相手は複数人で和やかに場を整える方向へ向かうため、行動の目的が根本的に異なります。基準型にとって集団での緩やかな運動は集中を削ぐ要因となりやすく、相手が提供しようとする和やかな場が逆にモチベーションを低下させる原因となります。"}]$jbvtfo3ie$::jsonb,
      $jrmhkw9sw$[{"t":"p","text":"事前の計画を立てず、その日の気分で突発的に行動を開始するという共通の強みを活かすことが重要です。気分の一致により、行動を起こすまでの心理的ハードルを互いに下げることができます。"},{"t":"p","text":"相手が参加人数を最小限に絞り、一時的に運動の強度を上げるなど、基準型の集中を妨げない環境を整えることが効果的です。相手が特別な日として高強度な活動を提案した際、基準型の感情のスイッチが入りやすくなります。"},{"t":"p","text":"互いに記録や計画に縛られないため、当日の急な予定変更や中止に対しても寛容でいられます。この自由度の高さが、結果的に長期的な関係の維持に寄与します。"}]$jrmhkw9sw$::jsonb,
      $jp7uk20ve$[{"t":"p","text":"相手が複数人を巻き込んで緩やかな雰囲気を作ろうとした際、基準型の集中力が途切れ、運動への意欲が急速に失われます。集団での和やかな交流という相手の得意とする環境が、基準型にとっては最も避けたい状況となります。"},{"t":"p","text":"基準型が感情のスイッチを入れて極限まで自分を高めようとする姿に対し、相手は過剰な追い込みであると捉え、引いてしまう傾向があります。運動に対する熱量と強度の差が、互いの理解を妨げる壁となります。"},{"t":"p","text":"基準型のなりたいに基づく感情の激しい起伏や爆発的なエネルギーを、ありたいに基づく相手の安定志向が受け止めきれない場面が生じます。基準型の真剣な取り組みが、相手には単なる大げさな振る舞いとして映ってしまう危険性があります。"}]$jp7uk20ve$::jsonb,
      $j6cy0bpo1$[]$j6cy0bpo1$::jsonb
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
      'SFVH', 'GFMH',
      $jkbdxasmi$[{"t":"p","text":"事前の計画なしに高強度の活動へ突入するプレースタイルは強く共鳴します。しかし基準型が一人で内面的な感情の爆発を動力とするのに対し、相手は複数人を巻き込んで外部とのエネルギー循環を動力とします。基準型が極限まで集中を高めようとする場面で、相手の集団志向がその集中を妨げるノイズとして機能してしまう構造的なすれ違いが存在します。"}]$jkbdxasmi$::jsonb,
      $j961iffyc$[{"t":"p","text":"計画を持たずにその日の衝動で高強度な活動に向かうという、両者の最も強い欲求をそのまま実行に移すことが最良の選択となります。互いの爆発的なエネルギーが同じ方向に向かうため、高い満足感を得られます。"},{"t":"p","text":"相手の持つ周囲を巻き込む強い熱量が、基準型の内面的な感情のスイッチを入れる外部刺激として機能する場面があります。相手の提案に乗る形で、基準型が自身の限界を超えるきっかけを掴むことができます。"},{"t":"p","text":"ありたいとなりたいの違いはあるものの、極限まで自分を追い込んだという身体的な達成感を共有することで繋がりを深められます。高強度な活動を終えた後の疲労感と充実感が、両者を結びつける共通言語となります。"}]$j961iffyc$::jsonb,
      $j03pfky3o$[{"t":"p","text":"相手が活動の場に多くの人を呼び込もうとした瞬間、基準型は自身の領域が侵されたと感じて意欲を失います。集団の規模が拡大するほど、基準型の内面に向かう集中力は削がれていきます。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら追い込む姿が、ありたいに基づく相手には過剰な自己抑圧に見えてしまいます。同じ高強度であっても、その背後にある心理的メカニズムの違いが違和感を生みます。"},{"t":"p","text":"基準型が全力を出し切って完全に活動を停止した状態になっても、相手はまだ周囲とエネルギーを循環させようと動き続けます。この活動終了後の温度差が、互いのペースに対する不満へと繋がります。"}]$j03pfky3o$::jsonb,
      $jk1ymvh2h$[]$jk1ymvh2h$::jsonb
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
      'SFVH', 'GFVC',
      $jym17uufj$[{"t":"p","text":"事前の計画に縛られず、その時の感情や内面の状態に強く連動して動くという行動原理は一致しています。しかし基準型が一人で極限まで自分を高めるために感情を爆発させるのに対し、相手は複数人の感情に寄り添いながら場を整えるために感情を働かせます。同じ感情連動型でありながら、そのエネルギーが内向きの爆発に向かうか外向きの調和に向かうかで、完全にベクトルが分かれます。"}]$jym17uufj$::jsonb,
      $j6f9sbmqn$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調の波が存在することを互いに深く理解し合えます。調子が上がらない日は無理に動かなくてよいという前提が、両者の間に安心感をもたらします。"},{"t":"p","text":"事前の計画を立てず、その日の気分や感情の赴くままに行動を開始するというスタイルが一致しています。ふとした瞬間に互いの波長が合い、自然な形で活動を共にできる日が存在します。"},{"t":"p","text":"基準型が全力を出し切って完全に休息を必要としている日に、相手の穏やかで整えるようなペースが心地よく感じられます。相手の温かな存在感が、基準型の回復を促すサポートとして機能します。"}]$j6f9sbmqn$::jsonb,
      $j0b1u4g7c$[{"t":"p","text":"基準型の感情のスイッチが入リ、極限まで自分を高めようと加速する際、相手の穏やかなペースを障害と感じてしまいます。基準型の求める強度と速度が、相手にとっての安全な環境を破壊する結果となります。"},{"t":"p","text":"基準型がさらに強い刺激を求めて追い込みをかけると、相手は心身ともにその要求に応えられず、強い疎外感を抱きます。強度の不一致が、そのまま心理的な距離へと直結してしまいます。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に底を打った場合、互いを引き上げる動力が完全に失われます。不調の連鎖が起きやすく、関係性が停滞するリスクを常に抱えています。"}]$j0b1u4g7c$::jsonb,
      $jiw6q6is8$[]$jiw6q6is8$::jsonb
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
      'SFVH', 'GFVH',
      $jnm7ttbwd$[{"t":"p","text":"事前の計画なしに感情の爆発を伴って高強度の活動へ向かうという核心部分は完全に一致しています。唯一の違いは基準型が一人で内面に向かって全力を出し切るのに対し、相手は複数人を巻き込んで熱狂を外部へ広げようとする点にあります。互いの熱量と行動原理は深く理解できるものの、その熱を向ける先が個人の内側か集団全体かで決定的な違いが生じます。"}]$jnm7ttbwd$::jsonb,
      $j4pdp6szn$[{"t":"p","text":"計画なし、感情の爆発、高強度という三つの要素が完全に合致しているため、その日の衝動をそのまま共有できます。互いの感情のスイッチが入った瞬間に、最高のパフォーマンスを共に引き出すことができます。"},{"t":"p","text":"言葉を交わさずとも、極限まで自分を追い込んだ時の内面的な熱量を正確に理解し合えます。この深い共感は、他のタイプとは得られない強固な結びつきを生み出します。"},{"t":"p","text":"相手が参加人数を基準型のみに絞り込んだ場合、互いの爆発的なエネルギーが相乗効果を生みます。一対一という限定された環境下においてのみ、両者のポテンシャルが最大限に発揮されます。"}]$j4pdp6szn$::jsonb,
      $jqenj8u3v$[{"t":"p","text":"相手がその熱狂をより多くの人と共有しようと集団を形成し始めた瞬間、基準型は内面への集中を妨げられたと感じて離脱を選択します。集団の拡大が、基準型の意欲を直接的に削ぐ原因となります。"},{"t":"p","text":"両者ともになりたいの性質を持つため感情の波が激しく、互いの不調が重なった際には活動が完全に停止します。感情の起伏が激しい者同士であるため、関係性の安定性に欠ける面があります。"},{"t":"p","text":"基準型が全力を出し切って活動を終えようとするタイミングで、相手はまだ周囲を巻き込んで熱狂を続けようとします。この活動の終息地点におけるエネルギーの不一致が、互いのペースを乱す要因となります。"}]$jqenj8u3v$::jsonb,
      $j79y4mn1r$[]$j79y4mn1r$::jsonb
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
      'SFVH', 'GPMC',
      $jw53afs9e$[{"t":"p","text":"行動原理から目的まで一切の共通点を持たない組み合わせです。基準型が一人で気分に任せて感情を爆発させ極限まで自分を高めることを求めるのに対し、相手は複数人で計画的に感情を安定させ場を整えることを目的とします。相手が理想とする安定的で継続的な集団活動は基準型にとって最も意欲を削がれる環境であり、互いの存在そのものが自身のプレースタイルを否定する構造となっています。"}]$jw53afs9e$::jsonb,
      $jn3oakmi9$[{"t":"p","text":"運動という文脈から完全に離れ、互いの価値観の違いを客観的に観察し合うことで、新たな視点を得ることができます。全く異なる行動原理を持つからこそ、人間としての興味深い対話が成立します。"},{"t":"p","text":"相手が設定する集団活動に対して、基準型が一切の義務感を負わず完全に気が向いた時だけ参加するという自由が担保された場合にのみ接点が生まれます。この極端な非継続性を受け入れることが唯一の条件となります。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている稀な日に限り、相手の穏やかで整えるようなペースに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jn3oakmi9$::jsonb,
      $jjk9vm7td$[{"t":"p","text":"相手がコミュニティの維持のために継続的な参加や計画的な行動を求めた瞬間、基準型は強い束縛を感じて完全に心を閉ざします。相手の善意に基づく提案が、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手が築き上げてきた集団の穏やかな調和が破壊されます。基準型の個人的な熱量が、相手のコミュニティ運営において異物として機能してしまいます。"},{"t":"p","text":"運動に対する根本的な目的が、瞬間の爆発と長期的な安定という相容れない方向を向いています。この目的の決定的な違いにより、共に活動する上での妥協点を見出すことが極めて困難です。"}]$jjk9vm7td$::jsonb,
      $j7oplhvov$[]$j7oplhvov$::jsonb
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
      'SFVH', 'GPMH',
      $juwv1zdv8$[{"t":"p","text":"高い強度で自己を追い込むという外形的な行動は一致しています。しかし基準型が一人で気分に任せて感情の爆発を動力とするのに対し、相手は複数人で計画的に感情を安定させながら集団の目標達成へ向かいます。同じ高強度であっても、基準型にとっては内面的な衝動の解放であり、相手にとっては計画的な成果の積み上げであるため、その過程で求める環境が全く異なります。"}]$juwv1zdv8$::jsonb,
      $jwin5kj9c$[{"t":"p","text":"高強度で自分を追い込むという共通の価値観を基盤として、互いの限界に挑戦する姿勢を尊重し合えます。全力を出し切った後の身体的な達成感は、両者を結びつける確かな共通言語となります。"},{"t":"p","text":"相手が一時的に計画や集団の枠組みを取り払い、その日の衝動だけで高強度な活動に付き合うことができれば、基準型の感情のスイッチが入リやすくなります。枠組みを外した純粋な追い込みの場が接点となります。"},{"t":"p","text":"互いに高いパフォーマンスを発揮すること自体に価値を置いているため、運動中の真剣な態度に共感できます。目的は異なれど、その瞬間に全力を尽くすというプロセスにおいて深く理解し合えます。"}]$jwin5kj9c$::jsonb,
      $jtxkk3ij6$[{"t":"p","text":"相手が集団の目標達成や事前の計画に沿った行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の枠組みが、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら活動する姿に対し、ありたいに基づく相手は感情的で非効率的であると評価してしまいます。感情の起伏を動力とするか安定を動力とするかの違いが相互不理解を生みます。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた計画が崩壊します。基準型の衝動的なプレースタイルが、相手の計画性を根本から脅かす結果となります。"}]$jtxkk3ij6$::jsonb,
      $jvkt7oaig$[]$jvkt7oaig$::jsonb
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
      'SFVH', 'GPVC',
      $jc0nchnpu$[{"t":"p","text":"内面的な感情や状態に強く連動して行動するという性質は共有しています。しかし基準型が一人で気分に任せて極限まで自分を高めるために感情を使うのに対し、相手は複数人で計画的に場を整えるために感情を使います。同じ感情連動型でありながら、基準型は自己の爆発へ、相手は他者への配慮と責任感へと向かうため、互いの感情の使い方が衝突する関係にあります。"}]$jc0nchnpu$::jsonb,
      $j9c6ueu1m$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調が存在することを互いに深く理解し合えます。理屈ではなく感情の状態によって行動が左右されるという事実を共有できます。"},{"t":"p","text":"相手が集団への責任や事前の計画を完全に手放し、基準型の自由なペースを許容した特別な状況下においてのみ、共に行動する余地が生まれます。義務感を排除することが絶対条件となります。"},{"t":"p","text":"互いに感情を動力としているため、その日の波長が偶然一致した際には、深い精神的な繋がりを感じながら活動できます。感情のベクトルは異なっても、感情そのものの重要性は理解し合えます。"}]$j9c6ueu1m$::jsonb,
      $jns975thh$[{"t":"p","text":"相手が周囲への配慮や計画的な行動を基準型に求めた瞬間、基準型は自身の内面的な爆発を妨げられたと感じて強く反発します。相手の利他的な行動が、基準型にとっては不当な束縛として機能します。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手の穏やかで整えるようなペースが基準型の集中を妨げる障害となります。基準型の求める限界突破と相手の求める安全確保が真っ向から対立します。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に低下した場合、互いに相手をサポートする余力がなくなり、関係性が完全に停滞します。感情の起伏に依存する危うさを常に抱えています。"}]$jns975thh$::jsonb,
      $jlb487qge$[]$jlb487qge$::jsonb
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
      'SFVH', 'GPVH',
      $jr49l9eoq$[{"t":"p","text":"感情の爆発を動力として高強度な活動へ向かうという核心部分は強く共鳴します。しかし基準型が一人で気分に任せて行動するのに対し、相手は複数人で計画的に目標へ向かって行動します。互いの持つ熱量や限界に挑む姿勢は深く理解できるものの、基準型が個人的な衝動を重視するのに対し、相手は集団の計画的な成長を重視するため、活動の枠組みにおいて決定的なすれ違いが生じます。"}]$jr49l9eoq$::jsonb,
      $jctdlgl0j$[{"t":"p","text":"感情の爆発と高強度という二つの要素が合致しているため、互いの熱量をぶつけ合いながら限界を超えることができます。感情が高ぶった際の爆発的なパフォーマンスを共有できます。"},{"t":"p","text":"基準型の感情のスイッチが入ったタイミングで、相手の持つ強い熱量がさらなる推進力として機能します。互いのエネルギーが共鳴し、一人では到達できない領域まで自身を引き上げることができます。"},{"t":"p","text":"全力を出し切ることの価値を互いに深く理解しているため、運動に対する真剣な姿勢を尊重し合えます。妥協を許さないという点において、強固な信頼関係を築くことができます。"}]$jctdlgl0j$::jsonb,
      $j1c8am3z5$[{"t":"p","text":"相手が集団の目標達成や事前の計画に沿った行動を基準型に求めた瞬間、基準型は自身の自由な衝動を奪われたと感じて意欲を失います。相手のリーダーシップが、基準型にとっては窮屈な管理として機能します。"},{"t":"p","text":"基準型がその日の気分によって突発的に行動を変更した際、相手が綿密に組み立てた集団の計画が崩壊します。基準型の衝動性が、相手の計画性と集団運営を根本から脅かします。"},{"t":"p","text":"両者ともになりたいの性質を持ち、かつ高強度を求めるため、感情が高ぶった際には互いに限界を超えて過剰に追い込んでしまい、心身ともに深刻な消耗を招く危険性があります。"}]$j1c8am3z5$::jsonb,
      $jkg4gkdqy$[]$jkg4gkdqy$::jsonb
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
      'SFVH', 'SFMC',
      $jj5tcqhjh$[{"t":"p","text":"事前の計画を立てず、集団に属さずに個人の感覚で行動を開始するというプレースタイルの起点は完全に一致しています。しかし基準型がなりたいに基づいて感情を爆発させ極限まで高める方向へ向かうのに対し、相手はありたいに基づいて感情を安定させ穏やかに整える方向へ向かいます。動き出すまでのアプローチは同じでも、動き出した後の出力と目的が正反対であるため、並走することは難しいです。"}]$jj5tcqhjh$::jsonb,
      $j70vj2fpz$[{"t":"p","text":"事前の計画や他者との調整を必要とせず、互いの思いつきで自由に行動を開始できるという気楽さを共有できます。行動を起こすまでの心理的ハードルが極めて低い関係性を築けます。"},{"t":"p","text":"互いに個人の領域を尊重し干渉し合わないという暗黙の了解が存在するため、同じ空間にいながら別々のペースで活動することにストレスを感じません。自律性を保ったまま共存できます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている日に限り、相手の穏やかで整えるようなペースと同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が重なります。"}]$j70vj2fpz$::jsonb,
      $jt43lbvnj$[{"t":"p","text":"基準型の感情のスイッチが入った際、突発的に高強度な活動に突入した瞬間、相手はその激しいペースについていくことを放棄し、心理的な距離を置きます。強度の決定的な違いが、即座に活動の分離を引き起こします。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させる姿が、ありたいに基づいて心の平穏を保とうとする相手の領域を乱すノイズとなります。基準型の熱量が、相手にとっては単なる不快な刺激として機能してしまいます。"},{"t":"p","text":"基準型がさらに強い刺激を求めてエスカレートしていく過程で、相手は自身のペースを守るために完全に撤退を選択します。基準型の追い込みが、結果として相手を遠ざける原因となります。"}]$jt43lbvnj$::jsonb,
      $jmf563mtu$[]$jmf563mtu$::jsonb
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
      'SFVH', 'SFMH',
      $jbu1b5i11$[{"t":"p","text":"事前の計画なしに個人の衝動で高強度な活動へ突入するという核心部分は完全に一致しています。唯一の違いは基準型がなりたいに基づいて感情の爆発を動力とするのに対し、相手はありたいに基づいて精神的な安定を保ちながら新たな体験を求める点にあります。行動のスタイルは極めて近いものの、基準型が内面的な感情の消化を目的とするのに対し、相手は外部からの刺激の獲得を目的とします。"}]$jbu1b5i11$::jsonb,
      $jvraet7tj$[{"t":"p","text":"計画を持たず個人の衝動のままに高強度な活動に向かうというプレースタイルが完全に合致しています。互いの爆発的なエネルギーを干渉することなく、同じ空間で最大限に発揮できます。"},{"t":"p","text":"互いに他者への依存や束縛を嫌うため、それぞれが自身の限界に挑む姿を適度な距離感で尊重し合えます。自律した個人同士が高いレベルで刺激を与え合う関係が成立します。"},{"t":"p","text":"基準型が感情の波によって不調に陥っている際、相手のありたいに基づく精神的な安定感が、基準型の感情を落ち着かせるサポートとして機能する場面があります。"}]$jvraet7tj$::jsonb,
      $j64q05r7l$[{"t":"p","text":"相手が新たな体験や刺激を求めて次々と行動を提案した際、基準型は自身の内面的な感情の消化に集中できず、その提案を強い圧力として感じてしまいます。相手の探索欲求が、基準型の集中を妨げます。"},{"t":"p","text":"基準型が全力を出し切って完全に活動を停止した状態になっても、相手は精神的に安定したまま次の活動へ向かおうとします。この活動終了後のエネルギーの落差が、互いのペースに対する違和感を生みます。"},{"t":"p","text":"基準型がなりたいに基づいて感情を激しく上下させる姿に対し、ありたいに基づく相手はその起伏の激しさを理解できず、無駄な消耗であると捉えてしまいます。"}]$j64q05r7l$::jsonb,
      $jgspooafr$[]$jgspooafr$::jsonb
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
      'SFVH', 'SFVC',
      $jq41xokh7$[{"t":"p","text":"事前の計画なしに個人の内面的な感情と連動して行動を開始するという核心部分は完全に一致しています。唯一の違いは基準型がその感情を爆発させて極限まで高める方向へ向かうのに対し、相手はその感情を穏やかに落ち着かせて整える方向へ向かう点にあります。行動の起点と感情の重要性は深く共有できるものの、その感情をどのように処理するかという出力の段階で決定的な違いが生じます。"}]$jq41xokh7$::jsonb,
      $j1l0x3yrn$[{"t":"p","text":"感情の波に連動して行動するという性質が完全に一致しているため、理屈ではなくその日の感覚だけで行動を共にできます。互いの気分が偶然重なった際、非常に心地よい時間を共有できます。"},{"t":"p","text":"なりたい同士であるため、調子が上がらない日は無理に動かなくてよいという前提を深く理解し合えます。互いの不調を責めることなく、自然に受け入れることができる関係性が築けます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息を必要としている日に、相手の穏やかで整えるようなペースが完璧に同調します。基準型のエネルギーがゼロの状態において、相手の存在が最大の癒しとなります。"}]$j1l0x3yrn$::jsonb,
      $j54o3gced$[{"t":"p","text":"基準型の感情のスイッチが入った際、極限まで自分を高めようと加速した瞬間、相手はその激しいペースに圧倒され、強い疲労感と疎外感を抱きます。強度の決定的な違いが、相手の心を深く傷つける結果となります。"},{"t":"p","text":"基準型がさらに強い刺激を求めて追い込みをかけると、相手は自身の能力不足を突きつけられたように感じ、自己肯定感を低下させてしまいます。基準型の熱量が、相手に対する無言の圧力として機能します。"},{"t":"p","text":"両者ともになりたいの性質を持つため、感情の波が同時に底を打った場合、互いを引き上げる動力が完全に失われます。不調の連鎖が起きやすく、関係性が停滞するリスクを常に抱えています。"}]$j54o3gced$::jsonb,
      $jjigu5a2v$[]$jjigu5a2v$::jsonb
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
      'SFVH', 'SPMC',
      $j21coy3if$[{"t":"p","text":"集団に属さず個人の領域で行動するという外形的な特徴だけが一致しています。しかし基準型が気分に任せて感情を爆発させ極限まで高めることを求めるのに対し、相手は計画的に感情を安定させ穏やかに整えることを求めます。基準型にとっての運動が瞬間の衝動の解放であるのに対し、相手にとっての運動は長期的な習慣の形成であるため、同じ一人での活動であってもその哲学が真っ向から対立します。"}]$j21coy3if$::jsonb,
      $jvv6v5sp8$[{"t":"p","text":"集団での活動を好まず個人の領域を重視するという価値観が共通しているため、互いの行動に干渉しない適度な距離感を保つことができます。自律性を尊重し合う関係が自然に成立します。"},{"t":"p","text":"相手がありたいに基づいて精神的に安定しているため、基準型のなりたいに基づく激しい感情の起伏を否定せず、客観的に受け流すことができます。この相手の寛容さが、基準型に安心感を与えます。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている稀な日に限り、相手の穏やかで計画的なペースに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jvv6v5sp8$::jsonb,
      $jsymwh5uy$[{"t":"p","text":"相手が運動を毎日の習慣として計画的に継続しようと提案した瞬間、基準型は強い束縛を感じて完全に意欲を失います。相手にとっての理想的な環境が、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発的かつ高強度な行動をとることで、相手が築き上げてきた穏やかな日常のルーティンが破壊されます。基準型の衝動性が、相手の計画性を根本から脅かします。"},{"t":"p","text":"基準型がその日の気分によって活動を不定期に行うプレースタイルが、相手の長期的な習慣形成の妨げとなります。運動に対する目的が瞬間の爆発と長期的な継続で完全に分かれているため、共に活動する接点を見出すことが困難です。"}]$jsymwh5uy$::jsonb,
      $jstr5aiys$[]$jstr5aiys$::jsonb
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
      'SFVH', 'SPMH',
      $jnsxnxrit$[{"t":"p","text":"集団に属さず個人の領域で極限まで自分を追い込むというプレースタイルは強く共鳴します。しかし基準型が気分に任せて感情の爆発を動力とするのに対し、相手は綿密な計画に基づいて精神を安定させながら記録の更新を動力とします。同じ高強度であっても、基準型にとっては内面的な衝動の解放であり、相手にとっては計画的な成果の積み上げであるため、その過程で求めるアプローチが全く異なります。"}]$jnsxnxrit$::jsonb,
      $jomqb48q3$[{"t":"p","text":"個人の領域で極限まで自分を追い込むという共通の価値観を基盤として、互いの限界に挑戦する姿勢を深く尊重し合えます。全力を出し切ることの価値を、言葉を交わさずとも共有できます。"},{"t":"p","text":"互いに他者への依存や干渉を嫌うため、それぞれが自身の目標に向かって集中する姿を適度な距離感で認め合えます。自律した個人同士が高いレベルで刺激を与え合う関係が成立します。"},{"t":"p","text":"基準型の感情のスイッチが入ったタイミングで、相手の計画的な高強度の活動に合流することができれば、互いのエネルギーが相乗効果を生みます。枠組みを外した純粋な追い込みの場が接点となります。"}]$jomqb48q3$::jsonb,
      $jvnckssyb$[{"t":"p","text":"相手が記録の更新や事前の計画に沿った継続的な行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の計画性が、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた成長の計画が崩壊します。基準型の衝動的なプレースタイルが、相手の長期的な目標達成を根本から脅かす結果となります。"},{"t":"p","text":"基準型がなりたいに基づいて感情を爆発させながら活動する姿に対し、ありたいに基づく相手は感情的で非効率的であると評価してしまいます。感情の起伏を動力とするか安定を動力とするかの違いが相互不理解を生みます。"}]$jvnckssyb$::jsonb,
      $j0ovg0ln9$[]$j0ovg0ln9$::jsonb
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
      'SFVH', 'SPVC',
      $j8rwycqrr$[{"t":"p","text":"個人の領域で内面的な感情と連動しながら行動するという性質は共有しています。しかし基準型が気分に任せて感情を爆発させ極限まで高めるために行動するのに対し、相手は計画的にルーティンをこなし感情を安定させるために行動します。同じ感情連動型でありながら、基準型は衝動の解放へ、相手は不安の解消と安定へと向かうため、互いの行動の目的が衝突する関係にあります。"}]$j8rwycqrr$::jsonb,
      $jed6z2hlv$[{"t":"p","text":"なりたいという共通の性質により、感情の波や不調が存在することを互いに深く理解し合えます。理屈ではなく感情の状態によって行動が左右されるという事実を共有できます。"},{"t":"p","text":"個人の領域を重視するという価値観が共通しているため、互いの行動に過度な干渉をしない適度な距離感を保つことができます。自律性を尊重し合う関係が自然に成立します。"},{"t":"p","text":"基準型が全力を出し切って完全に休息モードに入っている日に限り、相手の穏やかで計画的なルーティンに同調できます。基準型のエネルギーがゼロの状態でのみ、両者の波長が一時的に重なります。"}]$jed6z2hlv$::jsonb,
      $jtrbmoxkt$[{"t":"p","text":"相手が運動を毎日の習慣として計画的に継続しようと提案した瞬間、基準型は強い束縛を感じて完全に意欲を失います。相手にとっての精神安定剤であるルーティンが、基準型にとっては最大のストレスとなります。"},{"t":"p","text":"基準型の感情のスイッチが入った際、突発力かつ高強度な行動をとることで、相手が築き上げてきた穏やかな日常のルーティンが破壊されます。基準型の衝動性が、相手の精神的な安定を根本から脅かします。"},{"t":"p","text":"基準型がその日の気分によって活動をキャンセルした際、相手は自身のルーティンが崩れたことに対して強い不安と動揺を覚えます。なりたい同士であるため、相手の動揺が基準型にも伝播し、関係性が悪化しやすいです。"}]$jtrbmoxkt$::jsonb,
      $jn2frhl2u$[]$jn2frhl2u$::jsonb
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
      'SFVH', 'SPVH',
      $jgf7oe913$[{"t":"p","text":"個人の領域で感情と連動しながら極限まで自分を追い込むという核心部分は完全に一致しています。唯一の違いは基準型が事前の計画なしにその日の衝動で行動を開始するのに対し、相手は綿密な計画に基づいて行動を開始する点にあります。行動のスタイルと求める強度は極めて近いものの、基準型が瞬間の爆発を重視するのに対し、相手は計画的な自己超越を重視するため、継続性に対する価値観が分かれます。"}]$jgf7oe913$::jsonb,
      $jiig6msw2$[{"t":"p","text":"個人の領域で感情と連動しながら極限まで自分を追い込むというプレースタイルが完全に合致しています。互いの爆発的なエネルギーを干渉することなく、同じ空間で最大限に発揮できます。"},{"t":"p","text":"なりたい同士であるため、調子が上がらない日は無理に動かなくてよいという前提を深く理解し合えます。互いの不調を責めることなく、自然に受け入れることができる関係性が築けます。"},{"t":"p","text":"全力を出し切った後の身体的・精神的な達成感を、言葉を交わさずとも深く共有できます。この極限状態での共感が、他のタイプとは得られない強固な結びつきを生み出します。"}]$jiig6msw2$::jsonb,
      $jx9gslbzv$[{"t":"p","text":"相手が記録の更新や事前の計画に沿った継続的な行動を求めた瞬間、基準型は内面的な衝動を抑圧されたと感じて意欲を失います。相手にとって必須の計画性が、基準型にとっては意欲を削ぐ最大の要因となります。"},{"t":"p","text":"基準型がその日の気分によって活動を突然キャンセルした際、相手が綿密に組み立てた成長の計画が崩壊し、相手は強い自己嫌悪に陥ります。なりたい同士であるため、相手の負の感情が基準型にも伝播し、関係性が悪化しやすいです。"},{"t":"p","text":"両者ともになりたいの性質を持ち、かつ高強度を求めるため、感情が高ぶった際には互いに限界を超えて過剰に追い込んでしまい、心身ともに深刻な消耗を招く危険性があります。"}]$jx9gslbzv$::jsonb,
      $jfsxwv2o8$[]$jfsxwv2o8$::jsonb
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
      'SPMC', 'GFMC',
      $jygquikwk$[{"t":"p","text":"一人で静かに計画を遂行したい側と、複数人でその場の気分を共有したい側では、運動の前提条件が大きく異なります。前者が日常のルーティンとしての安定を求めるのに対し、後者は交流を通じた楽しさを優先するため、一緒に動く際は活動の境界線を明確に引く必要があります。互いの運動スタイルを干渉させず、空間のみを共有する並行的な関わり方が、長期的な関係維持の鍵となります。"}]$jygquikwk$::jsonb,
      $jldkxcb00$[{"t":"p","text":"互いの運動に対する目的や価値観の違いを前提として受け入れ、無理に同じメニューをこなすことを避けるのが賢明です。一方が計画通りに黙々と動く傍らで、もう一方は自身の気分に合わせて自由に活動するなど、独立した時間を確保しながら同じ空間にいるスタイルが適しています。"},{"t":"p","text":"接点を持つ場合はあらかじめ日時や場所を明確に定め、それ以外の時間は完全に独立した活動を保証することが重要です。予測可能な範囲でのみ関わることで、計画的な側が習慣を乱されることへの懸念を払拭でき、安心感を持って運動に臨むことができます。"},{"t":"p","text":"運動の成果や過程について共有する際は、相手の基準を評価せず、事実のみを報告し合う形式が望ましいです。感情的な同調を求めず、客観的な記録の交換にとどめることで、適度な距離感を保ちながら互いの存在を励みにすることができます。"}]$jldkxcb00$::jsonb,
      $j0f9bsgok$[{"t":"p","text":"突発的な予定の変更や事前の合意がない状態での参加要請は、計画的な習慣を維持しようとする側の強い抵抗を引き起こします。予測不可能性は運動を継続するためのシステムを脅かす要因として認識され、心理的なハードルを著しく高めてしまいます。"},{"t":"p","text":"運動の強度や頻度に関して一方が自身の基準を他方に適用しようとすると、深刻な対立が生じます。特に集団での活動を無意識に強要する態度は、一人で静かに整えたい側にとって過剰な刺激となり、運動そのものへの意欲を削ぐ原因となります。"},{"t":"p","text":"感情的な共有や一体感を過度に求めるコミュニケーションは、淡々と活動をこなしたい側にとって負担となります。運動を社会的交流の場として捉えるか、個人的な調整の場として捉えるかの違いが、現場での温度差やストレスを増幅させます。"}]$j0f9bsgok$::jsonb,
      $j46nix40v$[]$j46nix40v$::jsonb
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
      'SPMC', 'GFMH',
      $jawqwjzca$[{"t":"p","text":"静かな習慣を一人で積み上げたい側と、集団で高強度の刺激をその場の気分で楽しみたい側では、運動に対する価値観が対極に位置します。前者が求める予測可能性と穏やかさは、後者が求める突発的な熱狂や負荷と相反するため、日常的な合同トレーニングは困難を伴います。互いの運動領域を完全に切り離し、干渉しない関係を築くことが、心理的な安全性を保つための前提条件となります。"}]$jawqwjzca$::jsonb,
      $j94r4ymic$[{"t":"p","text":"日常的な運動習慣を共有しようとせず、完全に独立した活動として位置づけることが最も効果的です。互いの運動スタイルが根本的に異なることを認識し、無理に合わせようとせず各自のペースで活動することを尊重し合う関係が望ましいです。"},{"t":"p","text":"接点を持つ場合は年に数回の特別なイベントに限定し、事前に日程を確定させておくことが重要です。計画的な側が心の準備をする期間を設けることで、突発的な誘いによるストレスを回避し、一時的な交流として楽しむ余裕が生まれます。"},{"t":"p","text":"イベント終了後は速やかに各自の日常のルーティンに戻り、継続的な合同活動を求めないことが肝要です。非日常の熱狂と日常の静寂を明確に区別することで、自身の習慣を崩される不安を感じることなく、良好な距離感を維持できます。"}]$j94r4ymic$::jsonb,
      $j7qi453l5$[{"t":"p","text":"思いつきで高強度のグループ活動に巻き込もうとする行為は、計画的な習慣を重んじる側にとって最大のストレス要因となります。自己のペースや調整システムを乱されることへの強い拒絶反応を引き起こし、運動そのものへの嫌悪感に繋がりかねません。"},{"t":"p","text":"運動に対する熱量や盛り上がりを過度に強要されると、静かに自己と向き合いたい側は著しく消耗します。テンションの差がそのまま心理的な負担となり、本来リラックスや調整を目的としていた運動の場が苦痛な空間へと変質してしまいます。"},{"t":"p","text":"一方がその場のノリで予定を変更したりキャンセルしたりすると、計画通りに進める側は強い不信感を抱きます。運動を継続するための予測可能性が損なわれることは、相手との信頼関係だけでなく、自身の習慣維持に対する脅威として認識されます。"}]$j7qi453l5$::jsonb,
      $jabfjs4wr$[]$jabfjs4wr$::jsonb
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
      'SPMC', 'GFVC',
      $j0j4vo35i$[{"t":"p","text":"一人で淡々と計画を実行したい側と、仲間との交流を通じて理想の姿を目指したい側では、運動の場に求める社会的密度が異なります。運動強度が穏やかである点は共通していますが、活動の起点が個人的な習慣か集団的な繋がりかという違いがあるため、適切な物理的・心理的距離の確保が求められます。互いの自律性を尊重し、過度な同調を避けることが、共存のための鍵となります。"}]$j0j4vo35i$::jsonb,
      $jnxs026k1$[{"t":"p","text":"運動の場を共有する際は、会話や感情的な交流を必須としない環境を選ぶことが有効です。同じスタジオや公園にいながらも、各自が独立して自身のメニューに集中できる状況を整えることで、互いのニーズを阻害せずに活動を継続できます。"},{"t":"p","text":"交流を深める場合は運動中ではなく前後の時間に限定し、活動自体は個人のペースを尊重することが重要です。時間の区切りを明確にすることで、一方は静寂の中で体を整え、もう一方は対話を通じて満足感を得るという役割分担が成立します。"},{"t":"p","text":"目標や成果について語る際は、現状を維持する姿勢と理想を追求する姿勢の違いを認め合うことが求められます。相手のアプローチを否定せず、異なる価値観に基づく運動スタイルとして受け入れることで、無用なプレッシャーを回避できます。"}]$jnxs026k1$::jsonb,
      $jrmn66n1d$[{"t":"p","text":"運動中に過度なコミュニケーションや感情の共有を求められると、一人で集中したい側はペースを乱され、心理的な疲労を感じやすくなります。静寂を必要とするトレーニング中の心理状態への配慮が欠けると、運動そのものが負担に変わってしまいます。"},{"t":"p","text":"理想の姿に向かって共に頑張ることを強要されると、現状の維持や調整を目的とする側は強いプレッシャーを感じます。目標の共有を前提とするアプローチは、自律的に動きたい側の意欲を削ぎ、関係性の悪化を招く原因となります。"},{"t":"p","text":"集団での活動を優先するあまり個人の計画やルーティンが軽視されると、計画的な側は不満を募らせます。集団の和を重んじる側と個人の自律性を重んじる側のバランスが崩れることが、合同トレーニングにおける対立の火種となります。"}]$jrmn66n1d$::jsonb,
      $j0oumlwio$[]$j0oumlwio$::jsonb
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