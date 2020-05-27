import 'package:aula_hasura/home/repositories/home_repository_impl.dart';
import 'package:flutter/material.dart';

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
            FutureBuilder<List<Map>>(
              future: repository.getToDo(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error FutureBuilder");
                } else if (snapshot.hasData) {
                  final list = snapshot.data;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(list[index]['name']),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            StreamBuilder<List<Map>>(
              stream: repository.streamToDo(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error FutureBuilder");
                } else if (snapshot.hasData) {
                  final list = snapshot.data;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(list[index]['name']),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
