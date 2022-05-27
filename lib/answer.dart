import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all(Color.fromARGB(210, 0, 0, 0)),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 127, 220, 232)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
