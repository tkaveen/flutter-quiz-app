import 'package:flutter/material.dart';
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
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}
