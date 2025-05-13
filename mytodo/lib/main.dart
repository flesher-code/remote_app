import 'package:flutter/material.dart';
import 'todo.dart';



void main() => runApp(Basic());

class Basic extends StatefulWidget {
  const Basic({super.key});

  @override
  State<Basic> createState() => _BasicState();
}


  final _formController = TextEditingController();

class _BasicState extends State<Basic> {

  List todoList = [
  ['Приготовть ужин',false],
  ['Досмотреть фильм',false]
  ];

  void enterCheckBox(int index) {
  setState(() {
  todoList[index][1] = !todoList[index][1];
  });
  }

  void addNewTodo() {
    setState(() {
      todoList.add([_formController.text,false]);
      _formController.clear();
    });
  }

  void deleteTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
      Scaffold(
        appBar: AppBar(
          title: Text('TO - DO',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          foregroundColor: Colors.white,
        ),

        body: Container(
            padding: EdgeInsets.all(15),

            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) => Todo(
                  isDone: todoList[index][1],
                  onChanged: (value) => enterCheckBox(index),
                  todo: todoList[index][0],
                  deleteFunction: (context) => deleteTodo(index),
                )
            )
        ),

        floatingActionButton: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _formController,
                  decoration: InputDecoration(
                    hintText: 'Добавить todo....',
                    hintStyle: TextStyle(
                      color: Colors.grey[900]
                    ),

                    filled: true,
                    fillColor: Colors.green[100],

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2.5
                      )
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 3
                        )
                    ),
                  ),
                ),
              ),
            ),

            FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              onPressed: addNewTodo,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
