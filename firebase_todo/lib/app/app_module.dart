import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_slidy/app/app_controller.dart';
import 'package:modular_slidy/app/app_widget.dart';
import 'package:modular_slidy/app/pages/home/home_controller.dart';
import 'package:modular_slidy/app/pages/home/home_page.dart';
import 'package:modular_slidy/app/pages/register/register_page.dart';
import 'package:modular_slidy/app/shared/repositories/poke_repository.dart';
import 'package:modular_slidy/app/shared/utilitaries/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((index) => AppController()),
        Bind((index) => HomeController(index.get<PokeRepository>())),
        Bind((index) => PokeRepository(index.get<Dio>())),
        Bind((index) => Dio(BaseOptions(baseUrl: URL_POKEAPI))),
      ];

  @override
  List<Router> get routers =>
      [
        Router('/', child: (_, args) => HomePage()),
        Router('/register', child: (_, args) => RegisterPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
