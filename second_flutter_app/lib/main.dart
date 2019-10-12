import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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

  final _questions = const [
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
        body: _questionIdx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIdx: _questionIdx,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
