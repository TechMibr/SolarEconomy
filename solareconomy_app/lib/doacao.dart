import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Doe extends StatelessWidget {
  const Doe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'DOAÇÕES',
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
              padding: EdgeInsets.fromLTRB(10, 180, 10, 10),
              child: Text(
                'Gostou do nosso aplicativo? Quer ajudar?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFFD9985F),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Text(
                'Você pode ajudar fazendo uma doação, acesse o link pelo botão abaixo e contribua com o desenvolvimento do nosso aplicativo!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(

                padding: EdgeInsets.fromLTRB(100, 10, 100, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      launch('https://www.paypal.com/br/home');
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'DOE AQUI',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
