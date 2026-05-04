const fs = require('fs');

let content = fs.readFileSync('types-data.js', 'utf8');

// Function to add newlines to a block of text
function addNewlines(text) {
  if (!text) return text;
  
  // Split by sentence endings (。 or ！)
  const sentences = text.split(/(?<=[。！])\s*/).filter(s => s.trim().length > 0);
  
  let result = '';
  for (let i = 0; i < sentences.length; i++) {
    result += sentences[i];
    // Add a newline every 2 sentences, except for the last one
    if ((i + 1) % 2 === 0 && i < sentences.length - 1) {
      result += '\\n\\n';
    }
  }
  return result;
}

// Replace concept and continuation_text blocks
content = content.replace(/"concept":\s*"([^"]+)"/g, (match, p1) => {
  // Only process if it doesn't already have newlines
  if (!p1.includes('\\n')) {
    const textWithNewlines = addNewlines(p1);
    return `"concept": "${textWithNewlines}"`;
  }
  return match;
});

content = content.replace(/"continuation_text":\s*"([^"]+)"/g, (match, p1) => {
  if (!p1.includes('\\n')) {
    const textWithNewlines = addNewlines(p1);
    return `"continuation_text": "${textWithNewlines}"`;
  }
  return match;
});

fs.writeFileSync('types-data.js', content, 'utf8');
console.log('Added newlines to concept and continuation_text');
