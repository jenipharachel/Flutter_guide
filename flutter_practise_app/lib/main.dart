import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void printAnswer() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
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
          Text('Quiz Questions'),
          Text(questions[questionIndex]),
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
