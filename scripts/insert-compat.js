'use strict';

/**
 * Supabase Management API を使って相性チェックコンテンツを一括投入するスクリプト
 * 使用前に環境変数を設定（必須・トークンはリポジトリに載せない）:
 *   export SUPABASE_ACCESS_TOKEN="個人のアクセストークン（Account → Access Tokens）"
 * 任意:
 *   export SUPABASE_PROJECT_REF="プロジェクトref" （未設定時は開発用の既定 ref）
 *
 * 使用方法: SUPABASE_ACCESS_TOKEN=... node scripts/insert-compat.js
 */

const https = require('https');

const PROJECT_REF =
  typeof process.env.SUPABASE_PROJECT_REF === 'string' && process.env.SUPABASE_PROJECT_REF.trim()
    ? process.env.SUPABASE_PROJECT_REF.trim()
    : 'zstdxsqagucpceslisci';
const ACCESS_TOKEN =
  typeof process.env.SUPABASE_ACCESS_TOKEN === 'string' ? process.env.SUPABASE_ACCESS_TOKEN.trim() : '';
const PAIRS_PER_CHUNK = 5;

if (!ACCESS_TOKEN) {
  console.error('Missing SUPABASE_ACCESS_TOKEN.');
  console.error('export SUPABASE_ACCESS_TOKEN="(Supabase アカウントの PAT)"');
  process.exit(1);
}

// Supabase Management API でSQLを実行
function execSQL(query) {
  return new Promise((resolve, reject) => {
    var body = JSON.stringify({ query: query });
    var options = {
      hostname: 'api.supabase.com',
      path: `/v1/projects/${PROJECT_REF}/database/query`,
      method: 'POST',
      headers: {
        Authorization: 'Bearer ' + ACCESS_TOKEN,
        'Content-Type': 'application/json',
        'Content-Length': Buffer.byteLength(body),
      },
    };

    var req = https.request(options, function (res) {
      var data = '';
      res.on('data', function (chunk) {
        data += chunk;
      });
      res.on('end', function () {
        if (res.statusCode >= 400) {
          reject(new Error('HTTP ' + res.statusCode + ': ' + data));
        } else {
          try {
            resolve(JSON.parse(data));
          } catch (e) {
            resolve(data);
          }
        }
      });
    });
    req.on('error', reject);
    req.write(body);
    req.end();
  });
}

// SQLを pair ブロック単位に分割
function splitIntoPairBlocks(sql) {
  var parts = sql.split(/(?=INSERT INTO exercise_v2_compat_pairs)/);
  return parts.filter(function (p) {
    return p.indexOf('INSERT INTO exercise_v2_compat_pairs') !== -1;
  });
}

function chunkArray(arr, size) {
  var chunks = [];
  for (var i = 0; i < arr.length; i += size) {
    chunks.push(arr.slice(i, i + size));
  }
  return chunks;
}

function delay(ms) {
  return new Promise(function (resolve) {
    setTimeout(resolve, ms);
  });
}

async function main() {
  var fs = require('fs');
  var path = require('path');
  var sqlDir = path.join(__dirname);

  var fullSQL = fs.readFileSync(path.join(sqlDir, 'compat-insert.sql'), 'utf8');
  var pairBlocks = splitIntoPairBlocks(fullSQL);

  console.log('Total pair blocks: ' + pairBlocks.length);

  var chunks = chunkArray(pairBlocks, PAIRS_PER_CHUNK);
  console.log('Total chunks: ' + chunks.length + ' (' + PAIRS_PER_CHUNK + ' pairs each)');
  console.log('Starting insertion...\n');

  var successCount = 0;
  var errorCount = 0;

  for (var i = 0; i < chunks.length; i += 1) {
    var chunkSQL = chunks[i].join('');
    var pairNames = chunks[i]
      .map(function (b) {
        var m = b.match(/VALUES \('([A-Z]{4})', '([A-Z]{4})'/);
        return m ? m[1] + '×' + m[2] : '?';
      })
      .join(', ');

    process.stdout.write('Chunk ' + (i + 1) + '/' + chunks.length + ' [' + pairNames + ']: ');

    try {
      await execSQL(chunkSQL);
      successCount += chunks[i].length;
      console.log('✓ (' + chunks[i].length + ' pairs)');
    } catch (err) {
      errorCount += chunks[i].length;
      console.log('✗ ERROR: ' + String(err.message).substring(0, 100));
    }

    if (i < chunks.length - 1) {
      await delay(300);
    }
  }

  console.log('\n========================================');
  console.log('Done! Success: ' + successCount + ' pairs, Errors: ' + errorCount + ' pairs');

  var result = await execSQL(
    'SELECT COUNT(*) as pairs FROM exercise_v2_compat_pairs; ' +
      'SELECT COUNT(*) as activities FROM exercise_v2_compat_activities'
  );
  console.log('DB check:', JSON.stringify(result));
}

main().catch(function (err) {
  console.error('Fatal error:', err);
  process.exit(1);
});
