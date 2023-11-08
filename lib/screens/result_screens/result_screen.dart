import 'package:flutter/material.dart';
import 'package:jindan/controller/result_controller.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/screens/result_screens/widgets/result_image_widget.dart';
import 'package:jindan/screens/result_screens/widgets/result_text_widget.dart';
import 'package:provider/provider.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}
class _ResultScreenState extends State<ResultScreen> {
  var backgroundColor = Colors.grey[200];
  double mainWidth = 300.0;
  double imageContainerHeight = 200.0;
  double sizedBoxHeightHigh = 100.0;
  double sizedBoxHeightLow = 20;

  @override
  void initState() {
    ResultController resultControllerListen =
    Provider.of<ResultController>(context, listen: false);
    QuestionController questionControllerListen =
    Provider.of<QuestionController>(context, listen: false);
    super.initState();

    resultControllerListen.setScore(questionBundleList: questionControllerListen.questionBundleList);
    resultControllerListen.setIndex(score: resultControllerListen.score);
  }

  @override
  Widget build(BuildContext context) {
    ResultController resultControllerWatch =
    Provider.of<ResultController>(context, listen: true);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: sizedBoxHeightHigh,),
            ResultImageWidget(
                width: 320,
                image: resultControllerWatch.resultList[resultControllerWatch.index].imagePath),
            SizedBox(height: sizedBoxHeightLow,),
            ResultTextWidget(age: resultControllerWatch.score,
                explanation: resultControllerWatch.resultList[resultControllerWatch.index].resultText),
        ],),
      )
    );
  }
}

