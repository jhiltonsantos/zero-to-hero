import 'package:flutter/material.dart';
import 'package:mobx_observable_list/pages/home_controller.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeController>(
          create: (_) => HomeController(),
          dispose: (_, homeController) => homeController.disposeApp(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(
        ),
        home: MyHomePage(),
      ),
    );
  }
}

