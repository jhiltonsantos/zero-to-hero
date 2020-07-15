import 'package:mobx/mobx.dart';
import 'package:mobx_observable_list/models/item_model.dart';
import 'package:rxdart/rxdart.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final listItems = BehaviorSubject<List<ItemModel>>.seeded([]);
  final filter = BehaviorSubject<String>.seeded('');

  ObservableStream<List<ItemModel>> output;

  _HomeControllerBase() {
    output = Rx.combineLatest2<List<ItemModel>, String, List<ItemModel>>(
      listItems.stream,
      filter.stream,
      (list, filter) {
        if (filter.isEmpty) {
          return list;
        } else {
          return list
              .where((element) =>
                  element.title.toLowerCase().contains(filter.toLowerCase()))
              .toList();
        }
      },
    ).asObservable(initialValue: []);
  }

//  @observable
//  ObservableList<ItemModel> listItems = [
//    ItemModel(title: 'Item 1', check: true),
//    ItemModel(title: 'Item 2', check: false),
//    ItemModel(title: 'Item 3', check: true),
//  ].asObservable();

// @computed
// int get totalChecked => listItems.where((e) => e.check).length;

  @computed
  int get totalChecked => output.value.where((e) => e.check).length;

//  @computed
//  List<ItemModel> get listFiltered {
//    if (filter.isEmpty) {
//      return listItems;
//    } else {
//      return listItems
//          .where((element) =>
//              element.title.toLowerCase().contains(filter.toLowerCase()))
//          .toList();
//    }
//  }

//  @observable
//  String filter = '';

//   @action
  setFilter(String value) => filter.add(value);

  @action
  addItem(ItemModel model) {
    listItems.add(List<ItemModel>.from(listItems.value)..add(model));
  }

  @action
  removeItem(ItemModel model) {
    var list = List<ItemModel>.from(listItems.value);
    list.removeWhere((item) => item.title == model.title);
    listItems.add(list);
  }

  disposeApp() {}
}
