import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository_interface.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  AuthStatus status = AuthStatus.loading;

  @observable
  FirebaseUser user;

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  setUser(FirebaseUser valueUser) {
    user = valueUser;
    status = user == null ? AuthStatus.logout : AuthStatus.login;
  }

  @action
  Future logOut() async {
    return _authRepository.getLogout();
  }

}

enum AuthStatus {
  loading,
  login,
  logout
}
