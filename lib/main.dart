import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  final List<Map<String, Object>> _questions = [
    {
      "text": "What is your favority color?",
      "answer": ["Black", "Red", "Green", "White"]
    },
    {
      "text": "What is your favotiry pet?",
      "answer": ["Rabbit", "Elefant", "Cat", "Dog"],
    }
  ];

  void _answer() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = hasSelectedQuestion
        ? _questions[_selectedQuestion].cast()["answer"]
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
          centerTitle: true,
        ),
        body: hasSelectedQuestion
            ? Column(
                children: <Widget>[
                  Question(_questions[_selectedQuestion]["text"].toString()),
                  ...answers.map((t) => Answer(t, _answer)).toList()
                ],
              )
            : null,
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
