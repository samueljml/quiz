import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What is your favority color?",
      "What is your favotiry pet?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
          centerTitle: true,
        ),
        body: Column(children: [
          Text(questions[0]),
          const ElevatedButton(
            child: Text("Resposta 1"),
            onPressed: null,
          ),
          const ElevatedButton(
            child: Text("Resposta 2"),
            onPressed: null,
          ),
          const ElevatedButton(
            child: Text("Resposta 3"),
            onPressed: null,
          ),
          const ElevatedButton(
            child: Text("Resposta 4"),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
