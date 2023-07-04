import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            Center(
                child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              // style: ,
            )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(

              onPressed: () {},


              child: Text(
                "Push",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
