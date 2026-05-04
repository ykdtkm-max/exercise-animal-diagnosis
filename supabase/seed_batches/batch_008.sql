INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMC', 'GPVH',
      $jaahr9lce$[{"t":"p","text":"四つの軸全てが完全に対極に位置する両者は、行動原理から価値観に至るまで一切の共通点を持たない組み合わせです。基準型が一人で気分に従い穏やかに精神を安定させるのに対し相手は集団を率いて計画的に限界まで高め感情を燃やし尽くします。運動という文脈において両者が交わることはなく互いの世界が全く異なることを前提とした完全な棲み分けが必要となる関係です。"}]$jaahr9lce$::jsonb,
      $jupfcp22o$[{"t":"p","text":"運動や身体活動に関する話題を完全に避け互いの領域に一切干渉しないことを基本とします。共通点が存在しないことを互いに認識し無理な同調を求めないことが最大の防御策となります。"},{"t":"p","text":"相手が自身の目標や計画を完全に放棄し基準型の極めて低い強度と気まぐれなペースに一方的に合わせる特例的な状況を設定します。この場合のみ一時的な空間の共有が成立します。"},{"t":"p","text":"同じ場所にいながら全く別の活動を行う並行状態を維持します。公園で相手が激しいトレーニングを行う傍らで基準型が静かに散策をするなど空間のみを共有し行動は交わらせないようにします。"}]$jupfcp22o$::jsonb,
      $j519f3czy$[{"t":"p","text":"相手がチームでの目標達成や計画的な高強度トレーニングを提案する行為自体が基準型に対する強烈なストレスとなります。四つの軸全てが相反するため誘いそのものが攻撃として機能します。"},{"t":"p","text":"基準型の計画性のなさや気まぐれな行動に対し相手が責任感や向上心の欠如として否定的な感情を抱きます。互いの行動原理が理解不能であるため運動を通じた対話による解決が極めて困難です。"},{"t":"p","text":"相手の感情的な熱量と他者を巻き込もうとする強いエネルギーが精神的な静寂を好む基準型を心理的に追い詰めます。存在のエネルギー差がそのまま摩擦の原因となります。"}]$j519f3czy$::jsonb,
      $jmyzuwxb1$[]$jmyzuwxb1$::jsonb
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