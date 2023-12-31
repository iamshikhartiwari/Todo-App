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
    return Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(itemBuilder: (context, index) {
            return TaskView(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].taskName,
              checkboxCallBack: (checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
              },
            );
          },
            itemCount: taskData.tasks.length,
          );
        },
      );
    }
  }

