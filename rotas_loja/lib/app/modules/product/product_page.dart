import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rotas_loja/app/shared/product_model.dart';

import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final String shopName;

  const ProductPage({Key key, @required this.shopName}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.shopName),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Modular.to.pushNamed(
                  '/purchase',
                  arguments: ProductModel(
                      id: index, name: 'Produto ${index+1}', cost: (5.0 * index)),
                );
              },
              title: Text('Produto ${index+1}'),
              subtitle: Text('Numero ${index+1}'),
              leading: CircleAvatar(
                child: Text("P${index+1}"),
              ),
            );
          },
          itemCount: 20,
        ));
  }
}
