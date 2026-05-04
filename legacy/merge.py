with open("04_METs換算表.md", "w") as f:
    f.write("# 運動タイプ診断 METs（非運動性熱産生）換算マスターデータ（完全網羅版）\n\n")
    f.write("本ドキュメントは、診断結果においてユーザーの日常活動を「運動」として再定義し、罪悪感を払拭する「免罪符ロジック」に用いるためのマスターデータです。\n\n")
    f.write("国立健康・栄養研究所の「身体活動のメッツ（METs）表」等を参考に、あらゆるライフスタイル、趣味活動、労働、家事などを**24のカテゴリ・約700項目**に極限まで細分化し、1時間行った場合の消費カロリーを概算しています。\n\n")
    f.write("> **消費カロリー算出公式**\n")
    f.write("> 消費カロリー（kcal） ＝ METs × 体重（60kgを想定） × 時間（1時間） × 1.05\n")
    f.write("> ※小数点以下は四捨五入しています。（1.0 METs ≒ 63 kcal）\n\n---\n\n")
    
    for i in range(1, 6):
        with open(f"phase{i}.md", "r") as p:
            content = p.read()
            # remove the "# Phase X" header
            lines = content.split("\n")[2:]
            f.write("\n".join(lines))
            f.write("\n")
