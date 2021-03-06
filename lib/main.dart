import 'package:flutter/material.dart';
import 'package:project_quiz/quiz.dart';

import './result.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      "text": "What is your favority color?",
      "answer": [
        {"text": "Black", "points": 10},
        {"text": "Red", "points": 3},
        {"text": "Green", "points": 1},
        {"text": "White", "points": 0}
      ]
    },
    {
      "text": "What is your favotiry pet?",
      "answer": [
        {"text": "Rabbit", "points": 10},
        {"text": "Elefant", "points": 5},
        {"text": "Cat", "points": 3},
        {"text": "Dog", "points": 1}
      ],
    }
  ];

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  void _answer(int points) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _score += points;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              : Result(_score, _restartQuiz)),
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
