import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:todoflutter/constants.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> gradient = [Color(0xFF6975F0), Colors.greenAccent];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        backgroundColor: colorPrimary,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40.0,
        ),
        onPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: colorPrimary,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Lista de Tarefas',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: colorPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'X Tarefas',
                  style: TextStyle(color: colorPrimary, fontSize: 14.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(title: 'A'),
        TaskTile(title: 'B'),
        TaskTile(title: 'C'),
      ],
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
