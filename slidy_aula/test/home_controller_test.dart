import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:slidy_aula/app/app_module.dart';
import 'package:slidy_aula/app/modules/home/home_controller.dart';
import 'package:slidy_aula/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

main() {
  initModule(AppModule());
  initModule(HomeModule());

  test('click save', () {
    final HomeController controller = Modular.get();
    controller.save();


  });
}