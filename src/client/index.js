var express = require('express');
var app = express();
var path = require('path');
var axios = require('axios');

app.get('/', function (req, res) {
	// so wird die Datei index.html ausgegeben
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.get('/style.css', function(req, res) {
    res.sendFile(path.join(__dirname + "/files/myStyle.css"));
});

app.get('/script.js', function(req,res) {
    res.sendFile(path.join(__dirname + "/files/myScript.js"))
});

app.get('/add', function(req, res) {
    res.send("No No No ");
});

app.get('add', function(req, res) {
    console.log(req);
    req.on('data', function(chunk) {

        //grab form data as string
        var formdata = chunk.toString();
  
        //grab A and B values
        var nr1 = eval(formdata.split("&")[0]);
        var nr2 = eval(formdata.split("&")[1])
  
        var result = calc(nr1,nr2);
  
        //fill in the result and form values
        form = result;
        // var response = function() {} 
        //respond
        // res.
        res.send(result);
    });
});

//js functions running only in Node.JS
function calc(a,b){
    return  a + b;
};

module.exports = {
    start: function () {
      const server = app.listen(3000, function () {
        const host = server.address().address
        const port = server.address().port
        console.log("Server listening at http://%s:%s", host, port)
      })
    }
};