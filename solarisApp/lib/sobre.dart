import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'SOBRE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.only(top: 50, bottom: 30),
                child: Image.asset(
                  'images/logotopc.png',
                  width: 80,
                  height: 80,
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Text(
                'Trabalho prático da disciplina de Usabilidade, desenvolvimento web, mobile e jogos do curso de Sistemas de Informação no Centro Universitário Una Barreiro em Belo Horizonte.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Visite nosso projeto:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('https://github.com/TechMibr/SolarEconomy');
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('images/githubicon.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/gato4.jpg'),
                            radius: 40,
                          ),
                          title: Text('Tiago Dantas'),
                          subtitle: Text('Desenvolvedor'),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/gato2.jpg'),
                            radius: 40,
                          ),
                          title: Text('Matheus Vaz'),
                          subtitle: Text('Desenvolvedor'),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/gato3.jpg'),
                            radius: 40,
                          ),
                          title: Text('Hygor Souza Cravo'),
                          subtitle: Text('Redator'),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/gato1.jpg'),
                            radius: 40,
                          ),
                          title: Text('Pedro Henrique Anjos	'),
                          subtitle: Text('Design'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 240, bottom: 40),
            child: Container(
                height: 90,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('images/gato.jpg')))),)
          ],
        ),
      ),
    );
  }
}
