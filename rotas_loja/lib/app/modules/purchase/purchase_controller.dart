import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/shared/stores/cart_item/cart_item_store.dart';

part 'purchase_controller.g.dart';

class PurchaseController = _PurchaseControllerBase with _$PurchaseController;

abstract class _PurchaseControllerBase with Store {
  final CartItemStore _cartItemStore;

  _PurchaseControllerBase(this._cartItemStore);

  void addProductToCartItem(productModel) {
    _cartItemStore.addProductToCartItem(productModel);
  }


}
