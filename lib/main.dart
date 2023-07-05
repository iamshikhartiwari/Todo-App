import 'package:flutter/material.dart';
import 'package:todoey/screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(

      create: (BuildContext context) => TaskData() ,
      child: SafeArea(
        child: MaterialApp(
          home: TaskScreen(),
        ),
      ),
    );
  }
}
