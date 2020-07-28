import 'package:mobx/mobx.dart';

part 'p_controller.g.dart';

class PController = _PControllerBase with _$PController;

abstract class _PControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
