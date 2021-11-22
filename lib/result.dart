import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Congratulations!",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
