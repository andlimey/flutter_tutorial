import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // Tells dart that this value will never change after initialisation.

  Question(this.questionText); // Constructor that expects a value.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
