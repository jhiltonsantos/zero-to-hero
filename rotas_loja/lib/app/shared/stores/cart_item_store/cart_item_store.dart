import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/shared/models/cart_item_model/cart_item_model_controller.dart';
import 'package:rotas_loja/app/shared/product_model.dart';

part 'cart_item_store.g.dart';

class CartItemStore = _CartItemStoreBase with _$CartItemStore;

abstract class _CartItemStoreBase with Store {
  var productCartItem = ObservableList<CartItemModel>();

  void addProductToCartItem(ProductModel productModel) {
    var index = productCartItem
        .indexWhere((element) => element.product.id == productModel.id);

    if (index >= 0) {
      productCartItem.elementAt(index).add();
    } else {
      productCartItem.add(CartItemModel(product: productModel));
    }
  }
}
