import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
   ToDo({super.key, required this.todo, required this.onClick, required this.isChecked});

  final String todo;
  final Function onClick;
  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.green,
        child:   Row(
          children: [ Checkbox(value: isChecked, onChanged: (value) {onClick(todo, value);} ),
            Text(
              todo,
              style: const TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ), );
  }
}