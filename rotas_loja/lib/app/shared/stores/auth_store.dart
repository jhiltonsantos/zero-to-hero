import 'package:mobx/mobx.dart';
import 'package:rotas_loja/app/shared/models/user_model/user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {

  @observable
  UserModel _user;

  @action
  setUser(UserModel userSet) => _user =  userSet;

  @computed
  bool get isLogged => _user.email != null && _user.password != null;

}