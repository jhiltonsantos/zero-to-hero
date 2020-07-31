import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/modules/payment/pages/data_address/data_address_controller.dart';

class DataAddressPage extends StatefulWidget {
  final String title;

  const DataAddressPage(
      {Key key, this.title = "DataAddressPage"})
      : super(key: key);

  @override
  _DataAddressPageState createState() =>
      _DataAddressPageState();
}

class _DataAddressPageState
    extends ModularState<DataAddressPage, DataAddressController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Dados de Endereço',
            textAlign: TextAlign.center,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text('Continuar'),
              onPressed: () {
                Modular.to.popUntil(ModalRoute.withName('/'));
              },
            ),
          )
        ],
      ),
    );
  }
}
