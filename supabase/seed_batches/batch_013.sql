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