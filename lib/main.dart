import 'package:flutter/material.dart';
import 'package:project_quiz/quiz.dart';

import './result.dart';

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

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  void _answer() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz"),
            centerTitle: true,
          ),
          body: hasSelectedQuestion
              ? Quiz(
                  selected: _selectedQuestion,
                  questions: _questions,
                  answer: _answer,
                )
              : const Result()),
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
