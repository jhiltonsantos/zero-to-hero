import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SetState"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(list[index]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add("Item ${list.length}");
          });
          print(list);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
