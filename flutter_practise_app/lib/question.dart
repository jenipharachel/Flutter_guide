import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final will denote that the variable questionText of type String will not change after it's creation
  Question(this.questionText);
  // Question() {
  //   this.questionText = questionText;
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ));
  }
}
