import re

with open('/Users/takumi.ikeda/運動タイプ診断/ドキュメント/05_1対15比較図/GFMC_盛り上げ隊長_vs_その他15タイプ.md', 'r') as f:
    text = f.read()

# I will use a simple regex to replace the sections
# For each pair, I need to provide the 3 sections.
# I will just write a python script that uses the google genai API to rewrite the sections.

