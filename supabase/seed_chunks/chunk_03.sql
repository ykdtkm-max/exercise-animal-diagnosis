      'SFMC', 'SFMH',
      $jqrtwb2mh$[{"t":"p","text":"一人軸、気分軸、ありたい軸を共有する両者は、誰にも縛られずその日の直感で運動し精神的な安定を保つ点で深く共鳴する組み合わせです。唯一の違いは活動の強度であり基準型が穏やかな散策を好むのに対し相手は限界に挑むような激しい冒険を求めます。行動の起点は同じでも最終的な目的地やペースが大きく異なるため並走することは難しいですが互いの独立性を尊重し合える関係です。"}]$jqrtwb2mh$::jsonb,
      $jd2wcry13$[{"t":"p","text":"事前の約束を一切せずその日の思いつきで運動を開始する自由なスタイルを共有します。互いに計画を立てないことで気分軸が満たされ義務感のない心地よい関係が築けます。"},{"t":"p","text":"活動の強度について事前に明確な合意を形成し相手が基準型の穏やかなペースに合わせるか途中で別行動を取ることを前提とします。整える軸と高める軸の違いを認識し無理な同調を避けます。"},{"t":"p","text":"互いの単独行動を尊重し同じ目的地に向かう場合でも別々のルートやペースを選択します。一人軸とありたい軸の共通により干渉しない並行活動が最も自然な形となります。"}]$jd2wcry13$::jsonb,
      $j5vzwua1f$[{"t":"p","text":"相手が突発的に限界に挑戦しようとしたり激しい運動を提案したりすると基準型は疲労感と抵抗を覚えます。高める軸の衝動が整える軸の許容範囲を容易に超えてしまいます。"},{"t":"p","text":"相手が活動の中に競争要素や自己記録の更新を持ち込むと基準型の関心は急速に失われます。穏やかな現状維持を望む基準型にとって高みを目指す姿勢は無意味な疲労の強要に映ります。"},{"t":"p","text":"行動の起点は同じであっても途中で相手のペースが上がり基準型が取り残される状況が発生しやすいです。強度の違いが結果的に運動中の行動の分断を引き起こし一体感を損なわせます。"}]$j5vzwua1f$::jsonb,
      $j4y3be2lo$[]$j4y3be2lo$::jsonb
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
      'SFMC', 'SFVC',
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