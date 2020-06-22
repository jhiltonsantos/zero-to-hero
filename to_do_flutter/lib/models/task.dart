class Task {
  final String title;
  bool isDone;

  Task({this.title, this.isDone = false});

  void taskDone() {
    isDone = !isDone;
  }
}
