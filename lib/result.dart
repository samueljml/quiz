import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {Key? key}) : super(key: key);

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
    return Center(
      child: Text(
        resultText,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
