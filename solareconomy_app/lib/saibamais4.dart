import 'package:flutter/material.dart';

class Saibamais4 extends StatelessWidget {
  const Saibamais4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFFD9985F)),
        toolbarHeight: 80,
        backgroundColor: Color(0XFF012257),
        title: Text(
          'PORQUE DEVO USAR?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/casa2.png',
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
                      'PORQUE DEVO INSTALAR UMA FONTE RENOVÁVEL DE ENERGIA NA MINHA CASA?',
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
                      'De forma resumida podemos trazer os benefícios são eles: agregar valor à sua qualidade de vida e a sua residência ou propriedade, valorização monetária no valor do imóvel ou propriedade, independência de rede elétrica, capacidade de operar e vender energia para concessionarias elétricas, tempo de vida duradouro da usina.',
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

          ],
        ),
      ),
    );
  }
}
