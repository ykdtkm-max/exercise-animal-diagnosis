import re

file_path = '/Users/takumi.ikeda/運動タイプ診断/ドキュメント/05_1対15比較図/SPVH_自己超越者_vs_その他15タイプ.md'
with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# We will replace the sections using regex.
# But since I don't have an LLM in python, I should generate the content here in the python script by hardcoding the replacements, or just output the whole text.
