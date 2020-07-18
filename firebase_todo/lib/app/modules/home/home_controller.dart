import 'package:mobx/mobx.dart';
import 'package:modular_slidy/app/modules/home/repositories/poke_repository.dart';
import 'package:modular_slidy/app/shared/models/pokemon_model.dart';
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

}