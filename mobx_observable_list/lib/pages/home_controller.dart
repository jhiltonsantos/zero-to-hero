import 'package:mobx/mobx.dart';
import 'package:mobx_observable_list/models/item_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  disposeApp() {}

  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
  ].asObservable();

  @computed
  int get totalChecked => listItems.where((e) => e.check).length;

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
