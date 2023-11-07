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
  Widget build(BuildContext _) {

    QuestionController questionControllerWatch =
        Provider.of<QuestionController>(_, listen: true);
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),

          BundleQuestionImageWidget(),

          SizedBox(
            height: 20,
          ),

          BundleQuestionWidget(),

          const Expanded(
            child: Center(child: null),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    questionControllerWatch.changeToPreviousQuestionBundle();
                  },
                  child: Text(
                    ' 이전 ',
                    style: TextStyle(fontSize: 20),
                  )
              ),
              SizedBox(width: 80,),
              ElevatedButton(
                  onPressed: () {
                    if(questionControllerWatch.questionBundleIndex == questionControllerWatch.questionBundleList.length-1)
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultScreen(),)
                      );
                    questionControllerWatch.changeToNextQuestionBundle();
                  },
                  child: Text(
                    questionControllerWatch.questionBundleIndex == questionControllerWatch.questionBundleList.length-1
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
