import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/modules/payment/models/payment_model.dart';

part 'data_payment_controller.g.dart';

class DataPaymentController = _DataPaymentControllerBase with _$DataPaymentController;

abstract class _DataPaymentControllerBase with Store {
  final PaymentModel model;

  _DataPaymentControllerBase(this.model);


  var cardController = TextEditingController();
  var cvvController = TextEditingController();

  @action
  void next() {
    model.card = cardController.text;
    model.cvv = cvvController.text;

    Modular.link.pushNamed('/succesful', arguments: model);
  }

  @override
  void dispose() {
    cardController.dispose();
    cvvController.dispose();
  }

}