import 'package:flutter/material.dart';

class CalculadoraEconomia extends StatefulWidget {
  const CalculadoraEconomia({Key key}) : super(key: key);

  @override
  _CalculadoraEconomiaState createState() => _CalculadoraEconomiaState();
}

enum SingingCharacter { Sim, Nao }

class _CalculadoraEconomiaState extends State<CalculadoraEconomia> {
  final formKey = GlobalKey<FormState>();
  bool pontoLuz = true;
  SingingCharacter _character = SingingCharacter.Sim;
  String selectedLetter;

  static const List<String> _estadosLista = <String>[
    'ACRE (AC)',
    'ALAGOAS (AL)',
    'AMAPÁ (AP)',
    'AMAZONAS (AM)',
    'BAHIA (BA)',
    'CEARÁ (CE)',
    'DISTRITO FEDERAL (DF)',
    'ESPÍRITO SANTO (ES)',
    'GOIÁS (GO)',
    'MARANHÃO (MA)',
    'MATO GROSSO (MT)',
    'MATO GROSSO DO SUL (MS)',
    'MINAS GERAIS (MG)',
    'PARÁ (PA)',
    'PARAÍBA (PB)',
    'PARANÁ (PR)',
    'PERNAMBUCO (PE)',
    'PIAUÍ (PI)',
    'RIO DE JANEIRO (RJ)',
    'RIO GRANDE DO NORTE (RN)',
    'RIO GRANDE DO SUL (RS)',
    'RONDÔNIA (RO)',
    'RORAIMA (RR)',
    'SANTA CATARINA (SC)',
    'SÃO PAULO (SP)',
    'SERGIPE (SE)',
    'TOCANTINS (TO)',
  ];

  final letters = ['ACRE (AC)',
    'ALAGOAS (AL)',
    'AMAPÁ (AP)',
    'AMAZONAS (AM)',
    'BAHIA (BA)',
    'CEARÁ (CE)',
    'DISTRITO FEDERAL (DF)',
    'ESPÍRITO SANTO (ES)',
    'GOIÁS (GO)',
    'MARANHÃO (MA)',
    'MATO GROSSO (MT)',
    'MATO GROSSO DO SUL (MS)',
    'MINAS GERAIS (MG)',
    'PARÁ (PA)',
    'PARAÍBA (PB)',
    'PARANÁ (PR)',
    'PERNAMBUCO (PE)',
    'PIAUÍ (PI)',
    'RIO DE JANEIRO (RJ)',
    'RIO GRANDE DO NORTE (RN)',
    'RIO GRANDE DO SUL (RS)',
    'RONDÔNIA (RO)',
    'RORAIMA (RR)',
    'SANTA CATARINA (SC)',
    'SÃO PAULO (SP)',
    'SERGIPE (SE)',
    'TOCANTINS (TO)'];

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: Text(
                'CALCULADORA DE ECONOMIA',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFFD9985F),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        children: [
                          Text(
                            'O local possui ponto de acesso a rede elétrica?',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0XFF012257),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RadioListTile<SingingCharacter>(
                            activeColor: Color(0XFF012257),
                            title: const Text(
                              'Sim',
                              style: TextStyle(
                                color: Color(0XFF012257),
                              ),
                            ),
                            value: SingingCharacter.Sim,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                                pontoLuz = true;
                              });
                            },
                          ),
                          RadioListTile<SingingCharacter>(
                            activeColor: Color(0XFF012257),
                            title: const Text(
                              'Não',
                              style: TextStyle(
                                color: Color(0XFF012257),
                              ),
                            ),
                            value: SingingCharacter.Nao,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                                pontoLuz = false;
                              });
                            },
                          ),
                          Text('Onde pretende realizar a instalação elétrica?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0XFF012257),
                                fontWeight: FontWeight.bold,
                              )),
                          Autocomplete<String>(
                            optionsBuilder:
                                (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return _estadosLista.where((String option) {
                                return option.contains(
                                    textEditingValue.text.toUpperCase());
                              });
                            },
                            onSelected: (String selection) {
                              print('You just selected $selection');
                            },
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Fornecedor de Energia?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0XFF012257),
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                  ),
                                  // The validator receives the text that the user has entered.
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Insira o valor';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tarifa com Imposto em R\$?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0XFF012257),
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  // The validator receives the text that the user has entered.
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Insira o valor';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Quanto você paga em energia por mês em R\$?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0XFF012257),
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0XFF012257),),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  // The validator receives the text that the user has entered.
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Insira o valor';
                                    }
                                    return null;
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 40, bottom: 50),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Color(0XFF012257)),
                                        ),
                                        onPressed: () {
                                          if (formKey.currentState.validate()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(content: Text('Implementando')));
                                          }
                                        },
                                        child: Text('RESULTADO'),),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
