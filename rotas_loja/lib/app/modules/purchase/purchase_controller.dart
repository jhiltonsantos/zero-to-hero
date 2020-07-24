import 'package:mobx/mobx.dart';

part 'purchase_controller.g.dart';

class PurchaseController = _PurchaseControllerBase with _$PurchaseController;

abstract class _PurchaseControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
