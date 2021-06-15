import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Saibamais5 extends StatelessWidget {
  const Saibamais5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'ENERGIA RENOVÁVEL É PERIGOSA?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/saibamais5.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Text(
                      'USAR ENERGIA RENOVÁVEL PODE SER PERIGOSO?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFD9985F),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'De forma simples o sistema funciona de forma bem ordenada e concisa, o risco de incidentes é diminuído com a contratação de bons profissionais e a utilização de materiais modernos, mas mesmo sendo instalado com os materiais tradicionais não há risco para a saúde dos moradores.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF012257),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 3),
              child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 50, width: 320),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.share),
                    label: Text("COMPARTILHAR"),
                    onPressed: () {
                      launch('https://github.com/TechMibr/SolarEconomy');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFF012257),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
