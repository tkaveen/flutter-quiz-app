import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/question_controller.dart';
import '../../../constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getRightIcon() {
            return getRightIcon() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              // height: 80,
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: getRightColor()),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1} $text",
                    style: TextStyle(color: getRightColor(), fontSize: 20),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        color: getRightColor() == kGrayColor
                            ? Colors.transparent
                            : getRightColor(),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: getRightColor())),
                    child: getRightIcon() == kGrayColor
                        ? null
                        : Icon(
                            getRightIcon(),
                            color: Colors.white,
                            size: 16,
                          ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
