import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> questions = [
      {
        "text": "What is your favority color?",
        "answer": ["Black", "Red", "Green", "White"]
      },
      {
        "text": "What is your favotiry pet?",
        "answer": ["Rabbit", "Elefant", "Cat", "Dog"],
      }
    ];

    List<String> answers = questions[_selectedQuestion].cast()["answer"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]["text"].toString()),
            ...answers.map((t) => Answer(t, _answer)).toList()
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  QuizAppState createState() {
    return QuizAppState();
  }
}
