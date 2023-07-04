import 'package:flutter/material.dart';

class TaskView extends StatelessWidget {
  bool isChecked = true;
  final String taskTitle;
  final Function checkboxCallBack;

  TaskView({required this.isChecked, required this.taskTitle, required this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough :null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallBack(),
        ));
  }
}

// void checkboxCallBack(bool checkboxState) {
//   setState(() {
//     isChecked = checkboxState;
//   });
// }


