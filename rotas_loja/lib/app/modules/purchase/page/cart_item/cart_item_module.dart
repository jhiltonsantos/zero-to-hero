import 'package:flutter_modular/flutter_modular.dart';

import 'cart_item_controller.dart';
import 'cart_item_page.dart';

class CartItemModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CartItemController()),
      ];

  @override
  List<Router> get routers => [
        Router(':title',
            child: (_, args) => CartItemPage(
                  title: args.params['title'],
                )),
      ];

  static Inject get to => Inject<CartItemModule>.of();
}
