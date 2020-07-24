import 'package:mobx/mobx.dart';

part 'shop_controller.g.dart';

class ShopController = _ShopControllerBase with _$ShopController;

abstract class _ShopControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
