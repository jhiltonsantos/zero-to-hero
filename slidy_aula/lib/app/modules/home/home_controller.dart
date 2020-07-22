import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_aula/app/modules/home/repositories/poke_repository.dart';
import 'package:slidy_aula/app/shared/auth/auth_controller.dart';
import 'package:slidy_aula/app/shared/models/pokemon_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemonList;

  _HomeControllerBase(this.repository){
    fetchPokemon();
  }

  @action
  fetchPokemon() {
    pokemonList = repository.getCatchAll().asObservable();
  }

  @action
  logOff() async {
    await Modular.get<AuthController>().logOut();
    Modular.to.pushReplacementNamed('/login');
  }

}