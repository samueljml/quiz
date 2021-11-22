import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizAppState extends State<QuizApp> {
  var _selectedQuestions = 0;

  void _answer() {
    setState(() {
      _selectedQuestions++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        "text": "What is your favority color?",
        "answer": ["Black", "Red", "Green", "White"]
      },
      {
        "text": "What is your favotiry pet?",
        "answer": ["Rabbit", "Elefant", "Cat", "Dog"],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestions]["text"].toString()),
            Answer('Resposta 1', _answer),
            Answer('Resposta 2', _answer),
            Answer('Resposta 3', _answer),
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
