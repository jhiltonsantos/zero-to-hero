import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  final String title;
  const ProdutoPage({Key key, this.title = "Produto"}) : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends ModularState<ProdutoPage, ProdutoController> {
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
