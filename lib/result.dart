import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "You did it!";

    if (totalScore <= 8) {
      resultText = "Nice score!";
    } else if (totalScore > 20) {
      resultText = "Err....";
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
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz!"),
            onPressed: () => resetQuiz(),
          ),
        ],
      ),
    );
  }
}
