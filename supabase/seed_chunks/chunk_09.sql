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
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPMC', 'SFMC',
      $jaf6tg976$[{"t":"p","text":"ありたいと整えるの2軸が一致し、感情に流されず無理のないペースで活動するという個人の身体的・心理的な安定感は共有しています。しかし、複数人と一人、計画と気分という社会性と時間軸の捉え方が異なります。基準型がコミュニティという集団の枠組みを計画的に維持することに価値を置くのに対し、相手は個人の直感に従い、その日の気分で単独で動くことを好みます。基準型の活動に相手が参加する場合、定例の枠組みが相手には束縛と感じられやすいため、相手を不定期なゲスト参加者として許容するような、柔軟な枠組みの設計が関係維持の鍵となります。"}]$jaf6tg976$::jsonb,
      $jx1t5oz2l$[{"t":"p","text":"基準型が日時と場所を固定した活動を用意し、相手には事前の出欠確認を求めず、気が向いた時にだけふらっと参加できる自由度を保証するルールを作ります。"},{"t":"p","text":"相手が個人での散策中に発見した新しいコースやトレーニング方法を基準型に共有し、基準型がそれをコミュニティの定例プログラムに採用することで、新鮮さを取り入れます。"},{"t":"p","text":"両者ともに低負荷な運動を好むため、一緒に動く際も過度な会話を強要せず、各自のペースで歩いたり動いたりできる適度な対人距離を保ちます。"}]$jx1t5oz2l$::jsonb,
      $jwmjfijpn$[{"t":"p","text":"基準型が次回の参加予定を相手に確定させようとした際、相手はスケジュールを縛られることに強い圧迫感を感じ、運動そのものから離脱してしまいます。"},{"t":"p","text":"基準型が全員での一体感や集団行動のルールを強調しすぎると、相手は同調圧力に疲弊し、リフレッシュのための運動が苦痛に変わってしまいます。"},{"t":"p","text":"基準型は相手の不定期な参加を不真面目さと捉え、相手は基準型の管理を過干渉と捉えることで、互いの運動スタイルに対する不信感が募りやすくなります。"}]$jwmjfijpn$::jsonb,
      $j649sly1u$[]$j649sly1u$::jsonb
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
      'GPMC', 'SFMH',
      $juq0l45yj$[{"t":"p","text":"ありたいの1軸のみが共通しており、感情的な起伏が少ないという点以外、運動の前提条件がすべて異なります。基準型が集団で計画的に穏やかな強度を継続するのに対し、相手は一人で気分の赴くままに高強度の挑戦を繰り返します。互いの活動スタイルが対極にあるため、同じ空間で同じ運動を共有することは極めて困難です。基準型が相手に集団への適応を求めたり、相手が基準型に突発的な冒険を要求したりすると、関係は即座に破綻します。互いの領域を侵さず、情報交換や単発のゲスト参加に留めることが、最も現実的で健全な関わり方です。"}]$juq0l45yj$::jsonb,
      $jz5yq3szc$[{"t":"p","text":"相手が単独で行った高強度の挑戦や珍しい体験談を、基準型のコミュニティで発表する機会を設け、物理的な同行ではなく情報の共有で互いを刺激し合います。"},{"t":"p","text":"相手が危険を伴う個人活動を行う際、基準型が緊急時の連絡先や安全確認のバックアップ役を担い、適切な距離を保ちながら運動の安全性を高める協力を行います。"},{"t":"p","text":"一緒に運動することを目的とせず、定期的に互いの近況やトレーニングの成果を報告し合うことで、異なる価値観から新しい視点を得る関係を維持します。"}]$jz5yq3szc$::jsonb,
      $jzkxwk8bz$[{"t":"p","text":"基準型が相手に定例活動への継続参加を強く促すと、相手は自由を奪われると感じて強く反発し、関係そのものが冷え込む原因となります。"},{"t":"p","text":"相手が事前の準備や安全確認なしに高強度の活動に基準型を誘い出そうとすると、基準型は無計画さとリスクの高さに強い不快感と拒絶を示します。"},{"t":"p","text":"基準型は地道な継続を、相手は瞬間の限界突破を運動の目的とするため、価値観が根本から噛み合わず、対話が平行線をたどって疲弊しやすくなります。"}]$jzkxwk8bz$::jsonb,
      $j7mb2017e$[]$j7mb2017e$::jsonb
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
      'GPMC', 'SFVC',
      $j0bafnr3m$[{"t":"p","text":"整えるの1軸のみが共通しており、低負荷で無理なく動くという身体的なペースは一致しています。しかし、それ以外の要素が大きく異なるため、運動の文脈が噛み合いにくいです。基準型が集団を計画的かつ客観的に管理しようとするのに対し、相手は一人でその日の気分と感情の波に従って動くことを好みます。相手にとって基準型のコミュニティは安心感がある一方で、定期参加の義務感は心理的な重荷となります。基準型にとって相手の気分による欠席は計画の阻害要因と映りますが、相手の流動性をシステムのバグではなく仕様として受け入れる度量が基準型に求められます。"}]$j0bafnr3m$::jsonb,
      $j4wpvxlie$[{"t":"p","text":"基準型が設定した定例活動に対し、相手が当日の気分で参加・不参加を自由に選択できる「ドロップイン形式」を認め、参加への心理的ハードルを最小化します。"},{"t":"p","text":"集団での活動とは別に、基準型と相手が1対1で短時間のウォーキングを行う機会を不定期に設け、相手が安心して自分のペースで動ける時間を作ります。"},{"t":"p","text":"相手が感じた活動場所の雰囲気や心地よさに関する感覚的なフィードバックを、基準型が環境改善の貴重なデータとして活用し、場の質を高めます。"}]$j4wpvxlie$::jsonb,
      $j1ciuk6gq$[{"t":"p","text":"相手が気分や体調を理由に欠席を繰り返すと、基準型はトレーニング計画の停滞を懸念し、相手の運動に対する誠実さに疑問を抱くようになります。"},{"t":"p","text":"基準型が次回の予定やメニューを論理的に決定しようと急かすと、相手は自分の感情が整理される前に決断を迫られ、運動そのものがストレスに変わってしまいます。"},{"t":"p","text":"相手が抱える運動への不安に対して基準型が客観的すぎる解決策を提示すると、相手は感情を無視されたと感じ、心を閉ざしてコミュニティから離脱します。"}]$j1ciuk6gq$::jsonb,
      $jdfppr0ef$[]$jdfppr0ef$::jsonb
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
      'GPMC', 'SFVH',
      $jglcas1z6$[{"t":"p","text":"共通する軸が一つもない完全な対極タイプです。基準型が集団・計画・ありたい・整えるという安定と継続の極致にあるのに対し、相手は一人・気分・なりたい・高めるという衝動と限界突破の極致にあります。運動を行う目的、環境、強度、心理状態のすべてが相反するため、同じ文脈で活動を共有することは不可能に近いです。基準型の活動に相手が参加すれば退屈と束縛を感じ、相手の活動に基準型が同行すれば危険と無計画さに疲弊します。互いの活動に一切干渉せず、完全に独立した存在として尊重し合うことが、唯一の摩擦回避策です。"}]$jglcas1z6$::jsonb,
      $jrrk19lwa$[{"t":"p","text":"互いの活動領域が全く異なることを前提とし、一緒に運動する計画を立てることは避け、それぞれの活動の成果を事後報告として共有する関係に留めます。"},{"t":"p","text":"相手の極限的なトレーニング体験談を、基準型がコミュニティ運営におけるリスク管理の事例、あるいは非日常の刺激として客観的に受け止めます。"},{"t":"p","text":"相手が単独で高リスクな挑戦を行う際、基準型が後方支援として緊急連絡網の管理のみを引き受け、実際の運動は完全に分離して行います。"}]$jrrk19lwa$::jsonb,
      $jwfskgpr2$[{"t":"p","text":"基準型が相手をコミュニティの定例活動に無理に組み込もうとした瞬間、相手は強い拒絶反応を示し、二度と活動を共にできなくなるほど関係が悪化します。"},{"t":"p","text":"相手がその場の思いつきで基準型に高強度の活動を要求すると、基準型は無計画さとリスクの高さに強い憤りを感じ、相手を無責任だと断じるようになります。"},{"t":"p","text":"基準型は相手の行動を無謀で危険と評価し、相手は基準型の行動を退屈で保守的と評価するため、運動を通じた相互理解の糸口が見つかりません。"}]$jwfskgpr2$::jsonb,
      $jpm5sgrrs$[]$jpm5sgrrs$::jsonb
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
      'GPMC', 'SPMC',
      $jvlx8h080$[{"t":"p","text":"計画とありたいと整えるの3軸が共通する隣接タイプです。感情に左右されず、計画的に無理のないペースで継続するという行動原理が一致しているため、言葉を尽くさずとも意図が伝わる高い相互理解が可能です。唯一の違いは複数人と一人の社会性であり、基準型がコミュニティの維持に価値を置くのに対し、相手は個人の自律的な活動を好みます。相手は基準型のコミュニティに属していても、集団の同調圧力には屈さず自分のペースを守ります。この適度な距離感を基準型が許容できれば、極めて良好で安定した関係が築けます。"}]$jvlx8h080$::jsonb,
      $j30jy4npw$[{"t":"p","text":"基準型がコミュニティの活動枠組みを提供し、相手がその中で自分のペースを乱さずに参加できるような、個人の裁量を大きく残したプログラムを設計します。"},{"t":"p","text":"相手が一人で熟考して得た最新の運動知識や合理的な計画案を、基準型がコミュニティ全体の運営方針やメニュー改善に積極的に取り入れます。"},{"t":"p","text":"両者ともに穏やかなペースを好むため、過度な会話を必要としない黙々としたウォーキングやジムトレーニングなど、静かな時間を共有します。"}]$j30jy4npw$::jsonb,
      $jf98skdn4$[{"t":"p","text":"基準型がコミュニティの結束を高めるために全員参加のレクリエーションを企画すると、相手は集団の熱を煩わしく感じて距離を置いてしまいます。"},{"t":"p","text":"基準型がコミュニティの運営会議や役割分担への積極的な参加を相手に強く求めると、相手は自分の時間を奪われると感じて難色を示し、参加意欲が減退します。"},{"t":"p","text":"基準型はコミュニティへの帰属意識を前提としますが、相手はコミュニティを活動手段の一つと見なしているため、組織への忠誠心に温度差が生じ、基準型が寂しさを感じます。"}]$jf98skdn4$::jsonb,
      $j8042e73z$[]$j8042e73z$::jsonb
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
      'GPMC', 'SPMH',
      $jk2andcjm$[{"t":"p","text":"計画とありたいの2軸を共有し、感情に流されず計画的に目標へ向かうという思考の土台は一致しています。しかし、複数人と一人、整えると高めるの違いが、計画の対象と強度に大きな差を生みます。基準型がコミュニティ全員の安全と継続を目的とした計画を立てるのに対し、相手は自分自身の限界を超えるための高強度な個人計画を立てます。互いに計画の合理性を重んじるため論理的な対話は成立しますが、目指す方向が「全体の底上げ」と「個人の頂点」で異なるため、相手をコミュニティの枠に収めようとせず、独立した専門家として扱うことが重要です。"}]$jk2andcjm$::jsonb,
      $j8uygqi7c$[{"t":"p","text":"基準型がコミュニティ全体の運営計画を、相手が個人のトレーニング計画をそれぞれ持ち寄り、論理的な視点から相互にレビューを行って計画の精度を高めます。"},{"t":"p","text":"相手をコミュニティ内の上級者向けアドバイザーとして位置づけ、基準型が管理する枠組みの中で相手の専門的な知見を活かす機会を作ります。"},{"t":"p","text":"互いの目標達成に向けた進捗を定期的に報告し合い、異なる領域で計画を遂行する者同士として、適度な距離感を保ちながら刺激を与え合います。"}]$j8uygqi7c$::jsonb,
      $jtb108nzn$[{"t":"p","text":"相手が自分の高強度な基準をコミュニティ全体の計画に適用しようとすると、基準型は参加者の脱落を危惧して強く反対し、論理的な対立が深まります。"},{"t":"p","text":"基準型が相手に初心者のフォローなどの役割を期待すると、相手は自身のトレーニング効率が低下すると判断して拒絶し、基準型は相手を非協力的だと感じます。"},{"t":"p","text":"基準型は全員のペースを合わせるための調整に時間を割きますが、相手はそれを非効率な時間の浪費と見なし、意思決定のスピード感を巡って不満を抱きます。"}]$jtb108nzn$::jsonb,
      $j3u5ej16h$[]$j3u5ej16h$::jsonb
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
      'GPMC', 'SPVC',
      $j3u0eapj7$[{"t":"p","text":"計画と整えるの2軸が共通し、無理のないペースで計画的に継続するという活動の基本方針は一致しています。しかし、複数人と一人の違いにより、基準型がコミュニティの定例を重視するのに対し、相手は個人のルーティンを最優先します。さらに、ありたいとなりたいの違いから、基準型が柔軟に状況を処理できるのに対し、相手はルーティンが崩れることに強いストレスを感じます。相手がコミュニティに参加する場合、その活動が相手の既存のルーティンに完全に合致している必要があるため、基準型が相手のこだわりを理解し、参加のハードルを下げる工夫が求められます。"}]$j3u0eapj7$::jsonb,
      $ju85wd8vu$[{"t":"p","text":"基準型が定例活動の日時や内容を完全に固定し、相手が自身の生活ルーティンとしてコミュニティ活動を組み込みやすい安定した環境を提供します。"},{"t":"p","text":"相手が抱える活動への不安に対し、基準型が事前に詳細なメニューやスケジュールを提示することで、相手が予測可能性を持って参加できるように配慮します。"},{"t":"p","text":"相手の毎日の継続的な個人活動を基準型が承認し、コミュニティへの参加頻度に関わらず、その地道な努力を尊重する姿勢を言葉で示します。"}]$ju85wd8vu$::jsonb,
      $j98jzm4ty$[{"t":"p","text":"基準型がコミュニティの都合で定例活動の日程を急に変更すると、相手は自分のルーティンが破壊されたと感じ、強い不満を抱いて参加をやめてしまいます。"},{"t":"p","text":"基準型が活動内容の詳細を当日の状況で決定しようとすると、相手は見通しが立たないことに強い不安を覚え、参加を躊躇するようになります。"},{"t":"p","text":"相手が自分のペースやルーティンを守ることに固執しすぎると、基準型はコミュニティの和を乱す非協力的な行為と見なし、対応に苦慮して関係がギクシャクします。"}]$j98jzm4ty$::jsonb,
      $jgumf3cq4$[]$jgumf3cq4$::jsonb
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
      'GPMC', 'SPVH',
      $jrz0ayl5y$[{"t":"p","text":"計画の1軸のみが共通する遠傍タイプです。目標から逆算してメニューを組み立てるという思考プロセスは一致していますが、その計画が向かう先は全く異なります。基準型がコミュニティ全員の安定した継続を目的とするのに対し、相手は自分自身の限界突破を目的とします。相手は一人・なりたい・高めるの特性から、自己の目標達成に対して強い執着を持ち、高強度なトレーニングを孤独に遂行します。基準型のコミュニティは相手にとって強度が低すぎ、また集団のペースに合わせることは非効率な苦痛でしかないため、計画の立て方という抽象的なレベルでのみ共鳴可能な関係です。"}]$jrz0ayl5y$::jsonb,
      $jx4613fxk$[{"t":"p","text":"互いの計画の立て方や進捗管理の手法について情報交換を行い、計画型という共通項を活かした知的な対話を通じて、互いの運動の質を高め合います。"},{"t":"p","text":"相手が設定した過酷な個人計画に対し、基準型が客観的な視点からオーバートレーニングや怪我のリスクを指摘し、冷静な安全装置として機能します。"},{"t":"p","text":"相手の目標達成の報告を基準型がコミュニティ内で共有し、他の参加者のモチベーション向上に繋げるという、直接同行しない形での協力を模索します。"}]$jx4613fxk$::jsonb,
      $jz4klmkof$[{"t":"p","text":"基準型が相手をコミュニティの活動に繰り返し誘うと、相手は自分のトレーニング計画の妨げになると判断し、冷淡に拒絶することで関係が冷え込みます。"},{"t":"p","text":"相手が自身のストイックな価値観や高負荷な基準を基準型に押し付けると、基準型はコミュニティの包括的な理念と相容れないとして強い反発を感じます。"},{"t":"p","text":"相手が目標未達に対して過剰な焦りや苛立ちを見せた際、基準型の落ち着いた客観的な対応が、逆に相手の感情を逆撫でする結果を招き、対話が断絶します。"}]$jz4klmkof$::jsonb,
      $j8g3ny83x$[]$j8g3ny83x$::jsonb
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
      'GPMH', 'GFMC',
      $j398g4oji$[{"t":"p","text":"複数人で活動することを好み、現在の状態を肯定的に捉える姿勢は共通していますが、運動のプロセスと強度に対する価値観が対照的な組み合わせです。基準型が目標達成に向けた緻密な計画と高強度な追い込みを重視するのに対し、相手はその場の気分を優先し、心身を穏やかに整えることを目的とします。基準型にとっての集団は成果を最大化するための機能的なチームですが、相手にとっての集団は心地よい時間を共有するためのコミュニティであり、運動を通じたコミュニケーションの質に大きな隔たりがあります。"}]$j398g4oji$::jsonb,
      $jmfzf6zon$[{"t":"p","text":"地域のファンランイベントやチャリティスポーツ大会など、社交性と目標設定の両方が必要とされる場を選ぶことが推奨されます。"},{"t":"p","text":"運動前後の調整においては、基準型が全体の方針を示しつつ、相手が提案する寄り道や食事などのリラックス要素を計画の一部としてあらかじめ組み込んでおくことが有効です。"},{"t":"p","text":"目標設定の際は、数値目標だけでなく楽しむこと自体を計画の項目に入れることで、互いの強度レベルを調整しやすくなります。"}]$jmfzf6zon$::jsonb,
      $jkmqh3ipo$[{"t":"p","text":"基準型が逆算した計画通りに本気で追い込もうとする成果志向の姿勢が、相手にとっては重い義務感やプレッシャーとなり、運動そのものの楽しさを奪ってしまいます。"},{"t":"p","text":"相手がその日の気分や体調を理由に突発的なメニュー変更を提案した際、基準型は自身の緻密な計画が崩されることに強いストレスを感じます。"},{"t":"p","text":"モチベーションが低下した際の回復アプローチの違いも衝突の原因となります。基準型が原因分析と計画の再構築によって立て直そうとするのに対し、相手は感情的な休息や気分の切り替えを求めるため、この対応の温度差が互いへの不信感を増幅させます。"}]$jkmqh3ipo$::jsonb,
      $jx1qouwrs$[]$jx1qouwrs$::jsonb
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
      'GPMH', 'GFMH',
      $j3gti33db$[{"t":"p","text":"仲間と共に高強度で限界に挑むという目的意識を共有するため、一度火がつけば圧倒的な熱量を生み出す組み合わせです。しかし、その熱狂に至るまでの準備プロセスが決定的に異なります。基準型が逆算された緻密な計画があることで安心して本気になれるのに対し、相手はその場やその瞬間の直感的な熱量によって突発的に着火します。事前準備の量と質に対する期待値の違いが、二人の間の最大のギャップとなります。"}]$j3gti33db$::jsonb,
      $jrui4u2yf$[{"t":"p","text":"障害物レースや高強度のサーキットトレーニングなど、非日常的で刺激的な種目を選ぶことが推奨されます。"},{"t":"p","text":"トレーニング中は、基準型がペースメーカーとして全体の進捗を管理し、相手がチームの士気を鼓舞して限界を引き出す役割を担うと良いです。"},{"t":"p","text":"事前の合意形成においては、計画の骨子だけを基準型が固め、細部は当日のノリで決める余白を残しておくことが重要です。"}]$jrui4u2yf$::jsonb,
      $j54gnmou8$[{"t":"p","text":"事前のコミットメントや準備の段階で、両者のモチベーションの構造的な違いが衝突を生みやすいです。"},{"t":"p","text":"当日のアクシデントや気分によって相手が突発的なコース変更やメニュー追加を提案した際、基準型は自身の計画が根底から覆されることに強い怒りを覚えます。"},{"t":"p","text":"モチベーションが低下した際の回復プロセスにおける違いも、関係性に亀裂を生みます。基準型が論理的な解決を志向するのに対し、相手は感情的な休息や気分の転換を求めるため、このアプローチの相違が互いへの不信感を増幅させ、チームの崩壊を招く危険性があります。"}]$j54gnmou8$::jsonb,
      $j0d5f7530$[]$j0d5f7530$::jsonb
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