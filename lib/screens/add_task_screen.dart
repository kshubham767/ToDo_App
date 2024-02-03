import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',textAlign:TextAlign.center,style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask){
                newTaskTitle = newTask;
              },
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(
                child: Text('Add',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              ),
              onPressed: (){
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
