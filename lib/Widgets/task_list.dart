import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/modals/task_modal.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskName: 'buy milk'),
    Task(taskName: 'go to party'),
    Task(taskName: 'prepare for interview'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskView(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].taskName,
            checkboxCallBack: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
        );
      },
      itemCount: tasks.length,
    );
  }
}
