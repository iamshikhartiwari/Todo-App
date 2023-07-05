import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_list.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/modals/task_modal.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // final String taskData = '';
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
          showModalBottomSheet(context: context, builder: (BuildContext context) => AddTaskScreen(( newTaskTitle){
            // setState(() {
              // tasks.add(Task(taskName: newTaskTitle));
            // });
            Navigator.pop(context);
          }));
          },
          child: Icon(
            Icons.add,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 70,
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).tasks.length} Tasks',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: TaskList(),
                ),
              ),
            ],
          ),
        ),
        );
  }
}


