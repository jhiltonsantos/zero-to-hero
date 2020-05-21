
abstract class HomeRepository {
  //Faz uma requisição ao firebase, espera processar e ele retornar um dado static na memória
  Future getToDo();
  //Faz uma requisição ao firebase, espera processar e ele retornar um dado dynamic na memória
  Stream streamToDo();
}
