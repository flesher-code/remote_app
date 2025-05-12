import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key, required this.isDone, this.onChanged, required this.todo});

  final bool isDone;
  final Function(bool?)? onChanged;
  final String todo;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
        bottom: 10
      ),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.green,
              width: 2
          )
        ),

        child: Row(
          children: [
            Checkbox(
              value: isDone,
              onChanged: onChanged,
              checkColor: Colors.green[800],
              activeColor: Colors.white,

            ),

            Flexible(
              child: Text(todo,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
