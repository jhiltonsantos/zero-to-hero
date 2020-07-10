import 'package:aula_bloc/page1/page_one.dart';
import 'package:flutter/material.dart';

class CardTileTwo extends StatefulWidget {
  final String title;
  final Data data;
  final Function onTap;

  CardTileTwo({Key key, this.title, this.data, this.onTap}) : super(key: key);

  @override
  _CardTileTwoState createState() => _CardTileTwoState();
}

class _CardTileTwoState extends State<CardTileTwo> {
  var _selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _selected ? Colors.green : Colors.redAccent,
      child: ListTile(
        title: Text(widget.title),
        onTap: () {
          _selected = !_selected;
          setState(() {});
        },
      ),
    );
  }
}