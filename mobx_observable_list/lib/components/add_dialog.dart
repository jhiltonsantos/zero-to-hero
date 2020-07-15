import 'package:flutter/material.dart';
import 'package:mobx_observable_list/models/item_model.dart';
import 'package:mobx_observable_list/pages/home_controller.dart';
import 'package:provider/provider.dart';

class AddItemDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    var model = ItemModel();

    return AlertDialog(
      title: Text('Add Item'),
      content: TextField(
        onChanged: model.setTitle,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'New Item',
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            controller.addItem(model);
            Navigator.pop(context);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
