var express = require('express');
var app = express();
var path = require('path');
var bodyParser = require('body-parser');
const mathFunctions = require('./files/myMathFunctions');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


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

app.post('/add', function(req, res) {
    let reqBody = req.body;
    res.send("" + mathFunctions.sum(req.body.number1, req.body.number2));
});

module.exports = {
    start: function () {
      const server = app.listen(3000, function () {
        const host = server.address().address
        const port = server.address().port
        console.log("Server listening at http://localhost:%s", host, port)
      })
    }
};