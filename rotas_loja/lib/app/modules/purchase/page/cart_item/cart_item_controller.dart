import 'package:mobx/mobx.dart';

part 'cart_item_controller.g.dart';

class CartItemController = _CartItemControllerBase with _$CartItemController;

abstract class _CartItemControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
