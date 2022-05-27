import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

//void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
// adding _before the class name turns it into a public class, means it can only
// be used inside this main.dart file

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //final is run time constant = use when you dont know what value will be at compile time
    //const in compile time constant = use if sure value isn't changing when running code
    final questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Blue', 'Cyan']
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': ['Cat', 'Dog', 'Panda', 'lion']
      },
      {
        'questionText': 'What\'s your favorite city?',
        'answers': ['Monaco', 'Paris', 'Dubai', 'Italy']
      },
      {
        'questionText': 'What\'s your favorite car?',
        'answers': ['Ferrari', 'Aston Martin', 'Lamborghini', 'Mclaren']
      },
    ]; //lists are created with [] brackets
    //Maps are created with {} brackets
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]
                  ['questionText'], //questions.elementAt(0)
            ), //... is spread operator ...[a, b, c] is just a, b, c
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
