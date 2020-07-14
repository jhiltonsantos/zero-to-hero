import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store{

  @observable
  String name;
  @action
  changedName(String newName) => name = newName;

  @observable
  String cpf;
  @action
  changedCpf(String newCpf) => cpf = newCpf;

  @observable
  String email;
  @action
  changedEmail(String newEmail) => email = newEmail;

}