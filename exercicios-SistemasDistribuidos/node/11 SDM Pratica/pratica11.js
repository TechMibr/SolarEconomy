// at 11

const express = require('express');

const app = express();
const port = 3000;
const hotsname = '127.0.0.1';

app.listen(port, hotsname, () => {
    console.log(`Servidor iniciado com sucesso. Host: http://${hotsname}:${port}`);
});

app.get('/produto', (req, res) => {
    const v1 = parseFloat(req.query.prd1);
    const v2 = parseFloat(req.query.prd2);
    const v3 = parseFloat(req.query.prd3);
    const valores = [v1, v2, v3];

    // ordenando os valores em ordem decrescente.
    valores.sort((a, b) => b - a);

    const precoMaximo = valores[0];
    const precoMinimo = valores[valores.length - 1];
    const soma = valores.reduce((soma, valor) => {
        return soma += valor;
    });
    const precoMedio = soma / valores.length;

    res.statusCode = 200;

    let pagina = `
        Maior preço: R$ : ${precoMaximo}
        Meno preço: R$ : ${precoMinimo}
        Preço médio: R$ : ${precoMedio.toFixed(2).replace('.', ',')}
    `;

    res.send(pagina)
});

app.get('/triangulo', (req, res) => {
    const x = parseInt(req.query.lado1);
    const y = parseInt(req.query.lado2);
    const z = parseInt(req.query.lado3);

    // validando cada lado do triangulo

    let v1;
    let v2;
    let v3;
    let mensagem;

    if ((x + y) > z) {
        v1 = true
    }
    else {
        v1 = false
    }

    if ((x + z) > y) {
        v2 = true
    }
    else {
        v2 = false
    }

    if ((y + z) > x) {
        v3 = true
    }
    else {
        v3 = false
    }
    
    if (v1 && v2 && v3){
        mensagem = 'Podem ser comprimento de um triângulo'
    }
    else {
        mensagem = 'Não podem ser comprimento de um triângulo'
    }

    res.statusCode = 200;

    res.send(mensagem);
});