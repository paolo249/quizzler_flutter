import 'package:flutter/material.dart';
// import 'package:quizzler_flutter/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
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
  QuizBrain quizBrain = QuizBrain();

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      // if (scoreKeeper.length <= 12) {
      /*
      TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. 
      1) If so, show an alert using rFlutter_alert
      2) reset questionNumber
      3) empty out the scorekeeper
      */

        if (userPickedAnswer == correctAnswer) {
          print('user got it right!');

          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
        } else {
          print('user got it wrong!');
          scoreKeeper.add(const Icon(Icons.highlight_off, color: Colors.red));
        }
        quizBrain.nextQuestion();
        quizBrain.isFinished();
      // }
    });
  }


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
                quizBrain.getQuestionText(),
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ))),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 100.0, left: 10.0, right: 10.0),
                child: TextButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  child: Text('True', style: TextStyle(color: Colors.green)),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 100.0, left: 10.0, right: 10.0),
                child: TextButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text('False', style: TextStyle(color: Colors.red))),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

