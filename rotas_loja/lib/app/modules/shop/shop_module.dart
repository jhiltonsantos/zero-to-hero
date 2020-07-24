import 'shop_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'shop_page.dart';

class ShopModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShopController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ShopPage()),
      ];

  static Inject get to => Inject<ShopModule>.of();
}
