import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: _controller.nextQuestion,
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
