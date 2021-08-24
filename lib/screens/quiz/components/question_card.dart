import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:quizapp/models/Questions.dart';

import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key key, @required this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: kDefaultPadding,),
      margin: EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 30),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ...List.generate(
              question.options.length,
              (index) => Option(
                    index: index,
                    text: question.options[index],
                    press: () {},
                  ))
        ],
      ),
    );
  }
}
