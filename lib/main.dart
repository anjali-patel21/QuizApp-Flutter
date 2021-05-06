import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'India\'s largest city by population ?',
      'answers': [
        {'text': 'Delhi', 'score': 0},
        {'text': 'Mumbai', 'score': 10},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Surat', 'score': 0}
      ],
    },
    {
      'questionText': 'What is the name of India\'s National Aquatic animal ?',
      'answers': [
        {'text': 'River Dolphin', 'score': 10},
        {'text': 'Crocodile', 'score': 0},
        {'text': 'Green Frog', 'score': 0},
        {'text': 'Starfish', 'score': 0}
      ],
    },
    {
      'questionText': 'Which state is known as India\'s Spice Garden ?',
      'answers': [
        {'text': 'Assam', 'score': 0},
        {'text': 'Kerela', 'score': 10},
        {'text': 'Karnataka', 'score': 0},
        {'text': 'Andhra Pradesh', 'score': 0}
      ],
    },
    {
      'questionText': 'In India Hindi divas is celebrated on ?',
      'answers': [
        {'text': '14th April', 'score': 0},
        {'text': '5th May', 'score': 0},
        {'text': '14th September', 'score': 10},
        {'text': '15th August', 'score': 0}
      ],
    },
    {
      'questionText': 'Which is India\'s first Artificial Satellite ?',
      'answers': [
        {'text': 'INSAT', 'score': 0},
        {'text': 'Bhaskara', 'score': 0},
        {'text': 'Aryabhata', 'score': 10},
        {'text': 'Rohini', 'score': 0}
      ],
    },
    {
      'questionText': 'Where the largest Shipyard located in India ?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Kochi', 'score': 10},
        {'text': 'Visakhapatnam', 'score': 0},
        {'text': 'Chennai', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
