import 'package:flutter/material.dart';

import 'home.dart';

// Já gera sempre rodar alguma alteração
// flutter pub run build_runner watch

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
