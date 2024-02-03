import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;
  TaskTile({required this.taskTitle,required this.isChecked,required this.checkboxCallback, required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
        style: TextStyle(
          decoration: isChecked?TextDecoration.lineThrough:null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:checkboxCallback,
      ),
    );
  }
}


// TaskCheckbox(
// checkboxState: isChecked,
// toggleCheckboxState:
// },
// ),

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckboxState;
//
//   TaskCheckbox({required this.checkboxState,required this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: checkboxState,
//         activeColor: Colors.lightBlueAccent,
//         onChanged: toggleCheckboxState,
//     );
//   }
// }
