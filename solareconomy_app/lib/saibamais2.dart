import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Saibamais2 extends StatelessWidget {
  const Saibamais2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'O QUE É?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/saibamais2.jpg',
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
                      'O QUE É ENERGIA RENOVÁVEL OU ENERGIA LIMPA?',
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
                      'As energias renováveis são energias resultantes de recursos renováveis, ou seja, são inesgotáveis, como a energia hídrica, maremotriz, geotérmica e as novas energias emergentes, como a energia solar, eólica e de biomassa.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF012257),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 120, 10, 3),
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
          ],
        ),
      ),
    );
  }
}
