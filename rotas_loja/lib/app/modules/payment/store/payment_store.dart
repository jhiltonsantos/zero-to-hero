import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/modules/payment/models/payment_model.dart';

part 'payment_store.g.dart';

class PaymentStore = _PaymentStoreBase with _$PaymentStore;

abstract class _PaymentStoreBase with Store {

  @observable
  PaymentModel paymentModel = PaymentModel();




}