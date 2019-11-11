import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; 
  final String answerText; 
  // type = Function

  Answer(this.selectHandler, String this.answerText); 
  // selectHandler === _answerQuestion(){ setState } 
  // answerText === answer (el)

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: selectHandler,  // null = button disabled
      ),
      
    );
  }
}