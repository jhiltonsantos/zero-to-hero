import 'package:dio/dio.dart';
import 'package:modular_slidy/app/shared/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

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