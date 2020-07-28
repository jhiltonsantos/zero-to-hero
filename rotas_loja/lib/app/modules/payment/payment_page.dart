import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/modules/payment/models/payment_model.dart';
import 'payment_controller.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key key, this.title = "Payment"}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends ModularState<PaymentPage, PaymentController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Vamos precisar dos seus Dados', textAlign: TextAlign.center,),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text('Continuar'),
                onPressed: () {
                  Modular.link.pushNamed('/address', arguments: PaymentModel());
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
