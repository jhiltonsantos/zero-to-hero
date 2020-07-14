import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_1/controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: controller.changeName,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'LastName'),
              onChanged: controller.changeLastName,
            ),
            SizedBox(
              height: 30.0,
            ),
            Observer(
              builder: (_) {
                return Text(controller.completedName);
              },
            ),
//            Observer(
//              builder: (_) {
//                return Text(
//                  '${controller.counter}',
//                  style: Theme.of(context).textTheme.headline4,
//                );
//              },
//            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
