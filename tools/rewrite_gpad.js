const fs = require('fs');
const path = require('path');

const filePath = path.join(__dirname, '..', 'ドキュメント', '05_1対15比較図', 'GPAH_勝利の女神_vs_その他15タイプ.md');
let content = fs.readFileSync(filePath, 'utf8');

// The goal is to replace the sections from "### タイプ差のポイントと解説" down to "### おすすめの運動プラン（5つ）"
// with the new 4 sections, synthesized into paragraphs.

// We will use an LLM or just hardcode the replacements for GPMH.
// Actually, since I have to do this for all 15 pairs in GPMH, I can use the LLM to do it, but the subagent messed up the Hamming distance.
// Let's use the subagent again but give it stricter instructions.
