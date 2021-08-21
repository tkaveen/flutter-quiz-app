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
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Let's Play the Quiz",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter the required information below",
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
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Text(
                        "Lets Start Quiz",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
