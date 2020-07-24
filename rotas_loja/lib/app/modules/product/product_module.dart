import 'package:flutter_modular/flutter_modular.dart';

import 'product_controller.dart';
import 'product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:shopName',
            child: (_, args) => ProductPage(
                  shopName: args.params['shopName'],
                )),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
