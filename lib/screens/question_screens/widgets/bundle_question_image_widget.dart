import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:provider/provider.dart';

class BundleQuestionImageWidget extends StatefulWidget {
  const BundleQuestionImageWidget({Key? key}) : super(key: key);

  @override
  State<BundleQuestionImageWidget> createState() => _BundleQuestionImageWidgetState();
}

class _BundleQuestionImageWidgetState extends State<BundleQuestionImageWidget> {
  @override
  Widget build(BuildContext _) {
    QuestionController questionControllerWatch =
    Provider.of<QuestionController>(_, listen: true);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleIndex].imagePath,
      width:MediaQuery.of(context).size.width - 40
      ),
    );
  }
}