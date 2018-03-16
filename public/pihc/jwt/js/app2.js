var request = require('request');  
var jwt = require('jsonwebtoken');

var key = require('fs').readFileSync('./PrivateKey.key', 'utf8');

var options = {  
    issuer: '3MVG9AJuBE3rTYDjblRTfQeshc.WxoA9r2LUmZctOIzydEhTQaRlrWPRKKtmo0l5k_BYnYXaYdZndJM2fnvFH',
    audience: 'https://test.salesforce.com',
    subject: 'michelle.morford@providence.org',
    expiresIn: 3,
    algorithm:'RS256'
}
var token = jwt.sign({ prn: '[Username]'}, key, options)

var post = {  
    uri: 'https://test.salesforce.com/services/oauth2/token',
    form: {
       'grant_type': 'urn:ietf:params:oauth:grant-type:jwt-bearer',
       'assertion':  token
    },
    method: 'post'
}
console.log('<<<<Start>>>>');  
console.log(post);

console.log('<<<<Stop>>>>');

request(post, function(err, res, body) {  
    console.log(err);
    console.log(res.statusCode);
    console.log(body);
});