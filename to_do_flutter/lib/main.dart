import 'package:flutter/material.dart';
import 'package:todoflutter/screens/task_screen.dart';

void main() {
  runApp((ToDoApp()));
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TaskScreen(),
    );
  }
}
