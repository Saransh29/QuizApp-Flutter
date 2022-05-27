import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //this value will never change after initialization in constructor

  Question(this.questionText); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      //container>margin>border>padding>child
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
