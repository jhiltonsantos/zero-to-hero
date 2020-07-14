import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import 'controller/controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context); // Forma com Provider
    // final controller = Controller(); //Forma Normal

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text(controller.isValidSave
              ? 'Formulário Validado'
              : 'Formulário Não Validado');
        }),
      ),
      body: BodyWidget(),
    );
  }
}
