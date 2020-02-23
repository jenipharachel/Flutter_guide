import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void printAnswer() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override /* overrides the build method in Stateless Widget with our custom Widget */
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite fruit?",
      "What's your favorite color?"
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Practise App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Quiz Questions',
            textAlign: TextAlign.center,
          ),
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text("Orange"),
            onPressed: printAnswer,
          ),
          RaisedButton(
            child: Text("Apple"),
            onPressed: printAnswer,
          ),
          RaisedButton(
            child: Text("Banana"),
            onPressed: printAnswer,
          )
        ],
      ),
    ));
  }
}
