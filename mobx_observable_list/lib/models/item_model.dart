import 'package:mobx/mobx.dart';

part 'item_model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase({this.title, this.check = false});

  @observable
  String title;

  @action
  setTitle(String valueTitle) => title = valueTitle;

  @observable
  bool check;

  @action
  setCheck(bool valueCheck) => check = valueCheck;


}
