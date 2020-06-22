import 'package:flutter/material.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/widgets/task_title.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: 'AAA'),
    Task(title: 'BBB'),
    Task(title: 'CCC'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].title,
          isChecked: tasks[index].isDone,
          checkboxCallback: (value) {
            setState(() {
              tasks[index].taskDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
