import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todo extends StatelessWidget {
  const Todo({super.key, required this.isDone, this.onChanged, required this.todo, this.deleteFunction});

  final String todo;
  final bool isDone;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
        bottom: 10
      ),

      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(onPressed: deleteFunction,
              icon: Icons.delete,
              )
            ]),
        
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
                    fontSize: 20,
                    decoration:  isDone
                      ? TextDecoration.lineThrough : TextDecoration.none,
                    decorationColor: Colors.green[900],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
