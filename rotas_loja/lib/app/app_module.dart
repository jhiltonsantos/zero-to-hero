import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/app_widget.dart';
import 'package:rotas_loja/app/modules/product/product_module.dart';
import 'package:rotas_loja/app/modules/purchase/purchase_module.dart';
import 'package:rotas_loja/app/modules/shop/shop_module.dart';
import 'package:rotas_loja/app/shared/stores/cart_item/cart_item_store.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => AppController()),
        Bind((i) => CartItemStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: ShopModule()),
        Router('/purchase', module: PurchaseModule()),
        Router('/product', module: ProductModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
