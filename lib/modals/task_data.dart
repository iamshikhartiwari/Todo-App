import 'package:flutter/foundation.dart';
import 'package:todoey/modals/task_modal.dart';
import 'package:todoey/modals/task_modal.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
   List<Task> _tasks = [
    Task(taskName: 'interview'),
    Task(taskName: 'dsa'),
  ];

   UnmodifiableListView<Task> get tasks {
     return UnmodifiableListView(_tasks);
   }

  void addTask(String newTaskTitle){
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
      task.toggleDone();
  }
}