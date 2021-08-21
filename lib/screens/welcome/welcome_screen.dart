import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // children: [WebsafeSvg.asset("assets/icons/bg.svg")],
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    "Quiz",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your Details",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1C2341),
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: Colors.white70),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  Spacer(),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
