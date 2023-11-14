import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:provider/provider.dart';

class SingleQuestionWidget extends StatelessWidget {
  SingleQuestionWidget({
    Key? key,
    required this. questionIndex,
  }) : super(key: key);

  int questionIndex;

  @override
  Widget build(BuildContext _) {
    final questionControllerWatch = _.watch<QuestionController>();

    QuestionBundleItem questionBundleItem = questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleListIndex];
    QuestionItem questionItem = questionBundleItem.questionList[questionIndex];

    return InkWell(
      onTap:(){
        questionControllerWatch.CheckboxHandler(questionControllerWatch.questionBundleListIndex, questionIndex);
      },
      child: Row(
        children: [
          Checkbox(
            value: questionItem.isChecked,
            onChanged: (value) {
              questionControllerWatch.CheckboxHandler(questionControllerWatch.questionBundleListIndex, questionIndex);
            }
          ),
          Flexible(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              // strutStyle: StrutStyle(fontSize: 16.0),
              text: TextSpan(
                  text: questionItem.questionText,
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
            ),
          )
        ],
      ),
    );
  }
}