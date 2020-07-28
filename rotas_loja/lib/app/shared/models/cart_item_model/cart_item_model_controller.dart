import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/shared/product_model.dart';

part 'cart_item_model_controller.g.dart';

class CartItemModel = _CartItemModelControllerBase
    with _$CartItemModel;

abstract class _CartItemModelControllerBase with Store {
  final ProductModel product;

  @observable
  int _number;

  @computed
  int get number => _number;

  _CartItemModelControllerBase({this.product}) {
    _number = 1;
  }

  @action
  void add() {
    _number++;
  }

  @action
  void remove() {
    _number--;
  }
}
