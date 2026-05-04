INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPMH', 'GFVC',
      $jg6zefhte$[{"t":"p","text":"誰かと一緒に活動することを好む複数人型である点のみが共通しており、他の3軸はすべて異なる組み合わせです。基準型が計画と勝利、そして高強度を求めるのに対し、相手は心の安心と穏やかな絆を最優先します。基準型にとって運動は達成すべきミッションですが、相手にとっては心を癒し、他者と繋がるためのセラピーであり、運動に対する根本的な動機が全く異なります。"}]$jg6zefhte$::jsonb,
      $jutlvvmte$[{"t":"p","text":"初心者を広く受け入れるウォーキングイベントや、勝敗を競わないレクリエーションスポーツなど、心理的ハードルの低い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型が月に一度の定期開催といった大きな枠組みだけを設定し、その道中のサポートやメンバーのメンタルケアを相手に完全に委ねる形が良いです。"},{"t":"p","text":"運動後のコミュニケーションでは、基準型が成果を語る時間を短縮し、相手が重視する感情の共有や労いに時間を割くことが重要です。"}]$jutlvvmte$::jsonb,
      $j2b4012uz$[{"t":"p","text":"基準型のちゃんと結果を出そうという強度への要求が、相手にとっては期待に応えられないという恐怖や萎縮に繋がりやすいです。"},{"t":"p","text":"相手が心の状態を理由に参加を見送ったりペースを落としたりした際、基準型が計画の狂いとして事務的に処理しようとすると、相手は深く傷つきます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、最終的には相手が静かに去っていく結果になりやすいです。"}]$j2b4012uz$::jsonb,
      $j933lu9sc$[]$j933lu9sc$::jsonb
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
      'GPMH', 'GFVH',
      $jlus7f81i$[{"t":"p","text":"仲間と共に高強度で追い込むという共通点を持つが、着火のプロセスが異なる組み合わせです。基準型は緻密な計画を立てることで自ら静かに火をつけるのに対し、相手は周囲の熱量や感情のうねりに触れることで爆発的に限界を超える。冷静な戦略家と情熱的な伝道者という、対照的でありながら本気の場では強烈に共鳴し得る関係性です。"}]$jlus7f81i$::jsonb,
      $jpes3g3xl$[{"t":"p","text":"タイムトライアルや競技性の高いチームスポーツなど、明確な勝敗や記録が伴う種目を選ぶことが推奨されます。"},{"t":"p","text":"大会に向けた長期的なトレーニング計画は基準型が策定し、キツい練習メニューの最中にメンバーを鼓舞して限界を引き出す役目は相手に任せるといった分業が理想的です。"},{"t":"p","text":"運動中のコミュニケーションでは、基準型がデータに基づいたフィードバックを行い、相手がそれを感情に訴える言葉に変換してチームに伝える形を取ると良いです。"}]$jpes3g3xl$::jsonb,
      $j6o6t3axk$[{"t":"p","text":"相手のモチベーションには波があり、スイッチが入らない日に基準型の計画が崩れると、なぜ今日に限って本気を出さないのかという不満が生じやすいです。"},{"t":"p","text":"相手はその場の雰囲気や感情で動くため、基準型が求める事前計画への合意が曖昧になりがちです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での足並みが乱れる原因となります。"}]$j6o6t3axk$::jsonb,
      $jyjuigbv6$[]$jyjuigbv6$::jsonb
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
      'GPMH', 'GPMC',
      $jo30r8kc0$[{"t":"p","text":"複数人、計画、ありたいという3つの軸を共有する似た者同士ですが、運動の強度において決定的な違いを持つ組み合わせです。基準型が目標に向けて強度を上げ、勝利を掴みたいと望むのに対し、相手は穏やかなペースで、コミュニティを長く存続させたいと考えます。同じ場にいながら、求める熱量と最終的なゴールに明確な温度差が存在します。"}]$jo30r8kc0$::jsonb,
      $jzpa4uyff$[{"t":"p","text":"定期的なランニングクラブやヨガサークルなど、継続性が重視される環境を選ぶことが推奨されます。"},{"t":"p","text":"相手が運営するコミュニティの中で、基準型が大会出場を目指す有志チームを立ち上げるような、入れ子構造の棲み分けが有効です。"},{"t":"p","text":"トレーニングの設計では、共通の計画性を活かって、低強度セクションと高強度セクションを明確に分けたスケジュールを作成すると良いです。"}]$jzpa4uyff$::jsonb,
      $j4x7vqk97$[{"t":"p","text":"基準型がもっと本気でやろうとコミュニティ全体の強度を上げようとすると、相手が守ってきた穏やかなペースが崩れ、強い抵抗感を生みます。"},{"t":"p","text":"基準型が現状に満足できず次々と新しい目標や計画を提案すると、相手はそれをコミュニティの調和を乱すノイズとして警戒するようになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、協力体制が形骸化する危険があります。"}]$j4x7vqk97$::jsonb,
      $jf612hlcw$[]$jf612hlcw$::jsonb
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
      'GPMH', 'GPVC',
      $jka0wo1rz$[{"t":"p","text":"仲間と計画的に進めるという枠組みは同じですが、その中身が勝利と高強度を求める基準型と、継続と安心を求める相手とで対立しやすい組み合わせです。基準型がメンタルの安定を武器に強気に攻めるのに対し、相手は仲間への誠実さを胸に守りを固めます。計画を立てるという行為の目的が、前進するためか、不安を解消するためかという根本的な違いがあります。"}]$jka0wo1rz$::jsonb,
      $jk83p6gcq$[{"t":"p","text":"駅伝やチーム対抗のフィットネスチャレンジなど、全員の協力が必要な種目を選ぶことが推奨されます。"},{"t":"p","text":"基準型が厳しい練習メニューを組んだ際、相手が初心者のために少しペースを落とす枠を作ろうと提案するなど、基準型の計画に相手が安全網を張る形が理想的です。"},{"t":"p","text":"運動前後のミーティングでは、基準型が数値的な進捗を確認し、相手がメンバーの体調やメンタル面を報告する体制を整えると良いです。"}]$jk83p6gcq$::jsonb,
      $juwa8esi1$[{"t":"p","text":"基準型が強気に高い目標や高強度を要求しすぎると、相手の全員が無理なく続けられることという最優先事項と激しく衝突します。"},{"t":"p","text":"相手が精神的な揺らぎからペースを落とした際、安定している基準型にはその理由が理解しづらく、正論でプレッシャーをかけて追い詰めてしまいます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、計画の遂行が困難になります。"}]$juwa8esi1$::jsonb,
      $j8s76vpta$[]$j8s76vpta$::jsonb
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
      'GPMH', 'GPVH',
      $jx24xo2q6$[{"t":"p","text":"チームで計画的に本気で取り組むという3つの軸を共有し、公式コンテンツでも相性が良いとされる補完的な組み合わせです。基準型が冷静な戦略眼で計画を引くのに対し、相手はチームの感情と熱量を高めて限界を突破させる。戦略と情熱が見事に噛み合う、強力なタッグになり得る関係性です。"}]$jx24xo2q6$::jsonb,
      $jeea3iwmh$[{"t":"p","text":"競技スポーツの大会出場や、明確なランクアップを目指すトレーニングキャンプなど、高い目標設定が可能な環境を選ぶことが推奨されます。"},{"t":"p","text":"重要な試合に向けて、基準型が調子のピーク合わせのスケジュールを緻密に計算し、相手がそのスケジュールの中でメンバーの士気を最高潮に持っていく声かけを行うといった連携が理想的です。"},{"t":"p","text":"トレーニング中は、基準型が客観的なデータで現状を把握し、相手がそれを情熱的な鼓舞に変えてチームに浸透させる形を取ると良いです。"}]$jeea3iwmh$::jsonb,
      $jquttvpx0$[{"t":"p","text":"相手が感情になりすぎた場面で、基準型が冷静に計画通りやろうと正論をぶつけると、熱量に水を差す形になり反発を招きます。"},{"t":"p","text":"基準型が計画を絶対視する一方で、相手はその日のチームの雰囲気や感情の波次第で計画を無視して限界を超えようと突発的な行動に出ることがあります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、チームの結束力が揺らぐ原因となります。"}]$jquttvpx0$::jsonb,
      $jp5cbnbbv$[]$jp5cbnbbv$::jsonb
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
      'GPMH', 'SFMC',
      $jgdlabdzz$[{"t":"p","text":"メンタルの安定感だけを共有し、他のすべての要素が相反する組み合わせです。基準型がチーム・計画・高強度を求めるのに対し、相手はひとり・気分・低強度を愛する。運動の定義そのものが真逆であり、基準型の当たり前が相手にとっては最大のプレッシャーとなる、相容れない関係性です。"}]$jgdlabdzz$::jsonb,
      $js4utxkhu$[{"t":"p","text":"大きな公園での自由行動や、各自のペースで進めるオープン参加型のスポーツイベントなど、拘束力の弱い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型がチームで厳しいトレーニングを行っているグラウンドの端で、相手が一人で気ままにストレッチをしているような距離感が望ましいです。"},{"t":"p","text":"コミュニケーションにおいては、基準型が活動の成果を報告するのではなく、ただ同じ時間に同じ場所にいたという事実だけを肯定するに留めるべきです。"}]$js4utxkhu$::jsonb,
      $jky65tpd9$[{"t":"p","text":"基準型が無意識に一緒に目標を立てようと提案するだけで、相手は重苦しさを感じて静かに離れていってしまいます。"},{"t":"p","text":"相手の今日は気分じゃないから行かないという気まぐれな行動が、基準型の綿密な人数計算や計画に穴を開け、基準型側に不満が蓄積しやすいです。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、二度と一緒に動くことがなくなります。"}]$jky65tpd9$::jsonb,
      $jkdwl4ntk$[]$jkdwl4ntk$::jsonb
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
      'GPMH', 'SFMH',
      $jhr1u0inm$[{"t":"p","text":"安定したメンタルで高強度に挑むという動力の質は一致していますが、その発揮の仕方が異なる組み合わせです。基準型がチームと計画を用いて勝利に向かうのに対し、相手は一人の衝動に従って全力を出す。本気で取り組む価値観は同じでも、誰と、どう準備するかが根本的に違います。"}]$jhr1u0inm$::jsonb,
      $jjtyxpin8$[{"t":"p","text":"トレイルランニングやサーキットトレーニングなど、個々の限界に挑みつつ同じ場所で活動できる種目を選ぶことが推奨されます。"},{"t":"p","text":"リレー形式の競技などで、基準型が全体の走順やタイム配分を緻密に計算し、相手には限界まで飛ばしてくれとだけ指示を出すような関係が理想的です。"},{"t":"p","text":"運動後の振り返りでは、基準型が計画の達成度を確認し、相手がその瞬間の興奮を語るという、異なる視点からの満足感を共有すると良いです。"}]$jjtyxpin8$::jsonb,
      $jrwyr10oe$[{"t":"p","text":"基準型が一緒に練習計画を立てようとチームの枠組みに巻き込もうとすると、相手はそれを窮屈な縛りと感じて反発します。"},{"t":"p","text":"相手が当日の気分で参加を取りやめたり、独自の無謀な動きをしたりすると、チームとしての計画を重んじる基準型にとっては計算が狂い、強いストレスとなります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での共鳴が失われます。"}]$jrwyr10oe$::jsonb,
      $j9altidxs$[]$j9altidxs$::jsonb
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
      'GPMH', 'SFVC',
      $j7iic5equ$[{"t":"p","text":"4つの軸すべてが対極にある、完全に相反する組み合わせです。基準型がチームで計画的に高強度で勝つことを目指すのに対し、相手は一人で直感的に、心が整った時にゆっくり動くことを求めます。運動を達成の手段と捉えるか心の癒しと捉えるか、根本的なパラダイムが異なり、交わる点が皆無に等しいです。"}]$j7iic5equ$::jsonb,
      $jmr9tish3$[{"t":"p","text":"参加自由のゆるいウォーキングや、各自が好きな時に来て好きな時に帰れるオープンスペースでの活動など、極めて拘束力の低い環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型は相手に対して何も期待せず、何も要求しないというスタンスを徹底することが求められます。"},{"t":"p","text":"運動中のコミュニケーションは最小限に留め、互いの世界を侵さないよう配慮すべきです。"}]$jmr9tish3$::jsonb,
      $jru0zcsfj$[{"t":"p","text":"基準型の勝つために追い込むという当たり前の姿勢が、繊細な相手にとっては過大なプレッシャーとなり、運動そのものを苦痛にさせてしまいます。"},{"t":"p","text":"相手が心の状態を理由に欠席すれば基準型の緻密な計画は崩れ、基準型はなぜ無責任な行動をとるのかと憤ります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、修復不可能な断絶に至ります。"}]$jru0zcsfj$::jsonb,
      $jmfnsdl1b$[]$jmfnsdl1b$::jsonb
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
      'GPMH', 'SFVH',
      $jh3tr760d$[{"t":"p","text":"高強度で全力で追い込むという一点のみを共有する組み合わせです。全力を出すという結果は同じでも、基準型がチームの計画を前提とするのに対し、相手は個人のスイッチを前提とします。交わることのない平行線のように見えて、本気の場では強烈に共鳴し合う可能性を秘めています。"}]$jh3tr760d$::jsonb,
      $j5z82rc98$[{"t":"p","text":"競技会やタイムトライアルなど、極限まで自分を追い込むことが正当化される環境を選ぶことが推奨されます。"},{"t":"p","text":"基準型は相手を計算できる戦力としてではなく、ハマれば最強のジョーカーとして扱うべきです。"},{"t":"p","text":"運動後のケアでは、基準型が客観的な結果を評価し、相手が主観的な達成感を爆発させるという、異なる満足の形を認め合うことが重要です。"}]$j5z82rc98$::jsonb,
      $j2cw6y174$[{"t":"p","text":"基準型がチームの責任として定期的な参加や計画へのコミットを求めると、相手は義務感を感じてスイッチが遠ざかってしまいます。"},{"t":"p","text":"相手の参加が予測不可能であることは基準型の計画に穴を開ける原因となり、チームへの関与をどこまで求めるかという点で常に認識のズレを抱えることになります。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、本気の場での信頼関係が崩壊します。"}]$j2cw6y174$::jsonb,
      $j78kkw4cf$[]$j78kkw4cf$::jsonb
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