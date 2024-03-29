import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_slidy/app/modules/home/repositories/poke_repository.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((index) => HomeController(index.get<PokeRepository>())),
    Bind((index) => PokeRepository(index.get<Dio>())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];

}