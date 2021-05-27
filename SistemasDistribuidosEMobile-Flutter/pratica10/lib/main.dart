import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  somar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int soma = num01 + num02;
    this.resp = '$num01 + $num02 = $soma';
    return this.resp;
  }

  subtrair() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int sub = num01 - num02;
    this.resp = '$num01 - $num02 = $sub';
    return this.resp;
  }

  multiplicar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    int multi = num01 * num02;
    this.resp = '$num01 * $num02 = $multi';
    return this.resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text); //te
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 / num02;
    this.resp = '$num01 / $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  imc() {
    double num01 = double.parse(this.num01Controller.text); //te
    double num02 = double.parse(this.num02Controller.text);
    double imccal = num01 / (num02 * num02);
    dynamic resposta;
    if (imccal < 16) {
      resposta = "Magreza grave";
    } else if (imccal < 17) {
      resposta = "Magreza moderada";
    } else if (imccal < 18.5) {
      resposta = "Magreza leve";
    } else if (imccal < 25) {
      resposta = "Saudável";
    } else if (imccal < 30) {
      resposta = "Sobrepeso";
    } else if (imccal < 35) {
      resposta = "Obesidade Grau I";
    } else if (imccal < 40) {
      resposta = "Obesidade Grau II (severa)";
    } else if (imccal > 40) {
      resposta = "Obesidade Grau II (mórbida)";
    }
    this.resp = resposta;
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(somar());
                  setState(somar);
                },
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(subtrair());
                  setState(subtrair);
                },
                child: Text(
                  '-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  print(multiplicar());
                  setState(multiplicar);
                },
                child: Text(
                  'x',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(dividir());
                  setState(dividir);
                },
                child: Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(imc());
                  setState(imc);
                },
                child: Text(
                  'IMC',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
