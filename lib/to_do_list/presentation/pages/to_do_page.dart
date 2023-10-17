import 'package:age_finder/to_do_list/domain/to_do_list.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage(
      {super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  Map<String, bool> todos = {
    "Morgensport": false,
    "AppAkademie": false,
    "Mittagspause": false,
    "Training": false
  };
  bool checkbox = false;

  void checkToDos(String todos, bool isChecked) {
    debugPrint("ToDo wurde erledigt: $todos");
    setState(() { this.todos[todos] = isChecked;
      checkbox = !false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ToDoList(
              todos: todos,
              onClick: checkToDos,
            ),
          ],
        ),
      ),
    );
  }
}
