var express = require('express'),
    http = require('http'), 
    request = require('request'),
    bodyParser = require('body-parser'),
	morgan = require('morgan'),
    app = express(), 
	path = require("path"),
	https = require('https'), 
	fs = require('fs'),  
	base64url = require('base64-url'), 
	nJwt = require('njwt'),  
	apiVersion = 'v38.0',
	domainName='localhost:8081',
	jwt_consumer_key = '3MVG9AJuBE3rTYDjblRTfQeshc.WxoA9r2LUmZctOIzydEhTQaRlrWPRKKtmo0l5k_BYnYXaYdZndJM2fnvFH', 
	jwt_aud = 'https://test.salesforce.com', 
	callbackURL='https://localhost:8081/oauthcallback.html';

   
app.use(express.static(__dirname + '/client')); 
 
app.use(morgan('dev'));
app.use(bodyParser.json());  

app.set('port', process.env.PORT || 8080);

app.all('/proxy',  function(req, res) {     
    var url = req.header('SalesforceProxy-Endpoint');  
    request({ url: url, method: req.method, json: req.body, 
                    headers: {'Authorization': req.header('X-Authorization'), 'Content-Type' : 'application/json'}, body:req.body }).pipe(res); 
});

app.get('/jwt', function (req,res){  
	var isSandbox = req.query.isSandbox;
	var sfdcURL = 'https://login.salesforce.com/services/oauth2/token' ;

	if(isSandbox == 'true'){
		sfdcURL = 'https://test.salesforce.com/services/oauth2/token' ;
	}
	console.log("########" + sfdcURL);
	var sfdcUserName = req.query.jwtUserName;
	var token = getJWTSignedToken_nJWTLib(sfdcUserName); 
	  
	var paramBody = 'grant_type='+base64url.escape('urn:ietf:params:oauth:grant-type:jwt-bearer')+'&assertion='+token ;	
	var req_sfdcOpts = { 	url : sfdcURL,  
							method:'POST', 
							headers: { 'Content-Type' : 'application/x-www-form-urlencoded'} ,
							body:paramBody 
						};
				
	request(req_sfdcOpts, 
		function(err, remoteResponse, remoteBody) {
			if (err) { 
				return res.status(500).end('Error'); 
			}
			console.log(remoteBody) ;
			var sfdcResponse = JSON.parse(remoteBody); 
			
			//success
			if(sfdcResponse.access_token){				 
				res.writeHead(302, {
				  'Location': 'Main' ,
				  'Set-Cookie': ['AccToken='+sfdcResponse.access_token,'APIVer='+apiVersion,'InstURL='+sfdcResponse.instance_url,'idURL='+sfdcResponse.id]
				});
			}else{
				res.write('Some error occurred. Make sure connected app is approved previously. ');
				res.write('Salesforce Response : ');
				res.write( remoteBody ); 
			} 
			res.end();

		} 
	); 
} );


/**
*	Authenticate first time for JWT using User Agent flow
*/
app.get('/jwtF', function (req,res){  
	var isSandbox = req.query.isSandbox;
	var sfdcURL = 'https://login.salesforce.com/services/oauth2/authorize' ;
	if(isSandbox == 'true'){
		sfdcURL = 'https://test.salesforce.com/services/oauth2/authorize' ;
	}
	
	 request({ 	url : sfdcURL+'?client_id='+jwt_consumer_key+'&redirect_uri='+callbackURL+'&response_type=token',  
				method:'GET' 
			}).pipe(res); 
	 
} );
 

function getJWTSignedToken_nJWTLib(sfdcUserName){ 
	var claims = {
	  iss: jwt_consumer_key,   
	  sub: sfdcUserName,     
	  aud: jwt_aud,
	  exp : (Math.floor(Date.now() / 1000) + (60*3))
	}

	console.log(claims);

	return encryptUsingPrivateKey_nJWTLib(claims);
}

function encryptUsingPrivateKey_nJWTLib (claims) {
	var absolutePath = path.resolve("PrivateKey.key"); 	
    var cert = fs.readFileSync(absolutePath );	
	var jwt_token = nJwt.create(claims,cert,'RS256');	
	console.log(jwt_token);	
	var jwt_token_b64 = jwt_token.compact();
	console.log(jwt_token_b64);
 
	return jwt_token_b64;    
    //return base64url.encode(token);   
};
 
 
app.get('/' ,  function(req,res) {
    res.sendfile('views/index.html');
} ); 

app.get('/index*' ,  function(req,res) {
    res.sendfile('views/index.html');
} );  
 
app.get('/oauthcallback.html' ,  function(req,res) {
    res.sendfile('views/oauthcallback.html');
} ); 

app.get('/Main*' ,   function(req,res) {
    res.sendfile('views/Main.html');
} );
  
app.listen(app.get('port'), function () {
    console.log('Express server listening on port ' + app.get('port'));
});

var options = {
  key: fs.readFileSync('./PrivateKey.key', 'utf8'),
  cert: fs.readFileSync('./CSR.crt', 'utf8')
};

https.createServer(options, app).listen(8081);
console.log("Server listening for HTTPS connections on port ", 8081);