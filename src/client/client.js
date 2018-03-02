var request = new XMLHttpRequest();
request.open("GET", "daten.txt");
request.setRequestHeader("X-Test", "test1");
request.setRequestHeader("X-Test", "test2");

request.addEventListener('load', function(event) {
    if (request.status >= 200 && request.status < 300) {
       console.log(request.responseText);
    } else {
       console.warn(request.statusText, request.responseText);
    }
});

 request.send();