import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/modules/payment/models/payment_model.dart';

part 'data_address_controller.g.dart';

class DataAddressController = _DataAddressControllerBase with _$DataAddressController;

abstract class _DataAddressControllerBase with Store {
  final PaymentModel model;

  _DataAddressControllerBase(this.model);

  var streetController = TextEditingController();
  var numberController = TextEditingController();

  @action
  void next() {
    model.street = streetController.text;
    model.number = numberController.text;

    Modular.link.pushNamed('/dataPayment', arguments: model);
  }

  @override
  void dispose() {
    streetController.dispose();
    numberController.dispose();
  }

}