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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 0},
        {'text': 'Purple', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Snake', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 0},
        {'text': 'Frog', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s your favorite genre of music?',
      'answers': [
        {'text': 'Pop', 'score': 10},
        {'text': 'Folk', 'score': 5},
        {'text': 'Rap', 'score': 0},
        {'text': 'Rock', 'score': 8}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

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
            : Result(_totalScore),
      ),
    );
  }
}
