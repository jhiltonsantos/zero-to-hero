import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/modules/purchase/page/cart_item/cart_item_module.dart';

import 'purchase_controller.dart';
import 'purchase_page.dart';

class PurchaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PurchaseController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => PurchasePage(
                  productModel: args.data,
                )),
        Router('/cart_item', module: CartItemModule()),
      ];

  static Inject get to => Inject<PurchaseModule>.of();
}
