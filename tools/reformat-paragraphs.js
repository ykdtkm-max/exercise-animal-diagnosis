const fs = require('fs');

let content = fs.readFileSync('types-data.js', 'utf8');

function groupSentences(text, maxParagraphs) {
    // Remove existing newlines
    const cleanText = text.replace(/\\n/g, '').replace(/\n/g, '');
    const sentences = cleanText.split(/(?<=[。！])\s*/).filter(s => s.trim().length > 0);
    
    if (sentences.length <= 1) return cleanText;
    
    const numParagraphs = Math.min(maxParagraphs, sentences.length);
    const baseSize = Math.floor(sentences.length / numParagraphs);
    let remainder = sentences.length % numParagraphs;
    
    const paragraphs = [];
    let currentIndex = 0;
    
    for (let i = 0; i < numParagraphs; i++) {
        let currentSize = baseSize + (remainder > 0 ? 1 : 0);
        remainder--;
        
        if (currentSize > 0) {
            const paragraphSentences = sentences.slice(currentIndex, currentIndex + currentSize);
            paragraphs.push(paragraphSentences.join(''));
            currentIndex += currentSize;
        }
    }
    
    return paragraphs.join('\\n\\n');
}

// Replace concept (max 3 paragraphs = 2 breaks)
content = content.replace(/"concept":\s*"([^"]+)"/g, (match, p1) => {
    const newText = groupSentences(p1, 3);
    return `"concept": "${newText}"`;
});

// Replace continuation_text (max 2 paragraphs = 1 break)
content = content.replace(/"continuation_text":\s*"([^"]+)"/g, (match, p1) => {
    const newText = groupSentences(p1, 2);
    return `"continuation_text": "${newText}"`;
});

fs.writeFileSync('types-data.js', content, 'utf8');
console.log('Reformatted paragraphs according to rules.');
