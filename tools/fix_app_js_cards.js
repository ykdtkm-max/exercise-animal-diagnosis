const fs = require('fs');
const path = require('path');

const appJsPath = path.join(__dirname, 'fittness_type-main', 'app.js');
let content = fs.readFileSync(appJsPath, 'utf8');

const oldMagicHtml = `      var magicHtml = '';
      if (magicItems && magicItems.length > 0) {
        magicHtml = '<div class="desc-card"><ul style="padding-left: 1.2em; margin: 0; list-style-type: disc;">';
        magicItems.forEach(function(item) {
          magicHtml += '<li style="margin-bottom: 0.5em;">' + escapeHtml(replaceTypeCodes(item)) + '</li>';
        });
        magicHtml += '</ul></div>';
      }`;

const newMagicHtml = `      var magicHtml = '';
      if (magicItems && magicItems.length > 0) {
        magicHtml = '<div style="display: flex; flex-direction: column; gap: 12px;">';
        magicItems.forEach(function(item) {
          var text = item.replace(/^[-*・]\\s*/, '').replace(/^.*?[：:]\\s*/, '');
          magicHtml += '<div class="desc-card" style="margin: 0;"><p>' + escapeHtml(replaceTypeCodes(text)) + '</p></div>';
        });
        magicHtml += '</div>';
      }`;

content = content.replace(oldMagicHtml, newMagicHtml);
fs.writeFileSync(appJsPath, content, 'utf8');
console.log('Updated app.js magic words layout');
