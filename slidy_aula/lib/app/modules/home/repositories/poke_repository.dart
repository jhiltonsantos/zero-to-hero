import 'package:dio/dio.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository.dart';
import 'package:slidy_aula/app/shared/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;
  final AuthRepository auth; //Instance of Firebase

  PokeRepository(this.dio, this.auth);

  Future<List<PokemonModel>> getCatchAll () async {
    var response = await dio.get('pokemon?limit=964&offset=0');
    List<PokemonModel> list = [];
    for (var poke in (response.data['results']) as List) {
      PokemonModel model = PokemonModel(name: poke['name']);
      list.add(model);
    }

    return list;
  }
}