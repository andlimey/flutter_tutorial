import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;

  Answer(this.answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
        ),
        child: Text(answer),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
