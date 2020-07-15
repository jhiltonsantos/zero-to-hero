import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';


import 'controller/controller.dart';

class BodyWidget extends StatelessWidget {

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
    final controller = GetIt.I.get<Controller>();

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Observer(
              builder: (_) {
                return _textField(
                    labelText: 'Name',
                    onChanged: controller.client.changedName,
                    errorText: controller.validateName);
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Observer(
              builder: (_) {
                return _textField(
                    labelText: 'Email',
                    onChanged: controller.client.changedEmail,
                    errorText: controller.validateEmail);
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Observer(
              builder: (_) {
                return _textField(
                    labelText: 'CPF',
                    onChanged: controller.client.changedCpf,
                    errorText: controller.validateCpf);
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Observer(builder: (_) {
              return RaisedButton(
                onPressed: controller.isValidSave ? () {} : null,
                child: Text('Save'),
              );
            }),
          ),
        ],
      ),
    );
  }
}
