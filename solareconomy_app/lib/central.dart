import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Central extends StatelessWidget {
  const Central({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 50,
        backgroundColor: Colors.indigo[900],
        title: Row(
          children: [
            Image.asset(
              'images/logo.png',
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'SOLAR ',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'ECONOMY',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text(
                    'BOLETIM INFORMATIVO',
                    style: TextStyle(
                      color: Colors.amber[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
                    child: Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 5), // changes position of shadow
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('images/casa1.png'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 50,
                          child: Text(
                            'SAIBA MAIS SOBRE ENERGIA RENOVÁVEL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'COMEÇAR',
                      style: TextStyle(
                        color: Colors.amber[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 60, width: 320),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: const Text(
                                'Calculadora de Economia',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 60, width: 320),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: const Text(
                                'Comparador',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 60, width: 320),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: const Text(
                                'Sobre Energia Renovável',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 60, width: 320),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: const Text(
                                'Empresas Parceiras',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
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
