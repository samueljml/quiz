import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var selectedQuestions = 0;

  void responder() {
    setState(() {
      selectedQuestions++;
      print(selectedQuestions);
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
            Text(questions[selectedQuestions]),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
