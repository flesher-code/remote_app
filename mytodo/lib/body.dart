// import 'package:flutter/material.dart';
// import 'todo.dart';

// class BodyTodo extends StatefulWidget {
//    BodyTodo({super.key});
//
//   @override
//   State<BodyTodo> createState() => _BodyTodoState();
// }
//
// class _BodyTodoState extends State<BodyTodo> {
//   List todoList = [
//     ['Приготовть ужин',false],
//     ['Досмотреть фильм',false]
//   ];
//
//   void enterCheckBox(int index) {
//     setState(() {
//       todoList[index][1] = !todoList[index][1];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(15),
//
//       child: ListView.builder(
//           itemCount: todoList.length,
//           itemBuilder: (context, index) => Todo(
//             isDone: todoList[index][1],
//             onChanged: (value) => enterCheckBox(index),
//             todo: todoList[index][0],
//           )
//       )
//     );
//   }
// }
