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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                ),
                ProgressBar(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text.rich(TextSpan(
                  text: "Question 1",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                        text: "/10",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSecondaryColor))
                  ],
                )),
                Divider(
                  thickness: 1.5,
                  color: Color(0xFF8B94BC),
                ),
                SizedBox(
                  height: kDefaultPadding,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
