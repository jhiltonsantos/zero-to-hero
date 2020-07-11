import 'package:mobx/mobx.dart' as mobx;

class Controller {
  var _counter = mobx.Observable(0);
  mobx.Action increment;

  int get counter => _counter.value;

  set counter(int value) => _counter.value = value;

  Controller() {
    increment = mobx.Action(_increment);
    mobx.autorun((_) {
      print(counter);
    });
  }

  _increment() {
    counter++;
  }
}
