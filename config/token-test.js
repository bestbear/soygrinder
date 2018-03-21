var AWS = require('aws-sdk');
var jsTokenizer = require("js-tokenizer");

var fs = require('fs');
/*var tok = require('./') */
var src = fs.readFileSync(process.argv[2], 'utf-8');
var kms = new AWS.KMS();

kms.cancelKeyDeletion(params, function (err, data) {
  if (err) console.log(err, err.stack); // an error occurred
  else     console.log(data);           // successful response
});

console.log(
  tok(src).map(function (e) {
    return [tok.type(e), e]
  })
)
