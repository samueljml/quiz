import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(QuizApp(
      key: UniqueKey(),
    ));

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text("Hello Flutter!!!"),
    );
  }
}
