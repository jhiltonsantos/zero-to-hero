import 'package:cloud_firestore/cloud_firestore.dart';

import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  CollectionReference get toDo => Firestore.instance.collection("/toDo");

  @override
  Future<List<Map>> getToDo() async {
    return (await toDo.getDocuments())
        .documents
        .map((e) => {"name": e.data['name']})
        .toList();
  }

  @override
  Stream<List<Map>> streamToDo() {
    return toDo
        .snapshots()
        .map((e) => e.documents.map((e) => {"name": e.data['name']})
        .toList());
  }
}
