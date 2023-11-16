import 'package:flutter/material.dart';
import 'package:jindan/controller/result_controller.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/screens/result_screen/widgets/re_start_button.dart';
import 'package:jindan/screens/result_screen/widgets/result_image_widget.dart';
import 'package:jindan/screens/result_screen/widgets/result_text_widget.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}
class _ResultScreenState extends State<ResultScreen> {
  var backgroundColor = Colors.grey[200];
  double sizedBoxHeightHigh = 100.0;
  double sizedBoxHeightLow = 20.0;

  @override
  void initState() {
    final questionControllerRead = context.read<QuestionController>();
    final resultControllerRead = context.read<ResultController>();
    super.initState();

    resultControllerRead.setScore(questionBundleList: questionControllerRead.questionBundleList);
    resultControllerRead.setIndex(score: resultControllerRead.score);
  }

  @override
  Widget build(BuildContext _) {
    final resultControllerRead = _.read<ResultController>();

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: sizedBoxHeightHigh,),
            ResultImageWidget(
                width: 320,
                image: resultControllerRead.resultList[resultControllerRead.index].imagePath),
            SizedBox(height: sizedBoxHeightLow,),
            ResultTextWidget(age: resultControllerRead.score,
                explanation: resultControllerRead.resultList[resultControllerRead.index].resultText),
            SizedBox(height: sizedBoxHeightLow,),

            ReStartButton(width: 300, height: 80, text: '다시 검사하기'),
          ],
        ),
      )
    );
  }
}

