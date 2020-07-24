import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cart_item_controller.dart';

class CartItemPage extends StatefulWidget {
  final String title;
  const CartItemPage({Key key, @required this.title}) : super(key: key);

  @override
  _CartItemPageState createState() => _CartItemPageState();
}

class _CartItemPageState
    extends ModularState<CartItemPage, CartItemController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
