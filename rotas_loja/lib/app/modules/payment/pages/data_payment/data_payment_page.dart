import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/modules/payment/pages/data_payment/data_payment_controller.dart';


class DataPaymentPage extends StatefulWidget {
  final String title;
  const DataPaymentPage(
      {Key key, this.title = "DataPayment"})
      : super(key: key);

  @override
  _DataPaymentPageState createState() =>
      _DataPaymentPageState();
}

class _DataPaymentPageState extends ModularState<
    DataPaymentPage, DataPaymentController> {
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
            'Dados de Pagemento',
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
