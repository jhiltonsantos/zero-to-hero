import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller/controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textField(
                    labelText: 'Name',
                    onChanged: controller.client.changedName,
                    errorText: controller.validateName);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Observer(
              builder: (_) {
                return _textField(
                    labelText: 'Email',
                    onChanged: controller.client.changedEmail,
                    errorText: controller.validateEmail);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Observer(
              builder: (_) {
                return _textField(
                    labelText: 'CPF',
                    onChanged: controller.client.changedCpf,
                    errorText: controller.validateCpf);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Observer(builder: (_) {
              return RaisedButton(
                onPressed: controller.isValidSave ? () {} : null,
                child: Text('Save'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
