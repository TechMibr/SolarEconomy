import 'package:flutter/material.dart';

class Profissionais extends StatelessWidget {
  const Profissionais({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'PROFISSIONAIS PARCEIROS',
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
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,),
                          child: Text('DIFICULDADES?',
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),),
                        ),
                        Row(
                          children: [
                            Container(
                            height: 150,
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                child: Image.asset(
                                  'images/profissional.png',
                                  width: 120,
                                  height: 120,
                                )),
                            Expanded(child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Text(
                                'Se precisar de ajuda na instalação do seu painel solar, consulte nossa lista de profissionais capacitados e prontos para te ajudar :',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),)
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Divider(),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa1.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Ricardo Bento Nunes'),
                          subtitle: Text('Itabuna / BA                                        (73) 3548-9812'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa2.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Bernardo Ruan de Paula'),
                          subtitle: Text('Camboriú / SC                                        (47) 99731-6377'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa3.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Lucas Lucca Drumond'),
                          subtitle: Text('Parnaíba / PI                                        (73) 99721-7905'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa1.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Ricardo Bento Nunes'),
                          subtitle: Text('Itabuna / BA                                        (73) 3548-9812'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa2.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Bernardo Ruan de Paula'),
                          subtitle: Text('Camboriú / SC                                        (47) 99731-6377'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 80,
                              minHeight: 120,
                              maxWidth: 100,
                              maxHeight: 140,
                            ),
                            child: Image.asset('images/pessoa3.jpg', fit: BoxFit.contain),
                          ),
                          title: Text('Lucas Lucca Drumond'),
                          subtitle: Text('Parnaíba / PI                                        (73) 99721-7905'),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,),
                          child: Text('Quer entrar na lista?',
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40, bottom: 20,),
                              child: Icon(Icons.build,
                                size: 40,
                                color: Colors.white,),
                            ),
                            Expanded(child: Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 20),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text:
                                  'Entre em contato pelo e-mail',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: ' souprofissional@solaris.tk',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            ),)
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(5),
                    ),
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
