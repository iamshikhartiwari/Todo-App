import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/modals/task_modal.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(taskName: 'interview'),
    Task(taskName: 'dsa'),
  ];

}