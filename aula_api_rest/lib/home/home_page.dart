import 'package:flutter/material.dart';
import 'package:aula_api_rest/home/repositories/home_repository_impl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = HomeRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Future",
              ),
              Tab(
                text: "Stream",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FutureBuilder<List>(
              future: repository.getToDo(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error FutureBuilder");
                } else if (snapshot.hasData) {
                  final list = snapshot.data;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(list[index]['title']),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Container(
              child: Text("SEM WEBSOCKET"),
            ),
          ],
        ),
      ),
    );
  }
}
