import 'package:flutter/material.dart';
import 'package:solareconomy_app/saibamais1.dart';

class CentroSaibaMais extends StatelessWidget {
  const CentroSaibaMais({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'SAIBA MAIS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'COMO A ENERGIA RENOVÁVEL PODE TE AJUDAR?',
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
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'OQUE É ENERGIA RENOVÁVEL E ENERGIA LIMPA?',
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
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'TIPOS DE ENERGIA LIMPA',
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
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'TESTEEEEEEEEEEEEEEEEEEEE',
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
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 60, width: 320),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0XFF012257)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Saibamais1()));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: const Text(
                          'TESTE TESTE',
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

