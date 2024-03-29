import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @computed
  String get completedName => '$name $lastName';

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeLastName(String newName) {
    lastName = newName;
  }


}

//// Gerando Código Automático (flutter pub run build_runner build)
//abstract class ControllerBase with Store{
//  @observable
//  int counter = 0;
//
//  @action
//  increment() {
//    counter++;
//  }
//}
//

// Gerando Código Manual
//class Controller{
//  var _counter = mobx.Observable(0);
//  mobx.Action increment;
//
//  int get counter => _counter.value;
//
//  set counter(int value) => _counter.value = value;
//
//  Controller() {
//    increment = mobx.Action(_increment);
//    mobx.autorun((_) {
//      print(counter);
//    });
//  }
//
//  _increment() {
//    counter++;
//  }
//}
