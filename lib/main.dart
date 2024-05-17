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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 5, child: Text('hELLO ')),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                onPressed: () {
                  print('Button 1');
                },
                child: Text('Button 1', style: TextStyle(color: Colors.green)),
              )),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        print('Button 2');
                      },
                      child: Text('Button 2'))),
            ],
          ),
        ],
      ),
    );
  }
}
