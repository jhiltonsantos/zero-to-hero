import 'package:mobx/mobx.dart';
import 'package:mobx_form/models/client.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValidSave {
    return validateEmail() == null &&
        validateName() == null &&
        validateCpf() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'Campo obrigatório';
    } else if (!client.email.contains("@")) {
      return 'Email não válido';
    }
    return null;
  }

  String validateCpf() {
    if (client.email == null || client.email.isEmpty) {
      return 'Campo obrigatório';
    } else if (!client.email.contains("@")) {
      return 'Email não válido';
    }
    return null;
  }
}
