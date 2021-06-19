import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resultado extends StatelessWidget {
  Resultado({Key key, this.valorConta, this.tarifaBandeira}) : super(key: key);

  final painel = 265;
  final precoPainel = 849;
  final custoInstalacao = 4395;
  final valorConta;
  final tarifaBandeira;

  final acrescimos = {
    0.61805: 0,
    0.63148: 1.34, //a cada 100 kWh
    0.65974: 4.16, //a cada 100 kWh
    0.68048: 6.24, //a cada 100 kWh
  };

  @override
  Widget build(BuildContext context) {
    final consumoKwh = (valorConta / tarifaBandeira).floor();
    final tarifaConstante =
        (consumoKwh / 100).floor() * acrescimos[tarifaBandeira];
    final qtdPainel = (consumoKwh / painel).ceil();
    final valorInstalacao = custoInstalacao + (qtdPainel * precoPainel);
    final roi = (valorInstalacao / valorConta).ceil();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Image.asset(
          'images/logotopb.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 60, bottom: 60),
              child: Text(
                'RESULTADO',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0XFFD9985F),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Quantidade de paineis:',
                            style: TextStyle(
                              color: Color(0XFF012257),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              qtdPainel.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Valor total da instalação:',
                            style: TextStyle(
                              color: Color(0XFF012257),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "R\$ $valorInstalacao",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Retorno em (meses):',
                            style: TextStyle(
                              color: Color(0XFF012257),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              roi.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 60, bottom: 60),
              child: Text(
                'CONCLUSÃO',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0XFFD9985F),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Em $roi meses pagando o mesmo valor da sua conta de luz como parcelas, você pagará o investimento total e a partir disso, sua conta de luz virá zerada',
                style: TextStyle(
                  color: Color(0XFF012257),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 3),
              child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(height: 50, width: 100),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.home),
                    label: Text("Voltar"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/central');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0XFF012257),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
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
