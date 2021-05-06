import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  //String resultPhrase;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 70) {
      resultText = 'You got all 7 answers Correct !!';
    } else if (resultScore == 60) {
      resultText = 'You got 6 answers Correct !!';
    } else if (resultScore == 50) {
      resultText = 'You got 5 answers Correct !!';
    } else if (resultScore == 40) {
      resultText = 'You got 4 answers Correct !!';
    } else if (resultScore == 30) {
      resultText = 'You got 3 answers Correct !!';
    } else if (resultScore == 20) {
      resultText = 'You got 2 answers Correct !!';
    } else {
      resultText = 'You got only 1 answer Correct';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 50, color: Colors.blue, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            padding: EdgeInsets.fromLTRB(20, 250, 20, 20),
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 50),
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
