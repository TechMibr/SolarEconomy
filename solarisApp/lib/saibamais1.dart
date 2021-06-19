import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Saibamais1 extends StatelessWidget {
  const Saibamais1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'ENERGIA RENOVÁVEL',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'images/casa1.png',
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
                          'COMO A ENERGIA RENOVÁVEL PODE TE AJUDAR?',
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
                          'Todos sabemos que energia limpa tem um retorno financeiro bem generoso, pelo simples fato de não pagar conta de luz, mas será que é somente esse benefício? Pelo Solaris lhe informo que existem mais benefícios dos quais ainda não pensou..',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF012257),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'O primeiro benefício é o simples fato de não precisar mais pagar a conta de energia elétrica, já que você mesmo se tornou autossuficiente pela plataforma solar, consequentemente seu imóvel ficará mais valorizado, ter um sistema de energia solar instalado na sua casa aumenta o valor de venda do imóvel em até 30%. Título de casa sustentável, alta durabilidade dos sistemas solares, e rentabilidade, produzir e distribuir energia tem o retorno financeiro superior ao de muitas aplicações do mercado, já pensou na opção de vender energia?.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF012257),
                          ),
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

              ],
            ),
          ),
    );
  }
}
