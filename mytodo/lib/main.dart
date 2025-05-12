import 'package:flutter/material.dart';
import 'body.dart';

void main() => runApp(Basic());

class Basic extends StatelessWidget {
  const Basic({super.key});

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

        body: BodyTodo(),
      ),
    );
  }
}
