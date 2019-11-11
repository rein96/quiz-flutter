import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;  // final remove the "@immutable" warning in class Question
  // final = this value will never change after initialization Question constructor
  // final = they can be changed initially when we assign a value, but don't change thereafter

  Question(this.questionText){
    print('Question initialized with text "$questionText"');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // set full width to screen
      margin: EdgeInsets.all(10),  // .all(() = target to all directions
      child : Text(
        questionText, // example 'What\'s your favorite color?'
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      )
    );
  }
}