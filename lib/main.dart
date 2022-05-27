import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  static const _questions = [
    // or final question  = const can also be used
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 1},
        {'text': 'Cyan', 'score': 3}
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Panda', 'score': 2},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'LA', 'score': 10},
        {'text': 'Dubai', 'score': 5},
        {'text': 'Italy', 'score': 2},
        {'text': 'Monaco', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': [
        {'text': 'Aston Martin', 'score': 10},
        {'text': 'Dubai', 'score': 5},
        {'text': 'Mclaren', 'score': 2},
        {'text': 'Ferrari', 'score': 1}
      ]
    },
  ]; //lists are created with [] brackets
  //Maps are created with {} brackets

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    // bool aBool = true;
    // aBool = false;

    _totalscore += score;

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else
      print("no more questions");
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //final is run time constant = use when you dont know what value will be at compile time
    //const in compile time constant = use if sure value isn't changing when running code

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QuizApp-Flutter"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalscore,_resetQuiz),
      ),
    );
  }
}
