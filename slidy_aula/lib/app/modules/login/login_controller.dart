import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_aula/app/shared/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  AuthController auth = Modular.get();

  @observable
  bool loading = false;

  @action
  Future loginWithGooglePage() async{
    try {
      loading = true;
      auth.loginWithGoogle();
      Modular.to.pushNamed('/home');
    } catch (e) {
      loading = false;
    }
  }
}
