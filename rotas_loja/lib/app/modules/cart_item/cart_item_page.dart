import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cart_item_controller.dart';

class CartItemPage extends StatefulWidget {
  @override
  _CartItemPageState createState() => _CartItemPageState();
}

class _CartItemPageState
    extends ModularState<CartItemPage, CartItemController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.listProducts?.length ?? 0,
        itemBuilder: (BuildContext context, int index){
      return Card(
        margin: EdgeInsets.all(6.0),
        child: ListTile(
          title: Text('Produto ${index}'),
          trailing: Text('R\$ ${3 * index}'),
        ),
      );

    });
  }
}
