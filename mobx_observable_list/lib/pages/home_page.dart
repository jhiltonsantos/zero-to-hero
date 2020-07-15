import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_observable_list/components/add_dialog.dart';
import 'package:mobx_observable_list/components/item_widget.dart';
import 'package:mobx_observable_list/pages/home_controller.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    _dialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AddItemDialog();
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: 'Search...'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Observer(
              builder: (_) {
                return Text('${controller.totalChecked}');
              },
            ),
          )
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemBuilder: (_, index) {
            return ItemWidget(
              item: controller.listItems[index],
              removeItem: () {
                controller.removeItem(controller.listItems[index]);
              },
            );
          },
          itemCount: controller.listItems.length,
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialog();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
