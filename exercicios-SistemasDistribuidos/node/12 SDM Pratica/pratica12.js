// AT 12

const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;
const hotsname = '127.0.0.1';

app.use(express.json());

app.use(express.urlencoded({
    extended: true
}));

app.listen(port, hotsname, () => {
    console.log(`Servidor iniciado com sucesso.  http://${hotsname}:${port}`);
});


let listaAlunos = [];

app.use('/cadastrar', (req, res) => {
    const novoUsuario = {
        'nome': req.body.nome,
        'nota': parseFloat(req.body.nota)
    };
    console.log('Novo usuário:\n' + JSON.stringify(novoUsuario));

    listaAlunos.push(novoUsuario);

    res.statusCode = 200;
    res.setHeader('Content-type', 'application/json');
    res.send(listaAlunos);
});

app.use('/segundograu', (req, res) => {
    const a = parseFloat(req.body.a);
    const b = parseFloat(req.body.b);
    const c = parseFloat(req.body.c);


    const delta = Math.pow(b, 2) - 4 * a * c;
    const r1 = (-b + Math.sqrt(delta)) / (2 * a);
    const r2 = (-b - Math.sqrt(delta)) / (2 * a);

    if (a === 0 && b === 0)
        if (c != 0)
            res.send({
                msg: 'Informações incorretas!'
            });
        else
            res.send({
                msg: 'Igualdade confirmada: 0=0'
            });

    if (a === 0 && b != 0)
        res.send({
            msg: `A Equação de primeiro grau!`
        });

    if (delta < 0)
        res.send({
            msg: 'A Equação não possui raízes reais!'
        });

    if (delta === 0)
        res.send({
            msg: `A Equação possui duas raízes reais iguais! 1° raiz = ${r1.toFixed(2)}, 2° raiz = ${r2.toFixed(2)}`
        });

    if (delta > 0)
        res.send({
            msg: `A Equação possui duas raízes reais diferentes! 1° raiz = ${r1.toFixed(2)}, 2° raiz = ${r2.toFixed(2)}`
        });
});