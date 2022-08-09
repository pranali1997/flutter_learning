import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex =0;
  void answerQuestions() {
    questionIndex = questionIndex+1;
    print(questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      "what\'s your favorite color?",
      "What\'s your favorite animal?",
      "what\'s your favorite book?",
      "what's your favorite hobby?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestions , child: Text('Answer 1')),
            ElevatedButton(onPressed: answerQuestions, child: Text('answer 2')),
            ElevatedButton(onPressed: answerQuestions, child: Text('answer 3')),
          ],
        ),
      ),
    );
  }
}
