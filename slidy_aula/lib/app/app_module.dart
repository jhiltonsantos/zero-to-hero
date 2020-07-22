import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_aula/app/app_widget.dart';
import 'package:slidy_aula/app/modules/home/home_module.dart';
import 'package:slidy_aula/app/modules/login/login_module.dart';
import 'package:slidy_aula/app/shared/auth/auth_controller.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:slidy_aula/app/shared/utilitaries/constants.dart';
import 'package:slidy_aula/app/splash/splash_page.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [
        //Bind((i) => SplashController()),
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_POKEAPI))),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<Router> get routers =>
      [
        //Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router('/', child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
