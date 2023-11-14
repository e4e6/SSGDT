import 'package:flutter/material.dart';
import 'package:jindan/config/constant.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/screens/result_screens/result_screen.dart';
import 'package:jindan/screens/question_screens/widgets/bundle_question_image_widget.dart';
import 'package:jindan/screens/question_screens/widgets/bundle_question_widget.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    final questionControllerRead = context.read<QuestionController>();
    super.initState();
    questionControllerRead.ChangeQuestionBundleListandIndexToInitialState();
  }

  @override
  Widget build(BuildContext _) {
    final questionControllerWatch = _.watch<QuestionController>();
    final questionControllerRead = _.read<QuestionController>();

    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: BundleQuestionImageWidget(),
          ),

          SizedBox(
            height: 20,
          ),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: BundleQuestionWidget(
              key: ValueKey<int>(questionControllerWatch.questionBundleListIndex),
            ),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              );
            },
          ),

          const Expanded(
            child: Center(child: null),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: questionControllerWatch.questionBundleListIndex != 0,
                child: ElevatedButton(
                  onPressed: () {
                    questionControllerWatch.changeToPreviousQuestionBundle();
                  },
                  child: Text(
                    ' 이전 ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Visibility(
                visible: questionControllerWatch.questionBundleListIndex == 0,
                child: SizedBox(width:94),
              ),
              SizedBox(width: 80,),
              ElevatedButton(
                  onPressed: () {
                    if(questionControllerWatch.questionBundleListIndex == questionControllerWatch.questionBundleList.length-1)
                      questionControllerWatch.openResultScreen(context);
                    questionControllerWatch.changeToNextQuestionBundle();
                  },
                  child: Text(
                    questionControllerWatch.questionBundleListIndex == questionControllerWatch.questionBundleList.length-1
                      ? ' 제출 '
                      : ' 다음 '
                    ,
                    style: TextStyle(fontSize: 20),
                  )
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 40),),
        ],
      ),
    );
  }
}
