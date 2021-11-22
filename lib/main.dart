import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizAppState extends State<QuizApp> {
  var selectedQuestions = 0;

  void responder() {
    setState(() {
      selectedQuestions++;
    });
  }

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
        body: Column(
          children: <Widget>[
            Question(questions[selectedQuestions]),
            Answer('Resposta 1'),
            Answer('Resposta 2'),
            Answer('Resposta 3'),
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
