import 'package:age_finder/to_do_list/application/to_do.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key, required this.todos, required this.onClick});

  final Map<String, bool> todos;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: todos.entries
              .map((e) => ToDo(
                    todo: e.key,
                    onClick: onClick,
                    isChecked: e.value,
                  ))
              .toList()),
    );
  }
}
