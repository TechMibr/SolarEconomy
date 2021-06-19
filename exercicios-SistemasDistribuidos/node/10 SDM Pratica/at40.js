// 40

const express = require ('express');
const app = express ();
const port = 3000;
const hostname = '127.0.0.1';


app.listen(port, hostname, function() {
    console.log(`Servidor iniciado com sucesso. Host: ${hostname}. Port: ${port}`);
});

//URL: http://localhost:3000/1
app.get('/:codigo', function(req, res) {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html; charset=utf-8');

    let codigo = parseInt(req.params.codigo)
    let produto
    let preco
    
    if (codigo == 1){
        produto = "Sapato"   
        preco = "R$ 99,99"   
    }

    else if (codigo == 2){
        produto = "Bolsa"   
        preco = "R$ 103,89"
    }

    else if (codigo == 3){
        produto = "Camisa"   
        preco = "R$ 49,98"
    }

    else if (codigo == 4){
        produto = "Calça"   
        preco = "R$ 89,72"
    }
    else if (codigo == 5){
        produto = "Blusa"   
        preco = "R$ 97,35"
    }
    else{
        produto = "Código não localizado"
        preco = "0"
    }

    let pagina = `
    <html>
        <head>
            <title>Preço dos Produtos</title>
        </head>
        <body>
            <h1>Preço dos Produtos</h1>
            <div> Produto: ${produto}</div>
            <div> Preço: ${preco}</div>
        </body>
    </html>`;
    
    res.send(pagina)
})