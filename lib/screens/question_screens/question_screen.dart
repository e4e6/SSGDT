import 'package:flutter/material.dart';
import 'package:jindan/config/constant.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/screens/body_age_result_screen.dart';
import 'package:jindan/screens/question_screens/widgets/bundle_question_widget.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext _) {
    QuestionController questionControllerWatch =
        Provider.of<QuestionController>(_, listen: true);
    int questionBundleIndex;

    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          BundleQuestionWidget(questionBundleIndex: 0),
        ],
      ),
    );
  }
}
