import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:provider/provider.dart';

class SingleQuestionWidget extends StatelessWidget {
  SingleQuestionWidget({
    Key? key,
    required this.questionBundleIndex,
    required this. questionIndex,
  }) : super(key: key);

  int questionBundleIndex;
  int questionIndex;

  @override
  Widget build(BuildContext context) {
    QuestionController questionControllerWatch =
    Provider.of<QuestionController>(context, listen: true);

    QuestionBundleItem questionBundleItem = questionControllerWatch.questionBundleList[questionBundleIndex];
    QuestionItem questionItem = questionBundleItem.questionList[questionIndex];

    return Row(
      children: [
        Checkbox(
          value: questionItem.isChecked,

          onChanged: (value){
            questionControllerWatch.changeQuestionCheckboxValue(questionBundleIndex: questionBundleIndex, questionIndex: questionIndex);
            print('클릭됨: ${questionIndex}');
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
    );
  }
}