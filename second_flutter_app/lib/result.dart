import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetScore;

  Result(this.resultScore, this.resetScore);

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
      child: Column(children: <Widget>[
        Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        FlatButton(
          child: Text("Restart Quiz!"),
          textColor: Colors.blue,
          onPressed: resetScore,
        )
      ]),
    );
  }
}
