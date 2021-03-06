import 'package:flutter/material.dart';
import 'package:project_quiz/answer.dart';
import 'package:project_quiz/question.dart';

class Quiz extends StatelessWidget {
  final int selected;
  final List<Map<String, Object>> questions;
  final void Function(int) answer;

  const Quiz(
      {required this.selected,
      required this.questions,
      required this.answer,
      Key? key})
      : super(key: key);

  bool get hasSelectedQuestion {
    return selected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> answers =
        hasSelectedQuestion ? questions[selected].cast()["answer"] : [];

    return Column(
      children: <Widget>[
        Question(questions[selected]["text"].toString()),
        ...answers
            .map((resp) => Answer(resp.cast()["text"],
                () => answer(int.parse(resp.cast()["points"].toString()))))
            .toList()
      ],
    );
  }
}
