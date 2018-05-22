var fs = require('fs');
var pem2jwk = require('pem-jwk').pem2jwk;
//var jwk2pem = require('pem-jwk').jwk2pem

var keyFile = './public-key.pem';
var pemKey = fs.readFileSync(keyFile, 'ascii');
console.log("Loaded " + keyFile);
//console.log(pemKey);
var jwk = pem2jwk(pemKey);
console.log(jwk);