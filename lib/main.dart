import 'package:flutter/material.dart';
import 'package:quizzlerabhi_212022/question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 218, 218),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorkeeper = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.?',
    'Approximately one quarter of human bones are in the feet.?',
    'A slug\'s blood is green.?',
  ];

  List <bool> answers = [false,true,true];

  Question q1 = Question(q:'You can lead a cow down stairs but not up stairs.?', a:true);

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.

               bool correctAnswer = answers[questionNumber];
                if(correctAnswer == false){
                  print('user is right');
                }else{
                  print('user wrong');
                }

                setState(() {
                  questionNumber++;
                });
            

                print(questionNumber);
              },
              
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red)),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.

                 bool correctAnswer = answers[questionNumber];
                if(correctAnswer == false){
                  print('user is right');
                }else{
                  print('user wrong');
                }
                setState(() {
                  questionNumber++;
                });
                print(questionNumber);
              },
            ),
          ),
        ),
        Row(
          children: scorkeeper,
        )
      ],
    );
  }
}

// this is a test line

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
//This is sahana
//hrllo
//from aashlin

// i add this line to the file 

