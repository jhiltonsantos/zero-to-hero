import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String text;

  const RegisterPage({Key key, this.text}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}
