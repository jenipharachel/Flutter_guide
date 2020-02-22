import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void printAnswer() {
    print("Orange is chosen");
  }

  @override /* overrides the build method in Stateless Widget with our custom Widget */
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Practise App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Quiz Questions'),
          Text("Question 1 - Pick a fruit"),
          RaisedButton(
            child: Text("Orange"),
            onPressed: printAnswer,
          ),
          RaisedButton(
            child: Text("Apple"),
            onPressed: () => print("Apple is chosen"),
          ),
          RaisedButton(
            child: Text("Banana"),
            onPressed: () {
              print("Banana is chosen");
            },
          )
        ],
      ),
    ));
  }
}
