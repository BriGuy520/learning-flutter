import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = "You are normal!";
    } else if (resultScore <= 12) {
      resultText = "You are somewhat normal";
    } else if (resultScore <= 16) {
      resultText = 'You\'re kind of weird';
    } else {
      resultText = 'You need a mental health examination.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)));
  }
}
