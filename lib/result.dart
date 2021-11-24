import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartQuiz;

  const Result(this.score, this.restartQuiz, {Key? key}) : super(key: key);

  String get resultText {
    if (score < 8) {
      return "Congratulations!";
    } else if (score < 12) {
      return "You are good!";
    } else if (score < 16) {
      return "Impressive!";
    } else {
      return "You rock!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultText,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: restartQuiz,
            child: const Text(
              "Restart?",
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
