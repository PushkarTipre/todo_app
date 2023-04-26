import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  //final String
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'data',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxstate;
  TaskCheckbox(this.checkBoxstate);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxstate,
      onChanged: (newValue) {},
    );
  }
}
