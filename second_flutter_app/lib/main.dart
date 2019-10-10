import 'package:flutter/material.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite genre of music?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Real Flutter App")),
        body: Column(children: [
          Text(questions[_questionIdx]),
          RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () {
              print("answer 2 chosen!");
            },
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print("Answer 3 chosen!"),
          ),
        ]),
      ),
    );
  }
}
