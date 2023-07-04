class Task {
  final String taskName;
  bool isDone;

  Task({this.isDone = false, required this.taskName});
  void toggleDone(){
     isDone = !isDone;
  }
}