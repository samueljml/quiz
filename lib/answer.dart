import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  const Answer(this.text, this.onSelection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: onSelection,
      ),
    );
  }
}
