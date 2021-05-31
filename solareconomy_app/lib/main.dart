import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:solareconomy_app/apresentacao.dart';
import 'package:solareconomy_app/central.dart';
import 'package:solareconomy_app/slide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste",
      home: Central(),
    );
  }
}