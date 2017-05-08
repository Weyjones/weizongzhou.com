var apiVersion = 'v40.0',
    clientId = '3MVG9AJuBE3rTYDjblRTfQeshc.WxoA9r2LUmZctOIzydEhTQaRlrWPRKKtmo0l5k_BYnYXaYdZndJM2fnvFH',
    loginUrl = 'https://test.salesforce.com/',
    redirectURI = "http://weizongzhou.com/pihc/getdata/oauthcallback.html",
    proxyURL = 'https://cs61.salesforce.com/services/apexrest/engagement',
    client = new forcetk.Client(clientId, loginUrl, proxyURL);

function login() {
    var url = loginUrl + 'services/oauth2/authorize?display=popup&response_type=token' +
        '&client_id=' + encodeURIComponent(clientId) +
        '&redirect_uri=' + encodeURIComponent(redirectURI);
    window.open(url, 'login', 700, 600);
}

function oauthCallback(response) {
    if (response && response.access_token) {
        client.setSessionToken(response.access_token, apiVersion, response.instance_url);
    } else {
        alert("AuthenticationError: No Token");
    }
}

function executeQuery() {
    if (!client.sessionId) {
        alert('You are not authenticated. Please login first.');
        return false;
    }
    client.query($('#query').val(),
        function (data) {
            $('#result').html(JSON.stringify(data, undefined, 3));
        },
        function (error) {
            alert("Error: " + JSON.stringify(error));
        });
    return false;
}

function executeApex() {
    if (!client.sessionId) {
        alert('You are not authenticated. Please login first.');
        return false;
    }
    client.apexrest('/engagement',
        function (data) {
            $('#result').html(JSON.stringify(data, undefined, 3));
        },
        function (error) {
            alert("Error: " + JSON.stringify(error));
        });
    return false;
}

$('#btn-login').click(login);
$('#btn-exec').click(executeQuery);
$('#btn2-exec').click(executeApex);
