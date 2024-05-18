import 'package:flutter/material.dart';

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
  List<Widget> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(children: scoreKeeper),
          const Expanded(
              flex: 5,
              child: Center(
                  child: Text(
                'This is where the question text will go. ',
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
                    setState(() {
                       scoreKeeper.add(Icon(Icons.check, color: Colors.green));
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
