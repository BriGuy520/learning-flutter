import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird', 'Snake'],
    },
    {
      'questionText': 'What\'s your favorite genre of music?',
      'answers': ['Pop', 'Rock', 'Rap', 'Folk'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Real Flutter App")),
        body: _questionIdx < questions.length
            ? Column(children: [
                Question(questions[_questionIdx]['questionText']),
                ...(questions[_questionIdx]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(child: Text("You finished the test!")),
      ),
    );
  }
}
