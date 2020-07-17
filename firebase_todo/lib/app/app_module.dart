import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_slidy/app/app_controller.dart';
import 'package:modular_slidy/app/app_widget.dart';
import 'package:modular_slidy/app/pages/home/home_controller.dart';
import 'package:modular_slidy/app/pages/home/home_page.dart';
import 'package:modular_slidy/app/pages/register/register_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [Bind((index) => AppController()), Bind((index) => HomeController())];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/register/:text', child: (_, args) => RegisterPage(text: args.params['text'],)),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
