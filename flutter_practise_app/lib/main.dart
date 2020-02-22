import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override /* overrides the build method in Stateless Widget with our custom Widget */
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Practise App'),
        centerTitle: true,
      ),
      body: Text("You are looking at the body of my App"),
    ));
  }
}
