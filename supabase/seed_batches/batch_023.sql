INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GFMH', 'GPMC',
      $jcgqf6gvj$[{"t":"p","text":"複数人でありたい状態を重視し、コミュニティに価値を見出す姿勢は共有していますが、運動の継続方法と強度に関する価値観が異なります。外部のイベントや熱い体験を推進力とする側と、同じ場所で同じ時間を繰り返すことに意義を感じる側では、集団に求める機能が異なります。気分に従い高めることを望む側にとって、計画的で整えることを主眼とする反復活動は停滞に感じられやすいです。逆に、安定を求める側には、突発的な提案が秩序を乱す要因として映ります。"}]$jcgqf6gvj$::jsonb,
      $jt86i14hw$[{"t":"p","text":"日常的な反復活動を基盤として守りつつ、年間を通じて数回程度の特別なイベントを組み込むことで、双方の動機を共存させることができます。"},{"t":"p","text":"一方がコミュニティの安定的な運営を担い、もう一方がそこに適度な刺激をもたらすという役割分担を明確にすることで、組織全体の活力が向上します。"},{"t":"p","text":"互いの運動に対する価値観の違いを前提として受け入れることで、意見の相違が生じても関係性の悪化を防ぐ心理的な土台を形成できます。"}]$jt86i14hw$::jsonb,
      $jd5474j1c$[{"t":"p","text":"一方が突発的に新しい企画や変更を提案すると、計画と反復を重んじる側はそれをコミュニティの秩序を乱す行為として否定的に捉え、反発を生みます。"},{"t":"p","text":"継続そのものに価値を見出す側の姿勢を、もう一方が停滞や退屈と感じてしまうことで、活動に対する根本的なモチベーションの差が浮き彫りになります。"},{"t":"p","text":"一方が外部の刺激を求めて一時的に活動から離脱すると、もう一方はそれを集団への帰属意識の欠如と解釈し、相互の信頼関係が損なわれます。"}]$jd5474j1c$::jsonb,
      $jpvelw3br$[]$jpvelw3br$::jsonb
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
      'GFMH', 'GPMH',
      $jvl9m6lx6$[{"t":"p","text":"複数人でありたい状態を保ちながら高めることを目指すという三つの要素を共有しており、集団で高い熱量を持って目標に向かう姿勢が一致します。しかし、その目標へのアプローチにおいて、気分に従い柔軟に対応する側と、計画を重んじ着実に実行する側とで手法が異なります。外部のイベントを推進力とする側に対し、逆算された計画の遂行に価値を見出す側は、突発的な変更をノイズと捉えやすいです。熱量の高さは共通しているため、進め方の違いをいかに調整するかが関係性の鍵となります。"}]$jvl9m6lx6$::jsonb,
      $jt9k2bj6n$[{"t":"p","text":"一方が全体のスケジュールや目標達成に向けた道筋を設計し、もう一方が当日の雰囲気作りや参加者の動機付けを担うことで、互いの強みを活かした強力な推進力が生まれます。"},{"t":"p","text":"大会やイベントといった明確な外部目標を共有することで、計画を重んじる側の逆算思考と、気分に従う側のイベントへの熱量が自然に噛み合い、同じ方向へ進むことができます。"},{"t":"p","text":"計画の骨格は維持しつつも、その日の状況に応じた微調整の余地をあらかじめ組み込んでおくことで、双方にとってストレスの少ない柔軟な運営が可能となります。"}]$jt9k2bj6n$::jsonb,
      $j01y2a6rd$[{"t":"p","text":"一方がその場の思いつきで活動内容や参加者を変更しようとすると、もう一方は綿密に立てた計画が崩されることに強い不満を抱き、対立の原因となります。"},{"t":"p","text":"計画通りに進めることを過度に要求されると、気分に従って動きたい側は窮屈さを感じ、本来持っていた活動への熱量やモチベーションを急速に失ってしまいます。"},{"t":"p","text":"目標達成に向けた真剣さは同じであるにもかかわらず、アプローチの違いから互いに相手のやり方を非効率的または無責任だと誤認し、信頼関係を損なう危険性があります。"}]$j01y2a6rd$::jsonb,
      $j79ui4le1$[]$j79ui4le1$::jsonb
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
      'GFMH', 'GPVC',
      $j4vxdrrkz$[{"t":"p","text":"複数人で活動するという一点のみを共有し、他のすべての要素が相反します。外部の刺激を求め、気分に従って高めることを好む側と、固定された関係性の中で計画的に整えることを望む側では、活動の前提となる条件が合致しません。突発的な提案や不確実な状況は、計画と安心を重視する側にとって強いストレス要因となり、互いの行動原理が相手の阻害要因として機能しやすい構造を持ちます。"}]$j4vxdrrkz$::jsonb,
      $jl3k5ry0n$[{"t":"p","text":"定期的な活動という安定した枠組みを維持した上で、事前に合意された範囲内でのみ特別な要素を導入することで、双方の許容範囲を重ならせることができます。"},{"t":"p","text":"活動の名称や目的を明確に定義し、参加者に予測可能性を提供することで、計画を重視する側の心理的な障壁を下げ、参加を促す効果があります。"},{"t":"p","text":"参加者の顔ぶれを一定に保つことで、環境に対する安心感を担保しつつ、その内部での活動内容にのみ柔軟性を持たせるアプローチが有効です。"}]$jl3k5ry0n$::jsonb,
      $j2erl5pbh$[{"t":"p","text":"一方がその場の思いつきで参加者を増やしたり内容を変更したりすると、もう一方は事前の約束が反故にされたと感じ、強い不信感を抱きます。"},{"t":"p","text":"活動に対する気軽な姿勢が、なりたい状態を目指して真摯に取り組む側には、不誠実や責任感の欠如として映り、運動を通じた関係性の悪化を招きます。"},{"t":"p","text":"一方が体調や心理的な理由で参加を見送った際、もう一方がその理由を深く追求せずに流してしまうと、配慮が足りないという不満を生みます。"}]$j2erl5pbh$::jsonb,
      $jmu9tkgyl$[]$jmu9tkgyl$::jsonb
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
      'GFMH', 'GPVH',
      $j4rl6xi3n$[{"t":"p","text":"複数人で高めることを目的とする点は共通しており、集団で高い熱量を持って目標に向かう姿勢が一致しますが、その熱量の管理方法が異なります。気分に従いありたい状態を保つ側と、計画を重んじなりたい状態を目指して自己変革を図る側では、活動へのコミットメントの質が異なります。柔軟性を持ち失敗を引きずらない姿勢は、計画への献身を重視する側からは、時に真剣味の欠如として解釈され、信頼関係に影響を与えます。"}]$j4rl6xi3n$::jsonb,
      $jod58l28m$[{"t":"p","text":"一方が対外的な調整や新規参加者の動機付けを担い、もう一方が内部の計画策定や実行管理を担うことで、互いの特性を活かした強固な体制が構築できます。"},{"t":"p","text":"大会や試合といった明確な外部目標を設定することで、異なるアプローチを持つ両者の視線を自然と同じ方向へ収束させることが可能となります。"},{"t":"p","text":"高い目標を達成した際の充実感を共有することで、過程における手法の違いを乗り越え、運動を通じた相互の信頼関係を深めることができます。"}]$jod58l28m$::jsonb,
      $j6cddjkfu$[{"t":"p","text":"一方が柔軟に休息を取ったり参加を見送ったりする行動が、もう一方には集団の士気を低下させる怠慢な態度として厳しく評価されます。"},{"t":"p","text":"状況に応じた突発的な変更提案が、綿密な計画を拠り所とする側の心理的な安定を脅かし、運動の進行を妨げる強い反発を引き起こします。"},{"t":"p","text":"失敗に対する切り替えの早さが、深く反省し次につなげようとする側には、問題に向き合っていない軽薄な態度として映り、不信感を生みます。"}]$j6cddjkfu$::jsonb,
      $jc34r0f49$[]$jc34r0f49$::jsonb
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
      'GFMH', 'SFMC',
      $jcgs10msv$[{"t":"p","text":"気分に従い、ありたい状態を重視する点で、義務感に縛られず柔軟に行動できるという共通の基盤を持ちますが、運動に求める本質的な価値が異なります。複数人で高める体験を求める側と、一人で整える時間を優先する側では、活動の原動力が相反します。外部のイベントや他者との関わりを必要とするアプローチは、自己のペースと内面的な心地よさを守りたい側にとって、過度な干渉やプレッシャーとして作用します。"}]$jcgs10msv$::jsonb,
      $jye060s6t$[{"t":"p","text":"目的地や具体的な活動内容を厳密に定めず、互いに自由な選択の余地を残した状態でのみ行動を共にすることで、心理的な負担を最小限に抑えられます。"},{"t":"p","text":"事前の約束や計画に縛られず、その日の状況に応じて合流や解散が可能な流動的な関係性を保つことが、長期的な運動継続に寄与します。"},{"t":"p","text":"活動が想定通りに進まなかった場合でも、それを失敗と捉えずに受け流す寛容さを共有しているため、気楽な距離感を維持しやすいです。"}]$jye060s6t$::jsonb,
      $jrov00sm1$[{"t":"p","text":"一方が良かれと思って行う事前の申し込みや参加の確定が、もう一方にとっては自由を奪われる最大の重圧となり、運動そのものを回避させます。"},{"t":"p","text":"集団での一体感や高い熱量を共有しようとする空気が、個人のペースを重んじる側には同調圧力として働き、強い拒絶反応を引き起こします。"},{"t":"p","text":"活動の強度を上げようとする提案が、その日の気分や体調に合わせて穏やかに過ごしたいという欲求と対立し、活動の継続を困難にします。"}]$jrov00sm1$::jsonb,
      $jv17hftlu$[]$jv17hftlu$::jsonb
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
      'GFMH', 'SFMH',
      $jewwmi0im$[{"t":"p","text":"気分に従い、ありたい状態を保ちながら高めることを目指すという三つの要素が一致し、即興的かつ高い熱量で活動に取り組む姿勢が共鳴します。しかし、その熱量を複数人で共有するか、一人で探求するかという点において決定的な違いがあります。他者との関わりによって活力を得る側と、自己の内面的な限界に挑む側とが、それぞれの領域を侵食せずに並立できる環境を設計することが、運動体験の質を高める鍵となります。"}]$jewwmi0im$::jsonb,
      $jgx3uwsky$[{"t":"p","text":"開始と終了のタイミングのみを共有し、活動中のプロセスは互いに干渉せず独立して行うスタイルが、双方の欲求を最も高いレベルで満たします。"},{"t":"p","text":"一方が新しい領域や難易度の高い課題を開拓し、もう一方がそこに他者を巻き込むというサイクルを作ることで、活動の幅を広げられます。"},{"t":"p","text":"高い目標に向かって全力を尽くすという根本的な価値観が一致しているため、活動の強度に関する認識のずれが生じにくく、相互の尊敬を生みます。"}]$jgx3uwsky$::jsonb,
      $jhledy0y2$[{"t":"p","text":"一方が活動の場に次々と他者を招き入れると、もう一方は自身の集中すべき単独の時間が奪われていると感じ、運動への意欲を喪失します。"},{"t":"p","text":"双方が気分に従う特性を持つため、事前の情報収集や準備が不足したまま困難な状況に直面し、活動自体が破綻するリスクが高まります。"},{"t":"p","text":"活動中もコミュニケーションを求める側と、完全に自己の世界に没入したい側との間で、関わりの頻度に関する期待値が衝突します。"}]$jhledy0y2$::jsonb,
      $j04hmd7fh$[]$j04hmd7fh$::jsonb
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
      'GFMH', 'SFVC',
      $jxnuii8kh$[{"t":"p","text":"気分に従うという一点のみを共有し、他の要素はすべて対極に位置します。複数人で高める非日常的な体験を好む側と、一人で整える静かな時間を必要とする側では、活動環境に対する適性が根本的に異なります。ありたい状態を維持できる側が発する高いエネルギーは、なりたい状態を目指して感情の波を抱える側にとって、処理しきれない過剰な刺激となり、一方的な疲弊を招きます。"}]$jxnuii8kh$::jsonb,
      $j08f8aqlr$[{"t":"p","text":"事前の厳密な約束を避け、当日の状況次第で参加を見送ることも許容される緩やかな関係性を築くことで、心理的な障壁を取り除けます。"},{"t":"p","text":"会話や同調を強制せず、ただ同じ空間で各々のペースで過ごすことを認める環境であれば、異なる欲求を持つ両者でも時間を共有できます。"},{"t":"p","text":"高頻度での交流を求めず、互いの負担にならない範囲でのみ接点を持つことで、価値観の違いによる摩擦を回避しつつ関係を維持できます。"}]$j08f8aqlr$::jsonb,
      $jfkn4lv49$[{"t":"p","text":"一方が次々と新しい予定や活動を提案すると、もう一方はそのペースに適応できず、精神的な余裕を失い、運動習慣そのものを断念します。"},{"t":"p","text":"活動の強度を高めようとする意図が、心身の平穏を取り戻すことを目的としている側には、自身の状態を無視された要求として受け取られます。"},{"t":"p","text":"不特定多数が集まる環境へ誘い出す行為は、安全で静かな空間を必要とする側の心理的な拠り所を破壊し、強いストレスを与えます。"}]$jfkn4lv49$::jsonb,
      $jn6o70txi$[]$jn6o70txi$::jsonb
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
      'GFMH', 'SFVH',
      $j5vsc5ijf$[{"t":"p","text":"気分に従い高めることを求める点で、即興的に高いパフォーマンスを発揮する感覚を共有していますが、そのパフォーマンスを発揮する前提条件が異なります。他者の存在を原動力とする側に対し、自己の内部に集中することで限界を超える側は、他者の介入をノイズと見なします。ありたい状態を保つ側となりたい状態を目指す側とでは、運動を通じた自己評価の基準が異なるため、適切な距離感の維持が不可欠です。"}]$j5vsc5ijf$::jsonb,
      $j9a05l0h4$[{"t":"p","text":"同一の施設や環境を利用しつつも、互いの活動には一切干渉しないという明確なルールを設けることで、双方にとって最適な状態を両立できます。"},{"t":"p","text":"一方が活動の周辺環境の整備や対外的な役割を担い、もう一方が純粋に競技に集中するという、空間を共有しながらの完全な分業が機能します。"},{"t":"p","text":"内面的なスイッチが入った際の爆発的な集中力を互いに理解しているため、その瞬間には一切の介入を行わないという暗黙の了解を形成します。"}]$j9a05l0h4$::jsonb,
      $jifzo5ona$[{"t":"p","text":"一方が他者との交流や一体感を活動の場に持ち込むと、もう一方の深い集中状態が阻害され、パフォーマンスの低下と強い不満を引き起こします。"},{"t":"p","text":"内面的な状態が整わず沈黙している相手に対し、もう一方がそれを関係性の問題と誤認し、不要な介入を行うことで心理的な軋轢が生じます。"},{"t":"p","text":"活動終了後も余韻を共有したい側と、速やかに個人の時間に戻りたい側との間で、活動の区切りに対する認識の差がストレスを生みます。"}]$jifzo5ona$::jsonb,
      $j6by1dqtd$[]$j6by1dqtd$::jsonb
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
      'GFMH', 'SPMC',
      $jnv0yo3vk$[{"t":"p","text":"ありたい状態を重視するという一点のみが共通し、他の要素はすべて相反します。複数人で気分に従い高めることを求める側と、一人で計画的に整えることを重んじる側では、行動の原理が全く交わらない。外部の刺激や変化を活力とするアプローチは、日常の規則的な反復と静寂に価値を見出す側にとって、構築した秩序を破壊する脅威となる。互いの存在が相手の活動の阻害要因となりやすい、極めて難易度の高い関係性である。"}]$jnv0yo3vk$::jsonb,
      $jlc7nj6vt$[{"t":"p","text":"日常的な計画や習慣には一切介入せず、あらかじめ合意された極めて限定的な機会においてのみ活動を共有するという厳格な線引きが必要です。"},{"t":"p","text":"互いに自己の在り方を確立しているため、過度な期待や干渉を避け、表面的な違いを深刻に受け止めないドライな関係性を保つことが有効です。"},{"t":"p","text":"日常の延長線上にあり、事前の準備や強度の高い負荷を伴わない軽微な活動であれば、双方の領域を侵さずに接点を持つことが可能となります。"}]$jlc7nj6vt$::jsonb,
      $j2jjdmzj1$[{"t":"p","text":"一方が思いつきで提案する突発的な活動が、もう一方が精緻に構築した日常のルーティンを根本から崩すことになり、深刻な対立を招きます。"},{"t":"p","text":"変化や刺激がない状態を退屈と感じる側と、波風の立たない平穏な状態にこそ価値を見出す側とで、活動に対する評価が完全に二分されます。"},{"t":"p","text":"一方のペースに巻き込まれることで、もう一方はその後の計画や体調管理に支障をきたし、結果として関係性そのものを回避するようになります。"}]$j2jjdmzj1$::jsonb,
      $j6gplowxn$[]$j6gplowxn$::jsonb
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
      'GFMH', 'SPMH',
      $j6mxiv5xp$[{"t":"p","text":"ありたい状態を保ちながら高めることを目指す点で、心理的な余裕を持ちつつ高い目標に挑む姿勢が一致しますが、目標へ至るプロセスが対極にあります。他者との一体感や外部の熱量を推進力とする側に対し、綿密な計画と自己との対話によって記録を更新していく側は、他者の介入を必要としません。手法の違いを認め合い、運動を通じた成果の定義が異なることを認識する必要があります。"}]$j6mxiv5xp$::jsonb,
      $jmfekj2ex$[{"t":"p","text":"一方が活動の場を盛り上げ他者を巻き込む役割を担い、もう一方が個人の記録更新に専念するという、互いの領域を侵さない分業が極めて有効です。"},{"t":"p","text":"高い目標に向かって妥協せずに取り組むという根本的な姿勢が共通しているため、手法は違えど互いの努力に対する深い敬意を共有できます。"},{"t":"p","text":"意見やアプローチの違いが生じても、それを個人的な対立と受け取らずに合理的に処理できるため、建設的な運動環境を維持しやすいです。"}]$jmfekj2ex$::jsonb,
      $jq9yrcpgd$[{"t":"p","text":"一方がコミュニケーションや一体感を求めて頻繁に介入すると、もう一方は自身の計画的なトレーニングの進行が妨害されたと感じ、不満を募らせます。"},{"t":"p","text":"活動の成果を他者との共有体験に見出す側と、数値化された自己記録の更新に見出す側とで、活動終了後の達成感の基準が噛み合わない。"},{"t":"p","text":"その場の状況に応じて柔軟に計画を変更しようとする提案が、あらかじめ設定された手順を重んじる側の合理性と衝突し、進行の妨げとなる。"}]$jq9yrcpgd$::jsonb,
      $jczo5pbd8$[]$jczo5pbd8$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;