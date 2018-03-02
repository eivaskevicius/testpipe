function changeAnswer() {
    
    const url = '/add';

    var request = new Request(url, {
        method: 'POST', 
        body: JSON.stringify({
            number1: new Number(document.getElementById('number1').value),
            number2: new Number(document.getElementById('number2').value)
        }),
        headers: { "Content-Type": "application/json" }
    });

    fetch(request).then(function(response) {
        response.text().then(function(text) {
            document.getElementById("result").innerHTML = text;
        })
    })
}