import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/screens/question_screens/widgets/single_question_widget.dart';
import 'package:provider/provider.dart';

class BundleQuestionWidget extends StatefulWidget {
  BundleQuestionWidget({Key? key,})
      : super(key: key);

  @override
  State<BundleQuestionWidget> createState() => _BundleQuestionWidgetState();
}

class _BundleQuestionWidgetState extends State<BundleQuestionWidget> {
  @override
  Widget build(BuildContext _) {
    final questionControllerWatch = _.watch<QuestionController>();
    final questionControllerRead = _.read<QuestionController>();

    QuestionBundleItem questionBundleItem = questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleListIndex];

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.all(20.0),
          curve: Curves.easeIn,
          width: MediaQuery.of(context).size.width - 40,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      text: TextSpan(
                        text: questionBundleItem.isMultipleSelectionsAllowed ? '${questionBundleItem.questionTitle}(복수선택)' : questionBundleItem.questionTitle,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: questionBundleItem.questionList.length,
                itemBuilder: (BuildContext _, int questionIndex) {
                  return SingleQuestionWidget(
                    questionIndex: questionIndex,
                  );
                },
              ),
            ],
          )),
    );
  }
}