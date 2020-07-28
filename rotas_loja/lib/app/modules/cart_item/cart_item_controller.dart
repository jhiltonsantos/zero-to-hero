import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/shared/models/cart_item_model/cart_item_model_controller.dart';
import 'package:rotas_loja/app/shared/stores/cart_item_store/cart_item_store.dart';

part 'cart_item_controller.g.dart';

class CartItemController = _CartItemControllerBase with _$CartItemController;

abstract class _CartItemControllerBase with Store {
  final CartItemStore _cartItemStore;

  _CartItemControllerBase(this._cartItemStore);

  ObservableList<CartItemModel> get listProducts => _cartItemStore.productCartItem;
}
