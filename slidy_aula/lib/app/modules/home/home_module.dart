import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_aula/app/modules/home/repositories/poke_repository.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((index) => HomeController(index.get<PokeRepository>())),
    Bind((index) => PokeRepository(index.get<Dio>(), index.get<AuthRepository>())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];

}