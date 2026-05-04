const fs = require('fs');

let content = fs.readFileSync('types-data.js', 'utf8');

// Replace specific jargon phrases in compatible_types.reason
content = content.replace(/"reason":\s*"([^"]+)"/g, (match, reason) => {
    let newReason = reason
        // Solo/Group x Flow/Push x Calm/Hard patterns
        .replace(/同じソロ×Flow×Calm系。/g, '同じく、自分のペースで気の向くままに穏やかに動くタイプ。')
        .replace(/同じ高強度ソロ型。/g, '同じく、一人で高い目標に向かって追い込むタイプ。')
        .replace(/同じFlow×Hard系。/g, '同じく、直感と熱量で一気に動くタイプ。')
        .replace(/同じFlow×Turbulent×Calm系の繊細さと共感性を持つ。/g, '同じく、心の動きに敏感で穏やかなペースを好むタイプ。')
        .replace(/同じFlow×Vision×Calm系の繊細さと共感性を持つ。/g, '同じく、心の動きに敏感で穏やかなペースを好むタイプ。')
        .replace(/同じソロ×Flow×Hard系の高強度型。/g, '同じく、一人で直感的に熱中するタイプ。')
        .replace(/同じFlow×Turbulent×Hard系。/g, '同じく、感情の波を力に変えて熱中するタイプ。')
        .replace(/同じFlow×Vision×Hard系。/g, '同じく、感情の波を力に変えて熱中するタイプ。')
        .replace(/同じソロ×Push×Calm系。/g, '同じく、一人でコツコツと着実に続けるタイプ。')
        .replace(/同じPush×Assertive×Calm系。/g, '同じく、計画的に安定したペースを守るタイプ。')
        .replace(/同じPush×Moment×Calm系。/g, '同じく、計画的に安定したペースを守るタイプ。')
        .replace(/同じソロ×Assertive×Hard系。/g, '同じく、一人で明確な目標に向かって突き進むタイプ。')
        .replace(/同じソロ×Moment×Hard系。/g, '同じく、一人で明確な目標に向かって突き進むタイプ。')
        .replace(/同じPush×Assertive×Hard系。/g, '同じく、計画的に高い目標を追い求めるタイプ。')
        .replace(/同じPush×Moment×Hard系。/g, '同じく、計画的に高い目標を追い求めるタイプ。')
        .replace(/同じPush×Turbulent×Calm系。/g, '同じく、責任感が強く着実に続けるタイプ。')
        .replace(/同じPush×Vision×Calm系。/g, '同じく、責任感が強く着実に続けるタイプ。')
        .replace(/同じソロ×Push×Hard系の高強度型。/g, '同じく、一人で計画的に限界まで追い込むタイプ。')
        .replace(/同じPush×Turbulent×Hard系。/g, '同じく、強い責任感でストイックに追い込むタイプ。')
        .replace(/同じPush×Vision×Hard系。/g, '同じく、強い責任感でストイックに追い込むタイプ。')
        .replace(/（Group×Flow×Calm）/g, '（仲間と気分に合わせて穏やかに動く）')
        .replace(/同じFlow×Assertive×Hard系。/g, '同じく、直感と行動力で新しい体験を求めるタイプ。')
        .replace(/同じFlow×Moment×Hard系。/g, '同じく、直感と行動力で新しい体験を求めるタイプ。')
        .replace(/同じGroup×Flow×Hard系。/g, '同じく、仲間と一緒に熱狂的に楽しむタイプ。')
        .replace(/同じGroup×Flow×Calm系。/g, '同じく、仲間と穏やかに楽しむタイプ。')
        .replace(/同じGroup×Push×Calm系。/g, '同じく、仲間と計画的に着実に続けるタイプ。')
        .replace(/同じGroup×Push×Hard系。/g, '同じく、仲間と高い目標に向かって全力で取り組むタイプ。')
        // Other jargon mentions
        .replace(/ソロ×/g, '一人で')
        .replace(/Group×/g, '仲間と')
        .replace(/Flow×/g, '気分で')
        .replace(/Push×/g, '計画的に')
        .replace(/Calm系/g, '穏やかに続けるタイプ')
        .replace(/(?:Drive|Hard)系/g, '熱中するタイプ')
        .replace(/Turbulent×/g, '感情豊かに')
        .replace(/Vision×/g, '感情豊かに')
        .replace(/Assertive×/g, '自信を持って')
        .replace(/Moment×/g, '自信を持って');

    return `"reason": "${newReason}"`;
});

fs.writeFileSync('types-data.js', content, 'utf8');
console.log('Jargon replaced in types-data.js');
