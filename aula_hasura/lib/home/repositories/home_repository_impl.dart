import 'package:aula_hasura/shared/constants.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final _client = HasuraConnect(BD_HASURA);

  @override
  Future<List<Map>> getToDo() async {
    final response = (await _client.query('''
    query {
      posts {
        id_posts
        name
        photo_perfil
      }
    }
    '''));

    return (response['data']['posts'] as List)
        .map((e) => {"name": e['name']})
        .toList();
  }

  @override
  Stream streamToDo() {
    return _client.subscription('''
    query {
      posts {
        id_posts
        name
        photo_perfil
      }
    }
    ''');
  }
}
