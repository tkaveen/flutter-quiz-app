import 'package:flutter/material.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/screens/quiz/components/progress_bar.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.cover),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Column(
              children: [
                Container(
                  height: 20,
                ),
                ProgressBar()
              ],
            ),
          ),
        )
      ],
    );
  }
}
