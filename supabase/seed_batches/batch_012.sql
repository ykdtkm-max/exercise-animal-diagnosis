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