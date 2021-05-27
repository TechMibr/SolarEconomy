import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$mensagem',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Segunda Rota'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                ).then((resposta) {
                  setState(() {
                    mensagem = resposta;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String resposta;

  somar() {
    int num1 = int.tryParse(controller1.text);
    int num2 = int.tryParse(controller2.text);
    int soma = num1 + num2;
    this.resposta = '$num1 + $num2 = $soma';
    return resposta;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Número um", labelStyle: TextStyle()),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0),
            // ignore: missing_return
            controller: controller1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Número dois", labelStyle: TextStyle()),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0),
            // ignore: missing_return
            controller: controller2,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, '$resposta');
            },
            child: Text('Voltar para a Primeira Rota'),
          ),
        ],
      ),
    );
  }
}
