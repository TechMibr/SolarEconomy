import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:solareconomy_app/central.dart';

class Slide extends StatelessWidget {
  final Widget slideopcao;

  const Slide({Key key, this.slideopcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return slideopcao;
  }
}

class Slide1 extends StatelessWidget {
  const Slide1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Image.asset(
              'images/logofinal.png',
              color: Color(0XFFD9985F),
              width: 230,
              height: 230,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: Text(
              "SEJA BEM-VINDO(A)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF012257),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Slide2 extends StatelessWidget {
  const Slide2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'images/logotopc.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "O QUE É ENERGIA RENOVÁVEL?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFFD9985F),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Image.asset(
              'images/energiarenovavel.png',
              width: 210,
              height: 210,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'Energia renovável é aquela que vem de recursos naturais que são naturalmente reabastecidos, como ',
                style: TextStyle(
                  color: Color(0XFF012257),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'sol, vento, chuva, marés e energia geotérmica.',
                      style: TextStyle(
                        color: Color(0XFF012257),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),

        ],

      ),
    );
  }
}

class Slide3 extends StatelessWidget {
  const Slide3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'images/logotopc.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "ECONOMIA E SUSTENTABILIDADE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFFD9985F),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Image.asset(
              'images/sacodinheiro.png',
              width: 210,
              height: 210,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'Substituir a energia elétrica convencional pela energia solar, geralmente representa uma redução na conta que varia de',
                style: TextStyle(
                  color: Color(0XFF012257),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' 50% ',
                      style: TextStyle(
                        color: Color(0XFFD9985F),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: 'a',
                      style: TextStyle(
                        color: Color(0XFF012257),
                        fontSize: 15,
                      )),
                  TextSpan(
                      text: ' 95%.',
                      style: TextStyle(
                        color: Color(0XFFD9985F),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text:
                          ' Tudo isso ajudando o planeta com uma energia limpa!',
                      style: TextStyle(
                        color: Color(0XFF012257),
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Slide4 extends StatelessWidget {
  const Slide4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'images/logotopc.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "NÓS AJUDAMOS VOCÊ!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFFD9985F),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 20),
            child: Image.asset(
              'images/pessoastrabalhando.png',
              width: 210,
              height: 210,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'Nosso aplicativo ajuda você a calcular os custos de implantação, economia gerada pelos painéis solares e encontrar profissionais especializados.',
                style: TextStyle(
                  color: Color(0XFF012257),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: '',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0XFF012257)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/central');
            },
            child: const Text('COMEÇAR'),
          ),
        ],
      ),
    );
  }
}
