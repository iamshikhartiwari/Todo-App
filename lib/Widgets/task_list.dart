import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/modals/task_modal.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskView(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TaskData>(context).tasks[index].taskName,
          checkboxCallBack: (checkboxState) {
            setState(() {
              Provider.of<TaskData>(context).tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
