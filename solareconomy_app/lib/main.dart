import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:solareconomy_app/apresentacao.dart';
import 'package:solareconomy_app/calculadoraEconomia.dart';
import 'package:solareconomy_app/central.dart';
import 'package:solareconomy_app/saibamais1.dart';
import 'package:solareconomy_app/slide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  primeiraVez() {
    int abriu = 0;
    abriu++;
    if (abriu >= 2) {
      return Central();
    } else {
      return apresentacao();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SOLARIS",
      home: primeiraVez(),
      theme: ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide (color: Color(0XFF012257))),
        focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide (color: Color(0XFF012257))),
      )
      ),
      routes: <String, WidgetBuilder> {
        '/central': (BuildContext context) => Central(),
        '/saibamais1': (BuildContext context) => Saibamais1(),
        '/calculadora': (BuildContext context) => CalculadoraEconomia(),
      },

    );
  }
}



