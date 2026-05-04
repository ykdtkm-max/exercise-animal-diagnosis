INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPMH', 'SPMC',
      $j4akosl23$[{"t":"p","text":"計画性とメンタルの安定感を共有しますが、運動の目的が異なる組み合わせです。基準型がチームで高強度に勝ちに行くための逆算計画を立てるのに対し、相手は一人でゆっくり継続するためのルーティンを設計します。計画という共通言語を持ちながら、描く未来図が全く違う関係性です。"}]$j4akosl23$::jsonb,
      $jcxwwxg8l$[{"t":"p","text":"定期的な合同練習会や、各自のログを共有し合うオンラインコミュニティなど、計画性を活かせる環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型がチームの全体計画を立てる際、相手には毎週決まった時間だけこのメニューを担当してほしいとピンポイントでルーティンを依頼すると良いです。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型が目標への進捗を語り、相手が継続のコツや身体の整え方を語るという、異なる知見を交換し合う形を取ると良いです。"}]$jcxwwxg8l$::jsonb,
      $j74aqbq8d$[{"t":"p","text":"基準型がもっと強度を上げようと提案すると、相手は今の継続可能なペースを崩したくないと論理的に抵抗を示します。"},{"t":"p","text":"基準型が相手をチームの熱狂に巻き込もうとすると、一人の静かな時間を愛する相手は静かに距離を置くようになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の共有が途絶える原因となります。"}]$j74aqbq8d$::jsonb,
      $j9ir9nizi$[]$j9ir9nizi$::jsonb
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
      'GPMH', 'SPMH',
      $j1tzbjkb9$[{"t":"p","text":"計画的、安定、高強度という3つの軸を共有し、公式コンテンツでも相性が良いとされる組み合わせです。違いはチームかソロかという点のみです。基準型がチームの勝利に向けて燃えるのに対し、相手は自己記録の更新に向けて燃える。外向きと内向きの向上心が美しく交差する関係です。"}]$j1tzbjkb9$::jsonb,
      $jufm1el9n$[{"t":"p","text":"マラソン大会の出場や、専門的なトレーニングジムでの合同セッションなど、高い専門性が求められる環境を選ぶことが推奨されます。"},{"t":"p","text":"同じ大会に向けて、基準型はチーム全体の完走計画を練り、相手は自身の目標達成の緻密なラップ表を練る。週末の高強度トレーニングだけは合流して互いを追い込むといった共闘が有効です。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型がチームの士気を高め、相手が最新のトレーニング理論やデータを提供する形を取ると良いです。"}]$jufm1el9n$::jsonb,
      $jue9sjeco$[{"t":"p","text":"基準型がチームの一員として相手を過剰に巻き込もうとし、チームのペースに合わせることを強要すると、一人の集中を好む相手のペースを乱してしまいます。"},{"t":"p","text":"双方が計画に対して強いこだわりと自信を持っているため、練習メニューやアプローチの違いでどちらの計画が優れているかという主導権争いが起きることがあります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、戦友としての信頼が揺らぐ原因となります。"}]$jue9sjeco$::jsonb,
      $j0z2p9wwd$[]$j0z2p9wwd$::jsonb
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
      'GPMH', 'SPVC',
      $jydi8xkb9$[{"t":"p","text":"計画的であることのみを共有し、他の要素がすべて異なる組み合わせです。基準型が勝利に向けた逆算の計画を立てるのに対し、相手は毎日同じ型を完璧に反復するための計画を立てます。計画が好きという点は同じでも、基準型は変化と達成を求め、相手は不変と安心を求めます。"}]$jydi8xkb9$::jsonb,
      $j8qx1hfj3$[{"t":"p","text":"毎週決まった曜日・時間に行う定期練習や、定型化されたトレーニングメニューの実施など、予測可能性の高い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型が毎月決まった日に集まるという確固たるルールを設定し、その運営の定型業務を相手に任せるといった分業が良いです。"},{"t":"p","text":"コミュニケーションにおいては、基準型が将来の展望を語りすぎず、相手が今日のルーティンを完遂したことを称賛する形を取るべきです。"}]$j8qx1hfj3$::jsonb,
      $jtst4rxfi$[{"t":"p","text":"基準型が勝利のために強度を上げようと提案することは、相手が何よりも大切にしている完璧なルーティンを根こそぎ破壊する行為となります。"},{"t":"p","text":"基準型が相手をチームの活動に強く巻き込もうとすると、一人の時間を愛し、精神的な揺らぎを抱える相手は過剰なプレッシャーを感じてしまいます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の継続が困難になります。"}]$jtst4rxfi$::jsonb,
      $j24wvlq9k$[]$j24wvlq9k$::jsonb
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
      'GPMH', 'SPVH',
      $jht6uru1k$[{"t":"p","text":"計画的かつ高強度という強力な動力を共有する組み合わせです。しかし、基準型がチームを率いて外向きの勝利を目指すのに対し、相手は一人で緻密な計画を練り、内向きの自己超越を目指します。同じようにストイックでありながら、誰と、何のために限界を超えるのかという哲学が異なります。"}]$jht6uru1k$::jsonb,
      $jnefhkmgl$[{"t":"p","text":"専門的なトレーニング施設や、個々のデータ測定が可能な環境を選ぶことが推奨されます。"},{"t":"p","text":"相手が抱える計画通りにいかないことへの不安を、基準型の安定感が優しくカバーする関係が理想的です。"},{"t":"p","text":"運動後の振り返りでは、基準型がチームへの貢献を評価し、相手が自己の限界突破を記録するという、異なる達成の形を尊重し合うと良いです。"}]$jnefhkmgl$::jsonb,
      $jkkzldrs7$[{"t":"p","text":"基準型がチームで一緒にやろうと誘っても、相手は一人のほうが計画の精度が保てるとして強い抵抗を示しやすいです。"},{"t":"p","text":"計画が崩れた際、メンタルが安定している基準型はすぐに代替案に切り替えて前進しようとしますが、完璧主義の相手は深く絶望し、投げ出してしまいやすいです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での協力体制が崩壊します。"}]$jkkzldrs7$::jsonb,
      $jxn9y4mia$[]$jxn9y4mia$::jsonb
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
      'GPVC', 'GFMC',
      $j2xilpwgl$[{"t":"p","text":"複数人での低強度トレーニングを好む点は共通していますが、運動の約束に対する心理的重みが対照的です。計画を重んじ他者への責任感を継続の糧とする基準型に対し、相手はその場の楽しさや気分の高まりを優先して動きます。基準型が定例の練習を義務として誠実に守ろうとする一方で、相手は自由な参加スタイルを好むため、継続の足並みを揃える際に温度差が生じやすいです。"}]$j2xilpwgl$::jsonb,
      $j6yd8xfcp$[{"t":"p","text":"基準型が練習の日時や場所の固定といった運営面を担い、相手が当日の雰囲気作りや新しい参加者への声掛けを担当する役割分担が効果的です。"},{"t":"p","text":"どちらも高負荷なトレーニングを求めないため、ウォーキングや軽めの球技など、会話を楽しみながら体を動かせる種目を選ぶと自然にペースが合います。"},{"t":"p","text":"相手の気分を尊重しつつも基準型が事前にリマインドを送るなど、計画性と柔軟性を組み合わせたスケジュール管理を行うことで、互いにストレスなく集まれます。"}]$j6yd8xfcp$::jsonb,
      $jz0un700a$[{"t":"p","text":"相手が当日の気分で急に欠席を決めた際、準備を整えて待っていた基準型は自分の誠実さが軽んじられたと感じて心理的なダメージを受けやすいです。"},{"t":"p","text":"基準型が毎週必ず参加することを前提にメニューを組んでいると、相手の不定期な参加スタイルによって計画が停滞し、基準型が一人で負担を抱え込みます。"},{"t":"p","text":"基準型が場を維持しようと真剣になるほど、相手には運動の場が重苦しい義務に感じられ、逆に相手が気楽さを求めると基準型は場を軽視されていると誤解します。"}]$jz0un700a$::jsonb,
      $j7qqxnj82$[]$j7qqxnj82$::jsonb
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
      'GPVC', 'GFMH',
      $jlc1g4wna$[{"t":"p","text":"複数人で動くという点以外は対照的なスタイルを持ちます。基準型は同じ場所で同じメンバーと低強度の運動を誠実に続けることに価値を置きますが、相手は非日常的なイベントや高強度の挑戦で爆発的に燃え上がることを好みます。相手の熱量が冷めた際に見せる急激な離脱は、場を守ることを使命とする基準型にとって理解しがたい振る舞いとなり、運動の継続性を巡って心理的な距離が生じやすいです。"}]$jlc1g4wna$::jsonb,
      $jbuetaeak$[{"t":"p","text":"相手が刺激的なスポーツイベントや大会を見つけて提案し、基準型がその参加申し込みや練習スケジュールの調整を担うことで、期間限定のプロジェクトとして協力します。"},{"t":"p","text":"基準型が普段のルーティンでは選ばないような、相手が好むアクティブな体験型イベントに一度限りのゲストとして参加し、非日常の刺激を共有します。"},{"t":"p","text":"大会当日などの特別な場面では相手の爆発的なエネルギーを頼りにし、日常のコンディショニングでは基準型の安定した継続力を活かすといった役割の切り替えを行います。"}]$jbuetaeak$::jsonb,
      $jj4vrf1j9$[{"t":"p","text":"基準型が丁寧に育ててきた定例の練習会に対し、相手が飽きや気分の変化を理由に突然来なくなると、基準型は裏切られたような深い喪失感を抱きます。"},{"t":"p","text":"相手が求める高強度のトレーニングに基準型が無理についていこうとすると、身体的な疲労だけでなく、自分のペースを乱されることへの心理的な抵抗が強まります。"},{"t":"p","text":"基準型が事前の準備や段取りを完璧に整えていても、相手が当日の直感で内容の変更を求めると、計画を信頼の基盤とする基準型は混乱し、運動への意欲を削がれます。"}]$jj4vrf1j9$::jsonb,
      $jb5ewh1eo$[]$jb5ewh1eo$::jsonb
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
      'GPVC', 'GFVC',
      $jmafh43lh$[{"t":"p","text":"複数人での穏やかな運動を好む点で非常に親和性が高いです。どちらも運動を通じて心身を整えることを重視し、仲間とのつながりを大切にする繊細な感性を持っています。計画を重んじる基準型と、その日の気分や心の状態を優先する相手という違いはありますが、互いに相手を思いやる気持ちが強いため、運動の場を温かく維持できます。相手が気分の落ち込みで欠席した際、基準型がそれを責めずに受け入れることができれば、長期的な信頼関係が築けます。"}]$jmafh43lh$::jsonb,
      $jl04814i5$[{"t":"p","text":"基準型が活動のスケジュールや場所の確保といった外枠を整え、相手が当日のメンバーの表情や心の変化に寄り添うといった、役割の補完を行います。"},{"t":"p","text":"どちらもなりたい由来の繊細さを持つため、運動の合間に今の体調や気分の揺れを素直に共有できるような、リラックスした休憩時間を多めに設けます。"},{"t":"p","text":"計画を固定しすぎず、当日の参加者のコンディションに合わせて運動の内容を柔軟に変更できるような、余白のあるプランを基準型が事前に用意しておきます。"}]$jl04814i5$::jsonb,
      $jdfzix8cb$[{"t":"p","text":"基準型が「約束を守ること」を誠実さの証と考える一方で、相手が「自分の心に正直であること」を優先して欠席すると、基準型は場が崩れたと感じて不安になります。"},{"t":"p","text":"基準型が良かれと思って立てた綿密な計画が、繊細な相手にとっては「必ず行かなければならない」というプレッシャーに変わり、運動そのものが苦痛になります。"},{"t":"p","text":"互いに相手の顔色を伺いすぎるあまり、運動の強度や内容に不満があっても言い出せず、表面的な調和の裏で心理的な疲弊が蓄積していきます。"}]$jdfzix8cb$::jsonb,
      $jeokqk7yt$[]$jeokqk7yt$::jsonb
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
      'GPVC', 'GFVH',
      $ja5s0rnu7$[{"t":"p","text":"仲間との感情的な絆を重視する点は共通していますが、運動に求める熱量と継続のスタイルが異なります。基準型は静かに約束を守り、低強度の活動を毎週積み重ねることで信頼を育みますが、相手は周囲を巻き込みながら高強度の体験を共有し、一気に熱量を高めることを好みます。相手の爆発的なエネルギーに基準型が圧倒され、無理に合わせようとして疲弊するリスクがある一方、互いの役割を認め合えば、安定した運営と活気ある活動を両立できます。"}]$ja5s0rnu7$::jsonb,
      $jy7v7mbra$[{"t":"p","text":"相手が「このスポーツが面白い」と情熱を持って提案したものを、基準型が無理のない練習頻度や継続可能なスケジュールに落とし込み、熱量を長続きさせる工夫をします。"},{"t":"p","text":"なりたい由来の繊細さを互いに持っているため、運動後の振り返りで「あの時のプレーが嬉しかった」といった感情的なフィードバックを積極的に伝え合い、絆を深めます。"},{"t":"p","text":"相手がリードする高強度のイベントと、基準型が守る低強度の定例練習を明確に分け、基準型が自分のペースを保てる安全圏を確保しながら参加します。"}]$jy7v7mbra$::jsonb,
      $jjk6h5nv3$[{"t":"p","text":"相手がその場のノリで運動の強度を急激に上げようとした際、着実な調整を好む基準型は身体的な不安と計画の乱れを感じて反発しやすくなります。"},{"t":"p","text":"相手が新しい刺激を求めて次々と活動内容を変えると、一つのことを誠実に続けたい基準型は、これまでの積み重ねが無意味になったように感じて意欲を失います。"},{"t":"p","text":"どちらも感情の振れ幅が大きいため、運動中の些細な言葉遣いや態度の変化を敏感に察知し、誤解から深刻な心理的対立に発展して運動の継続が困難になります。"}]$jjk6h5nv3$::jsonb,
      $jy20qtfb6$[]$jy20qtfb6$::jsonb
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
      'GPVC', 'GPMC',
      $jdcoognrj$[{"t":"p","text":"複数人での計画的な低強度トレーニングを好む、極めて安定感のあるペアです。どちらも運動の場を長期的に守り、参加者が安心して続けられる環境を作ることに高い意欲を持ちます。基準型は「仲間に迷惑をかけたくない」という繊細な責任感から動き、相手は感情の揺れが少なく淡々と計画を遂行します。基準型の細やかな気配りと相手の揺るぎない安定感が組み合わさることで、コミュニティ全体の継続率が飛躍的に高まります。"}]$jdcoognrj$::jsonb,
      $js3726eno$[{"t":"p","text":"相手が全体の年間スケジュールや予算管理などの大枠を決定し、基準型が参加者一人ひとりの体調やモチベーションの細かな変化をフォローする役割に徹します。"},{"t":"p","text":"運動の前後で、計画の進捗だけでなく「最近のコミュニティの雰囲気」について意見交換する時間を持ち、二人の視点を合わせることで運営の質を高めます。"},{"t":"p","text":"どちらも急な変更を嫌うため、天候不順時の代替案や怪我をした際の対応マニュアルを事前に二人で作成し、万全の準備を整えて安心感を共有します。"}]$js3726eno$::jsonb,
      $jduqntiqa$[{"t":"p","text":"基準型が活動後の反省会で「あの人の表情が気になった」と繊細な懸念を伝えた際、ありたいな相手が「計画通り進んでいるから問題ない」と合理的に切り捨てると、基準型は孤独を感じます。"},{"t":"p","text":"相手が効率を優先して運動メニューを簡略化しようとすると、参加者との情的なつながりを重視する基準型は、場が冷たくなったように感じて抵抗を示します。"},{"t":"p","text":"基準型が心配事から決断を先延ばしにしていると、感情に左右されない相手が強引に物事を進めてしまい、基準型が自分の役割を否定されたように受け取ります。"}]$jduqntiqa$::jsonb,
      $jt9h1s7tu$[]$jt9h1s7tu$::jsonb
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
      'GPVC', 'GPMH',
      $jxujvn6mo$[{"t":"p","text":"グループで計画的に進める姿勢は一致していますが、運動の目的と強度に対する考え方が異なります。基準型は全員が脱落せず穏やかに続けることを重視しますが、相手は高い目標を掲げ、そこに向けてチームの能力を高めることに情熱を注ぎます。相手の揺るぎない自信と達成志向は基準型にとって頼もしい反面、繊細な参加者への配慮が欠けているように見え、運動の方向性を巡って葛藤が生じやすいです。"}]$jxujvn6mo$::jsonb,
      $jzwj9ws9h$[{"t":"p","text":"相手が大会での記録更新や技術向上といった高い目標を設計し、基準型がその目標に到達するまでの過程でメンバーが無理をしないよう調整役を担います。"},{"t":"p","text":"どちらも逆算思考が得意なため、長期的なトレーニング計画を練る会議を定期的に設け、論理的に納得感のあるメニューを二人で作り上げます。"},{"t":"p","text":"相手の安定したメンタリティを活かし、基準型が不安を感じた際に「この計画で大丈夫だ」と背中を押してもらう関係性を意識的に構築します。"}]$jzwj9ws9h$::jsonb,
      $jq6b351v3$[{"t":"p","text":"相手がチーム全体の強度を上げようと提案した際、基準型は「ついていけない人が出るのではないか」という不安から強く反対し、議論が平行線になります。"},{"t":"p","text":"運動後の振り返りで、基準型が自分の至らなさを繊細に反省している横で、相手が淡々と次の高い目標を語り始めると、基準型は突き放されたような感覚に陥ります。"},{"t":"p","text":"相手が結果を重視して計画を合理的に変更しようとすると、決まった手順を守ることで安心を得ている基準型は、場が不安定になったと感じて混乱します。"}]$jq6b351v3$::jsonb,
      $jlhos3flp$[]$jlhos3flp$::jsonb
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
      'GPVC', 'GPVH',
      $jnfw8ndo5$[{"t":"p","text":"仲間への強い責任感と計画性を共有する、非常に誠実なペアです。どちらも「一度決めた約束は必ず守る」という価値観をなりたい由来の繊細な感受性で支えており、運動の場を維持することへの熱量は同等です。違いは負荷への向き合い方のみで、基準型が穏やかな継続を願うのに対し、相手は高みを目指す挑戦を仲間に求めます。互いの「場を大切にしたい」という根底の想いを信頼し合えれば、最強の運営パートナーとなります。"}]$jnfw8ndo5$::jsonb,
      $jgeaa3g34$[{"t":"p","text":"どちらも約束を破られると深く傷つく特性を持つため、欠席連絡のルールや遅刻への対応など、誠実さを確認し合える細かな約束事をあらかじめ決めておきます。"},{"t":"p","text":"相手が掲げる高い目標に対し、基準型が「全員が脱落しないためのセーフティネット」としてトレーニング強度を微調整する役割を担い、チームの崩壊を防ぎます。"},{"t":"p","text":"運動後のミーティングでは、技術的な反省だけでなく「今日のみんなの表情はどうだったか」という感情面の共有を重視し、なりたい同士の深い共感を確認し合います。"}]$jgeaa3g34$::jsonb,
      $jz3jds89a$[{"t":"p","text":"相手がチーム全体の士気を高めるために厳しい練習を課そうとした際、基準型は「これでは誰かが傷ついてしまう」と過剰に心配し、相手の熱意に水を差してしまいます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の指導や指摘が少しでも語気が強まると、相手を攻撃していると誤解し、深刻な感情的しこりを残します。"},{"t":"p","text":"基準型が全員の参加を最優先するあまり、本気で上を目指したい相手の向上心を「和を乱すもの」として無意識に抑え込んでしまい、相手の不満を募らせます。"}]$jz3jds89a$::jsonb,
      $jxdgtakqm$[]$jxdgtakqm$::jsonb
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
      'GPVC', 'SFMC',
      $j68t3upv3$[{"t":"p","text":"低強度の運動を好む点は一致していますが、運動の場に対する向き合い方が正反対です。基準型は固定メンバーとの約束を誠実に守り、計画された定例活動を継続の柱としますが、相手は一人でその日の気分に従って自由に歩くことを好みます。基準型が相手をコミュニティの枠に当てはめようとすると、相手は束縛を感じて離れ、基準型は相手の気まぐれな参加スタイルに不誠実さを感じて傷つくといった、構造的なすれ違いが生じやすいです。"}]$j68t3upv3$::jsonb,
      $jpkubb8qe$[{"t":"p","text":"基準型が主催する定例ウォーキングなどを「予約不要・出入り自由」のオープンな形式にし、相手が気が向いた時だけふらりと立ち寄れるような、緩やかな接点を維持します。"},{"t":"p","text":"相手が一人で見つけてきた魅力的な散歩コースや景色の情報を、基準型がコミュニティの活動プランに取り入れるといった、情報の循環による間接的な協力を楽しみます。"},{"t":"p","text":"どちらも身体的な負荷を上げすぎないことを良しとするため、一緒に動く際は「今日はここまで」と早めに切り上げる合意を最初に取り、互いの体力を尊重し合います。"}]$jpkubb8qe$::jsonb,
      $j6rnui136$[{"t":"p","text":"基準型が「来週も待っています」と誠実に伝えた言葉が、ありたいな相手にとっては「来なければならない」という重圧に感じられ、次回の参加を躊躇させる原因になります。"},{"t":"p","text":"相手が当日の直感で別の場所へ行くと決めた際、計画を信頼の証とする基準型は、自分の準備や想いが無下にされたと感じて深い心理的なダメージを負います。"},{"t":"p","text":"基準型がコミュニティの団結力を高めようとイベントを企画しても、一人で動くことを好む相手が冷淡な反応を示すと、基準型は自分の努力を否定されたように感じます。"}]$j6rnui136$::jsonb,
      $jp7mojueo$[]$jp7mojueo$::jsonb
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
      'GPVC', 'SFMH',
      $j7g3v1kcl$[{"t":"p","text":"全4軸が異なる対極のタイプであり、運動の価値観が根本から衝突しやすいです。基準型は固定の仲間と計画的に低強度の運動を続けることで安心感を得ますが、相手は一人で直感に従い、高強度の冒険に挑むことで充実感を得ます。相手の予測不能な行動と激しい負荷志向は、場を整えたい基準型にとって最大の不安要素となり、同じ活動の枠組みに留まろうとすると、双方が多大なストレスを抱えることになります。"}]$j7g3v1kcl$::jsonb,
      $jbcrf9lm5$[{"t":"p","text":"互いの運動スタイルが全く別物であることを認め、一緒に動くことよりも、活動後にそれぞれの体験を報告し合う「非同期的な交流」に留めます。"},{"t":"p","text":"相手が一人で挑む過酷な挑戦に対し、基準型が安否確認や緊急連絡先を引き受けるといった、運動そのものには関わらない後方支援の形で協力します。"},{"t":"p","text":"相手が好む刺激的な場所や種目の話を、基準型が自分のコミュニティの「特別な日のイベント案」として安全にアレンジして取り入れるためのヒントにします。"}]$jbcrf9lm5$::jsonb,
      $jryd2k15y$[{"t":"p","text":"相手がその場の思いつきで「もっとハードなコースに行こう」と提案した際、安全と計画を最優先する基準型は、自分たちの居場所を破壊されるような恐怖を感じます。"},{"t":"p","text":"基準型が仲間のために用意した丁寧な段取りを、相手が「自由がない」と一蹴したり無視したりすると、基準型は自分の存在意義を否定されたと感じて深く傷つきます。"},{"t":"p","text":"相手のありたい由来の淡白な反応が、繊細な基準型には「自分や仲間への無関心」と映り、運動を通じた絆を信じる基準型のモチベーションを根底から崩します。"}]$jryd2k15y$::jsonb,
      $jlyw3odbj$[]$jlyw3odbj$::jsonb
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
      'GPVC', 'SFVC',
      $jfei4krni$[{"t":"p","text":"繊細な感性と低強度への志向を共有する、穏やかなペアです。どちらも運動を通じて心を落ち着かせ、無理のない範囲で体を動かすことに喜びを感じます。なりたい同士として、相手の体調や気分の揺れを敏感に察知し、労わり合える関係を築きやすいです。しかし、基準型が「仲間との約束」を継続の糧とするのに対し、相手は「一人での自由」を好むため、運動の頻度や参加の形態を巡って、基準型が一人で期待を抱えすぎる傾向があります。"}]$jfei4krni$::jsonb,
      $j4662oupn$[{"t":"p","text":"基準型が日時を固定した定例会を用意しつつも、相手に対しては「気が向いた時だけの一人参加」を公認し、たまに合流できた時間を特別に喜ぶような距離感を保ちます。"},{"t":"p","text":"どちらもなりたい同士の繊細さを持つため、運動の最中に感じた景色や空気の心地よさを、短い言葉や写真で共有し合うことで、情緒的なつながりを深めます。"},{"t":"p","text":"計画をガチガチに固めず、当日の二人の「心の重さ」に合わせて、歩く距離を短縮したりカフェでの休憩に切り替えたりできるような、柔軟なプランを共有します。"}]$j4662oupn$::jsonb,
      $jfwqhl23x$[{"t":"p","text":"基準型が「来週も一緒に歩きましょう」と誠実に約束を求めた際、気分を優先したい相手はプレッシャーを感じてしまい、逆に基準型は相手の曖昧な返答に不安を覚えます。"},{"t":"p","text":"どちらも繊細で相手を傷つけることを恐れるため、運動の内容に違和感があっても我慢してしまい、ある日突然、一方が燃え尽きて運動を辞めてしまいます。"},{"t":"p","text":"相手が一人で静かに動きたい時に、基準型が良かれと思って他の仲間を大勢誘ってしまうと、相手は居場所を失ったと感じてコミュニティから離脱します。"}]$jfwqhl23x$::jsonb,
      $jhb63bm28$[]$jhb63bm28$::jsonb
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
      'GPVC', 'SFVH',
      $ji96qjdsh$[{"t":"p","text":"なりたい由来の繊細な感受性を共有しながらも、運動の表現方法が真逆であるため、構造的なすれ違いが生じやすいです。基準型は仲間との約束を誠実に守り、穏やかな活動を続けることで心の安定を図りますが、相手は自分の内なる葛藤や情熱を一人での高強度トレーニングにぶつけ、限界を突破しようとします。相手の激しさと予測不能な行動は、平穏な場を維持したい基準型にとって心理的な脅威となり、同じ活動空間を共有することは困難を極めます。"}]$ji96qjdsh$::jsonb,
      $jn7ang6ak$[{"t":"p","text":"互いの運動スタイルを「静」と「動」の極致として尊重し、直接一緒に動くのではなく、相手が挑んだ過酷な記録を基準型が承認する関係に留めます。"},{"t":"p","text":"相手が感情を爆発させてトレーニングに没頭している間、基準型はあえて距離を置き、相手が落ち着いたタイミングで短い労いのメッセージを送るような非同期の接点を持つのも手です。"},{"t":"p","text":"なりたい同士として、運動の技術よりも「なぜそこまでして動くのか」という内面的な動機について深く語り合う時間を持ち、精神的な理解者としての地位を築きます。"}]$jn7ang6ak$::jsonb,
      $jy4hrhps4$[{"t":"p","text":"相手がその日の感情の高ぶりに任せて「今から山を走ってくる」と計画を無視した行動をとると、誠実な準備を重んじる基準型は、自分の存在を無視されたと感じて絶望します。"},{"t":"p","text":"基準型が全員の安全を考えて提示した低強度のメニューに対し、相手が「ぬるすぎる」と苛立ちを露わにすると、基準型は自分の気配りを否定されたと感じて深く傷つきます。"},{"t":"p","text":"どちらも繊細で感情が激しく揺れやすいため、運動中の些細な衝突が「自分は理解されていない」という深刻な被害意識に繋がり、絶縁に近い状態まで悪化しやすいです。"}]$jy4hrhps4$::jsonb,
      $jmgx0dh7m$[]$jmgx0dh7m$::jsonb
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
      'GPVC', 'SPMC',
      $jcrgz9l16$[{"t":"p","text":"計画的に低強度の運動を継続するスタイルが一致しており、身体的なペース配分においては非常に安定したペアです。どちらも日々のルーティンを大切にし、無理な負荷を避けて着実に体を整えることに価値を置きます。しかし、基準型が仲間との約束を継続の支えとするのに対し、相手は一人で思索しながら淡々と動くことを好みます。相手の感情に左右されない安定感は基準型を落ち着かせますが、基準型のコミュニティへの強い帰属意識が相手には重荷になることもあります。"}]$jcrgz9l16$::jsonb,
      $jh2ze32rl$[{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月先のウォーキング大会や健康目標に向けた詳細なトレーニングメニューを二人で論理的に作成し、進捗を報告し合います。"},{"t":"p","text":"基準型が主催する定例会に相手を「特別顧問」のような一歩引いた立場で招き、相手が一人で深めた運動の知識やコツをメンバーに共有してもらう場を作ります。"},{"t":"p","text":"運動の最中は無理に会話を盛り上げようとせず、周囲の景色や自分の身体感覚に集中する「静かな時間」を共有することで、整える型同士の心地よい共鳴を楽しみます。"}]$jh2ze32rl$::jsonb,
      $jwjh0xg2b$[{"t":"p","text":"基準型が「全員で揃って動くこと」を強調しすぎると、一人の自律性を重んじる相手は監視されているような窮屈さを感じ、運動への意欲を急速に失います。"},{"t":"p","text":"相手が合理的な理由で「今日は一人でやりたい」と告げた際、仲間との絆を信じる基準型は、自分たちの関係が軽視されたと誤解して深く傷つきます。"},{"t":"p","text":"基準型が活動後の反省会で感情的な悩みを打ち明けた際、ありたいな相手が「それは計画の問題だ」と冷淡に分析して解決策だけを提示すると、基準型は突き放されたと感じます。"}]$jwjh0xg2b$::jsonb,
      $jv0h3mvb0$[]$jv0h3mvb0$::jsonb
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
      'GPVC', 'SPMH',
      $j4dcsftod$[{"t":"p","text":"計画的に動くという方法論のみを共有する、ビジネスライクな協力関係になりやすいペアです。基準型は全員が継続できるための計画を立てますが、相手は自分が最高の結果を出すためのストイックな計画を立てます。相手のありたい由来の揺るぎない自信は基準型に安心感を与えることもありますが、相手の個人主義と高負荷志向は、基準型が守りたい「全員参加の穏やかな場」とは本質的に相容れないため、運動の現場では別行動が基本となります。"}]$j4dcsftod$::jsonb,
      $j1ub7w2ok$[{"t":"p","text":"相手が持つ「目標達成のためのトレーニング理論」を基準型が学び、それをコミュニティのメンバーが安全に実践できるレベルに翻訳して導入します。"},{"t":"p","text":"どちらも計画を重視するため、お互いのトレーニングログや記録を数値で共有し、客観的なデータに基づいてアドバイスし合う「コーチング的」な関係を築きます。"},{"t":"p","text":"相手が挑む過酷なレースや挑戦に対し、基準型が「応援団長」としてコミュニティの仲間を率いて応援に行き、相手の孤独な挑戦を外側から支えます。"}]$j1ub7w2ok$::jsonb,
      $jlw53k19k$[{"t":"p","text":"相手が「もっとストイックに追い込むべきだ」と基準型のコミュニティ運営に口を出すと、全員の脱落を防ぎたい基準型は、自分の気配りを台無しにされたと感じて憤慨します。"},{"t":"p","text":"基準型が相手を無理にグループの懇親会や定例練習に誘い続けると、一人の時間を愛する相手は基準型を「非効率で重い存在」と見なして距離を置きます。"},{"t":"p","text":"相手が結果の出ない参加者を切り捨てるような発言をすると、一人ひとりの誠実な歩みを尊重する基準型は、相手の価値観を冷酷だと感じて心理的な拒絶反応を起こします。"}]$jlw53k19k$::jsonb,
      $j3o99mu3i$[]$j3o99mu3i$::jsonb
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
      'GPVC', 'SPVC',
      $jau13a0p7$[{"t":"p","text":"計画的に、繊細に、低強度の運動を続ける姿勢が完全に一致する組み合わせです。どちらも「一度始めたことは誠実に続けなければならない」という強い責任感を持ち、日々の積み重ねを心の支えとしています。基準型が作る安定したコミュニティの場は、一人で動くことを好む相手にとっても「自分のルーティンの一部」として組み込みやすく、互いの継続を静かに支え合う理想的な補完関係が成立します。"}]$jau13a0p7$::jsonb,
      $j2as2nnwl$[{"t":"p","text":"基準型が毎週同じ時間・同じコースでの活動を徹底して提供し、相手がそれを自分の生活リズムの中に「欠かせない習慣」として自然に組み込めるようにします。"},{"t":"p","text":"どちらもなりたい由来の繊細さを持つため、運動の後に「今週も無事に続けられた」という達成感を短い言葉で分かち合い、互いの誠実さを承認し合います。"},{"t":"p","text":"相手が一人で培ってきた効率的なストレッチやケアの方法を基準型が教わり、それをコミュニティの全員が実践できるような標準メニューとして採用します。"}]$j2as2nnwl$::jsonb,
      $jj5yc3al8$[{"t":"p","text":"相手が自分の厳格な個人ルーティンを優先してコミュニティの特別行事を欠席した際、仲間との一体感を重んじる基準型は、自分たちの絆が軽視されたと感じて傷つきます。"},{"t":"p","text":"どちらも繊細で「相手に迷惑をかけたくない」という想いが強すぎるため、体調不良などで運動を休む際の連絡が過度に丁寧になり、かえって心理的な負担を増大させます。"},{"t":"p","text":"基準型がコミュニティの活性化のために急な内容変更を行うと、決まった手順で動くことで安心を得ている相手は、自分のリズムを壊されたと感じて強いストレスを抱きます。"}]$jj5yc3al8$::jsonb,
      $j1vluxu8s$[]$j1vluxu8s$::jsonb
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
      'GPVC', 'SPVH',
      $jrwqqihkh$[{"t":"p","text":"運動に対して真剣に向き合い、計画的に取り組む姿勢を共有するペアです。どちらもなりたい由来の強い感受性を持ち、「自分はこうありたい」という理想に向けて誠実に努力することを厭いません。しかし、基準型が仲間との約束を支えに穏やかに続けるのに対し、相手は一人で自分を追い込み、内なる限界を突破することに情熱を注ぎます。互いの「真剣さ」は理解し合えますが、運動の強度と社会性の不一致により、現場での協力には工夫が必要となります。"}]$jrwqqihkh$::jsonb,
      $jcuvoimsm$[{"t":"p","text":"相手が一人で挑む高強度のチャレンジに対し、基準型がそのコンディショニングやスケジュール管理をサポートする「マネージャー」的な役割を担います。"},{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月に一度、お互いの長期的な運動計画を突き合わせて、論理的な矛盾や無理がないかを繊細な視点でチェックし合う会議を持ちます。"},{"t":"p","text":"相手がストイックになりすぎて心が折れそうな時に、基準型が「あなたは十分頑張っている」と感情的に寄り添うことで、相手の孤独な挑戦を精神的に支えます。"}]$jcuvoimsm$::jsonb,
      $jmvoau78m$[{"t":"p","text":"相手が「もっと自分を追い込むべきだ」と基準型の穏やかな活動を批判した際、誠実に場を守っている基準型は、自分の生き方そのものを否定されたと感じて深く落ち込みます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の些細なアドバイスが「自分の努力が足りない」という責め言葉に聞こえてしまい、互いに殻に閉じこもって対話が途絶えます。"},{"t":"p","text":"基準型が相手をグループの定例練習に誘いすぎると、一人で集中したい相手は「自分の成長を妨げる重荷」として基準型を避け始め、信頼関係が崩壊します。"}]$jmvoau78m$::jsonb,
      $jhbl1taoz$[]$jhbl1taoz$::jsonb
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
      'GPVH', 'GFMC',
      $jgs95sj0t$[{"t":"p","text":"集団での目標達成を至上命題とする側と、場を盛り上げる体験を重視する側との組み合わせです。複数人という共通基盤があるため、同じ空間で活動すること自体への抵抗は少ないです。しかし、緻密なトレーニング計画を完遂したい側と、その場の気分や楽しさを優先したい側では、練習メニューの決定プロセスにおいて根本的な差異が存在します。さらに、理想の自分を目指して限界を突破しようとする姿勢と、現在の心身の状態を整えることを目的とする姿勢が交差するため、一回のセッションに求める運動強度や心理的熱量において大きな温度差が生じやすいです。"}]$jgs95sj0t$::jsonb,
      $jt714viwy$[{"t":"p","text":"チームスポーツやグループワークアウトなど、他者の存在が刺激になる環境を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は最低限の集合時間と場所の決定に留め、具体的な運動内容については当日の体調や雰囲気に合わせて調整できる余白を残すことが求められます。"},{"t":"p","text":"高負荷なメインメニューと軽めの調整メニューを並行して行える施設やプログラムを選択し、同じ空間にいながら異なる負荷レベルを許容する工夫が必要です。"}]$jt714viwy$::jsonb,
      $jevrcp5gb$[{"t":"p","text":"集団での活動を好むがゆえに、チーム内での貢献度や熱量に対する期待値がずれやすく、一方が相手の参加姿勢を「不真面目」だと感じてしまうリスクがあります。"},{"t":"p","text":"計画通りにトレーニングを進めたい側と気分で動きたい側との間で、スケジュール調整やメニュー変更のたびにフラストレーションが蓄積しやすいです。"},{"t":"p","text":"感情を燃やして高い目標に向かう側と、穏やかに現状を維持したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$jevrcp5gb$::jsonb,
      $js6u3p8hw$[]$js6u3p8hw$::jsonb
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
      'GPVH', 'GFMH',
      $jliq1h9bb$[{"t":"p","text":"集団での活動と高い運動強度を求める点において、非常に強力なエネルギーを生み出す組み合わせです。共に限界まで追い込むことを厭わないため、ハードなトレーニングや競技において高い成果を追求できます。しかし、長期的な計画に基づき着実にステップアップしたい側と、その瞬間の高揚感や熱狂的な体験を求める側では、継続のメカニズムが異なります。感情を爆発させて目標に突き進む姿勢と、常に一定の精神状態を保ちながら成果を出そうとする姿勢が交差するため、イベント後のモチベーション維持において温度差が生じやすいです。"}]$jliq1h9bb$::jsonb,
      $jynbrs7uv$[{"t":"p","text":"互いに高い負荷を求める特性を最大限に活かし、マラソン大会や競技会など、明確な挑戦の場を共有することが推奨されます。"},{"t":"p","text":"事前の計画は「この大会で結果を出す」といった大きなマイルストーンに絞り、日々のメニューには相手がその日の気分で爆発的な力を発揮できるような柔軟性を持たせることが効果的です。"},{"t":"p","text":"運動後の達成感を共有する時間を設け、成果だけでなくその過程での感情的なつながりを確認し合うことが重要です。"}]$jynbrs7uv$::jsonb,
      $jvgqjw4xh$[{"t":"p","text":"計画通りに段階を踏んで強度を上げたい側と、その日の気分で突発的に限界に挑みたい側との間で、オーバーワークや怪我のリスク管理を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチームの成長を計画する側にとって、イベントが終わると急激に熱が冷めてしまう相手の振る舞いは、無責任や裏切りとして映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々と結果のみを追求する側との間で、共感の欠如による不満が生じやすいです。"}]$jvgqjw4xh$::jsonb,
      $jpljukyzj$[]$jpljukyzj$::jsonb
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
      'GPVH', 'GFVC',
      $jhuiwey0e$[{"t":"p","text":"集団での活動を好み、運動を通じた感情の起伏や内面的な変化を共有しやすい組み合わせです。共になりたいという軸を持つため、目標に向かう過程での葛藤や喜びを深く分かち合うことができます。しかし、計画的に高い成果を目指して自分を追い込みたい側と、その日の気分に合わせて周囲との調和や安心感を優先したい側では、一回の練習に求める「質」が異なります。限界突破を追求する高めるの姿勢と、心身の平穏を保つ整えるの姿勢が対立するため、求める負荷レベルの調整において繊細な配慮が必要となります。"}]$jhuiwey0e$::jsonb,
      $jho111j9k$[{"t":"p","text":"集団での活動という共通項を活かし、チームとしての連帯感を感じられる環境を選ぶことが重要です。"},{"t":"p","text":"事前の計画には「全員で楽しむ時間」と「個々が追い込む時間」を明確に分け、相手がプレッシャーを感じずに参加できる余白を残すことが求められます。"},{"t":"p","text":"運動強度の差を埋めるために、一つの種目の中で役割を分担することが効果的です。一方が競技として本気で取り組み、もう一方がサポートや応援を行うなど、並行して異なる活動を許容する柔軟な姿勢が関係を深めます。"}]$jho111j9k$::jsonb,
      $jth47tvea$[{"t":"p","text":"計画通りに高い負荷をかけたい側と、その日の気分で周囲との交流を優先したい側との間で、練習の優先順位を巡ってフラストレーションが生じやすいです。"},{"t":"p","text":"目標未達時や不調時に双方が感情的に熱くなりやすいため、一度衝突すると修復に多大なエネルギーを要するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側と、全員が笑って帰れることを目的とする側では、成功の定義が根本的に異なります。"}]$jth47tvea$::jsonb,
      $jvso499vc$[]$jvso499vc$::jsonb
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
      'GPVH', 'GFVH',
      $jxurrhwiu$[{"t":"p","text":"集団での活動、高い目標への追求、そして運動を通じた感情の共鳴において、最も高い熱量を生み出す組み合わせです。共に限界まで追い込むことを喜びとし、チームとしての成功を強く望むため、爆発的な成果を上げることが可能です。しかし、長期的な計画に基づき着実に進めたい側と、その瞬間の熱量や仲間の本気に突き動かされて動きたい側では、行動のトリガーが異なります。計画的な管理を重視する姿勢と、その場の高揚感を最優先する姿勢が交差するため、日常的な練習の継続性において微細なズレが生じやすいです。"}]$jxurrhwiu$::jsonb,
      $j8hs3gswd$[{"t":"p","text":"集団での活動という共通項を最大限に活かし、互いの熱量が連鎖するような高強度なグループワークアウトや競技会に参加することが推奨されます。"},{"t":"p","text":"事前の計画には「この日は本気でやる」というスイッチを明確に設定し、相手がその瞬間に全力を出し切れるような環境を整えることが効果的です。"},{"t":"p","text":"運動後の感情的なシェアを大切にし、互いの「本気」を認め合う時間を設けることが重要です。"}]$j8hs3gswd$::jsonb,
      $jg7i3o7d9$[{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その場のノリや熱量で突発的に強度を上げたい側との間で、トレーニングの規律を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチーム運営を計画する側にとって、熱量が下がった瞬間に参加意欲を失ってしまう相手の振る舞いは、信頼を損なう原因となります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$jg7i3o7d9$::jsonb,
      $jjpr30mqk$[]$jjpr30mqk$::jsonb
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
      'GPVH', 'GPMC',
      $j5qdwg5x8$[{"t":"p","text":"集団での活動と長期的な計画性を重んじる点において、安定した協力関係を築ける組み合わせです。共にスケジュール管理や段取りを重視するため、練習の実施時間を合わせることや、事前の段取りにおいて摩擦が少なく、スムーズに進行できます。しかし、理想の自分を目指して限界に挑み続けたい側と、現在のコミュニティや自身の状態を維持し、穏やかに整えたい側では、運動の最終的なゴールが異なります。感情を燃やして高みを目指す姿勢と、常に一定の精神状態を保ちながら継続することを目的とする姿勢が交差するため、求める負荷のレベルにおいて温度差が生じやすいです。"}]$j5qdwg5x8$::jsonb,
      $j3f8ow57c$[{"t":"p","text":"計画性を共有している強みを活かし、数ヶ月先の大会やイベントに向けた長期的なトレーニングスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを前提とし、メインのトレーニングは各自のペースで行いつつ、集合時間やウォームアップ、クールダウンの時間を共有する形式をとることが効果的です。"},{"t":"p","text":"定期的な振り返りの場を設け、成果だけでなく「いかに安定して続けられたか」という継続の価値を認め合うことが重要です。"}]$j3f8ow57c$::jsonb,
      $jp7e89no8$[{"t":"p","text":"計画を重視するあまり、目標設定の高さや負荷の上げ方を巡って意見が対立し、妥協点を見出すのに時間を要することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、現状維持を優先し変化を嫌う相手の姿勢は、成長の停滞や意欲の欠如として映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々とルーティンをこなすことを良しとする側との間で、共感の欠如による不満が生じやすいです。"}]$jp7e89no8$::jsonb,
      $j84bsm9d9$[]$j84bsm9d9$::jsonb
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
      'GPVH', 'GPMH',
      $jdjbkbbtx$[{"t":"p","text":"集団での活動、緻密な計画性、そして高い成果への飽くなき追求において、最も合理的かつ強力なタッグを組める組み合わせです。共に限界まで追い込むことを当然とし、目標から逆算したトレーニングを完遂する規律を持っているため、競技において圧倒的な結果を出すことが可能です。しかし、理想の自分を目指して感情を燃やしながら突き進みたい側と、常に一定の精神状態を保ち、客観的なデータや戦略に基づいて成果を出したい側では、内面的な熱量が異なります。情熱を燃料とする姿勢と、冷静な計算を武器とする姿勢が交差するため、勝負どころでの振る舞いにおいて微細な温度差が生じやすいです。"}]$jdjbkbbtx$::jsonb,
      $jd7o8b35w$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、難易度の高い大会や記録更新に向けた本格的な共同トレーニングを行うことが推奨されます。"},{"t":"p","text":"事前の計画には具体的な数値目標と戦略を盛り込み、役割分担を明確にすることが効果的です。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果だけでなく、その過程での互いの献身や努力を称え合う時間を設けることが重要です。"}]$jd7o8b35w$::jsonb,
      $jf0qa9ojw$[{"t":"p","text":"計画を重視するあまり、目標達成に向けた「最短ルート」を巡って意見が対立し、激しい議論に発展するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、常に冷静で感情を表に出さない相手の姿勢は、冷淡や無関心として映るリスクがあります。"},{"t":"p","text":"双方が高いプライドと達成欲求を持っているため、リーダーシップの所在を巡って主導権争いが生じやすいです。"}]$jf0qa9ojw$::jsonb,
      $j7amkajgq$[]$j7amkajgq$::jsonb
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
      'GPVH', 'GPVC',
      $ja4gcr9es$[{"t":"p","text":"集団での活動、計画的な進行、そして運動を通じた感情の共有において、非常に調和のとれた協力関係を築ける組み合わせです。共にスケジュールを守り、チームとしてのまとまりを重視するため、日常的な練習の運営が安定し、心理的な安心感を持って活動できます。しかし、理想の自分を目指して限界まで追い込みたい側と、現在のチームの状態や自身の心身を穏やかに整えたい側では、求める運動強度が異なります。限界突破を燃料とする姿勢と、調和と維持を目的とする姿勢が交差するため、目標設定の高さにおいて微細な温度差が生じやすいです。"}]$ja4gcr9es$::jsonb,
      $jkut9gjss$[{"t":"p","text":"計画性を共有している強みを活かし、全員が無理なく参加できる定期的なスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを解消するために、メインの練習時間を「本気枠」と「調整枠」に分け、各自がその日の状態に合わせて選択できる形式をとることが効果的です。"},{"t":"p","text":"運動後のクールダウンや対話の時間を大切にし、成果だけでなくその過程での感情的なつながりを深めることが重要です。"}]$jkut9gjss$::jsonb,
      $jgjd7ztm0$[{"t":"p","text":"計画を重視するあまり、練習の負荷を上げるタイミングや目標の難易度を巡って意見が対立し、妥協点を見出すのに苦労することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、和を優先して自分を追い込まない相手の姿勢は、向上心の欠如や甘えとして映るリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時やチーム内のトラブルの際、感情のぶつかり合いが長期化するリスクがあります。"}]$jgjd7ztm0$::jsonb,
      $jh2vxbeiu$[]$jh2vxbeiu$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;