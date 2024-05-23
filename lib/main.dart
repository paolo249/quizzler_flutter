import 'package:flutter/material.dart';
import 'package:quizzler_flutter/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(child: QuizPage()),
    ));
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  List<String> questions = [
  'You can lead a cow down stairs but not up stairs.',
  'Approximately one quarter of human bones are in the feet.',
  'A slug\'s blood is green.'
  ];

  List<bool> answers = [false, true, true];
  
  Question q1 = Question(questionText: 'questions[0]', questionAnswer: true);
  
  int questionNumber = 0;
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(children: scoreKeeper),
          Expanded(
              flex: 5,
              child: Center(
                  child: Text(
                  questions[questionNumber],
                style: TextStyle(fontSize: 25.0, color: Colors.white),
                // textAlign: TextAlign.center,
              ))),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 100.0, left: 10.0, right: 10.0),
                child: TextButton(
                  onPressed: () {
                    // print('Button 1');
                    // setState(() {
                    //    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                    // });
                    setState(() {
                      if(questionNumber == 2){
                        return;
                      }
                      else{questionNumber++;}
                      
                    });
                   
                  },
                  child:
                      Text('True', style: TextStyle(color: Colors.green)),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 100.0, left: 10.0, right: 10.0),
                // padding: const EdgeInsets.all(15.0),
                child: TextButton(
                    onPressed: () {
                      // print('Button 2');
                      setState(() {

                        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                      });
                    },
                    child: Text('False')),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

/*
question 1: 'You can lead a cow down stairs but not up stairs.', false,
question 2: 'Approximately one quarter of human bones are in the feet.', true,
question 3: 'A slug\'s blood is green.', true,
*/
