import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data_payment_successful_controller.dart';

class DataPaymentSuccessfulPage extends StatefulWidget {
  final String title;
  const DataPaymentSuccessfulPage(
      {Key key, this.title = "DataPaymentSuccessful"})
      : super(key: key);

  @override
  _DataPaymentSuccessfulPageState createState() =>
      _DataPaymentSuccessfulPageState();
}

class _DataPaymentSuccessfulPageState extends ModularState<
    DataPaymentSuccessfulPage, DataPaymentSuccessfulController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text('Pagamento Finalizado com Sucesso!!!', textAlign: TextAlign.center,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text('Continuar Comprando'),
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
