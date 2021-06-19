// 37

const express = require('express');
const path = require('path');
const app = express();
const port = 3000;
const hostname = '127.0.0.1';
const dir = path.join(__dirname, 'css');

app.use(express.static(dir));

app.listen(port, hostname, function () {
    console.log(`Servidor iniciado com sucesso. Host: ${hostname}. Port: ${port}`);
});

// URL: http://localhost/
app.get('/', function (req, res) {
    res.send(dir);
});

//URL: http://localhost:3000/converter/10
app.get('/converter/:temperatura', function (req, res) {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html; charset=utf-8');

    let celsius = parseFloat(req.params.temperatura);
    let fahrenheit = (celsius * 1.8) + 32.

    let pagina = `
    <html>
        <head>
            <title>Conversor de Celsius em Fahrenheit</title>
        </head>
        <body>
            <h1>Conversor de Celsius em Fahrenheit</h1>
            <div> Celsius = ${celsius}</div>
            <div>Fahrenheit = ${fahrenheit}</div>
        </body>
    </html>`;

    res.send(pagina);
});