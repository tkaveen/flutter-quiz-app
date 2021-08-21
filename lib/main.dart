import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz/quiz_screen.dart';
import 'package:quizapp/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        // primarySwatch: Colors.blue,
      ),
      // theme: ThemeData.dark(),
      // home: WelcomeScreen(),
      home: QuizScreen(),
    );
  }
}
