import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIdx = 0;

  void answerQuestion() {
    setState(() {
      questionIdx = questionIdx + 1;
    });
    print(questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Real Flutter App")),
        body: Column(children: [
          Text(questions[questionIdx]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
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
