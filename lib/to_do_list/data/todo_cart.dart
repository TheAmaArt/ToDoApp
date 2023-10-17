import 'package:flutter/material.dart';

class TodoCart extends StatelessWidget {
  const TodoCart({super.key, required this.todos});

  final List todos;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Jetzt ${todos.length.toString()} Todos Erledeigt",
        style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
        ),
      ),
    );
  }
}