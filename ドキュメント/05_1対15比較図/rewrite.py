import re

file_path = '/Users/takumi.ikeda/運動タイプ診断/ドキュメント/05_1対15比較図/GFMC_盛り上げ隊長_vs_その他15タイプ.md'
with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# We will just replace the sections.
