import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_slidy/app/app_controller.dart';
import 'package:modular_slidy/app/app_widget.dart';
import 'package:modular_slidy/app/modules/home/home_module.dart';
import 'package:modular_slidy/app/shared/utilitaries/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((index) => AppController()),
        Bind((index) => Dio(BaseOptions(baseUrl: URL_POKEAPI))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
