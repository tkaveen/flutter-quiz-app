import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {},
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
