import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    print(resultScore);
    String resultText;
    if (resultScore <= 8){
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16 ) {
      resultText = 'You are ... strange ?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }
  // Getter = a mixture of property and method 
  // getter = method that can't receieve any arguments

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart Quiz'),
              onPressed: resetHandler,
              textColor: Colors.blue,
              ),
          ]
        ) 
      )
    );
  }
}