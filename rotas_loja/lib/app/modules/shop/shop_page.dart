import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shop_controller.dart';

class ShopPage extends StatefulWidget {
  final String title;

  const ShopPage({Key key, this.title = "Shop"}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends ModularState<ShopPage, ShopController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Modular.to.pushNamed('/purchase/cart_item/Shop -> Cart Item');
              },
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Modular.to.pushNamed('/product/Loja ${index+1}');
              },
              title: Text('Loja ${index+1}'),
              subtitle: Text('Numero ${index+1}'),
            );
          },
          itemCount: 20,
        ));
  }
}