import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/shared/stores/cart_item_store/cart_item_store.dart';

import 'cart_item_controller.dart';
import 'cart_item_page.dart';

class CartItemModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => CartItemController(i.get<CartItemStore>())),
      ];

  @override
  List<Router> get routers => [
    Router('', child: (_, args) => CartItemPage()),
      ];

  static Inject get to => Inject<CartItemModule>.of();
}
