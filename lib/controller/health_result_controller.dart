import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';

class HelthResultController with ChangeNotifier{
  double _score = 0.0;
  double getScore({required List<QuestionBundleItem>questionBundleList}) {
    _score = 0.0;
    for (int i=0; i<questionBundleList.length; i++) {
      _score += questionBundleList[i].initialScore;
      for (int j = 0; j < questionBundleList[i].questionList.length; j++) {
        List<QuestionItem> questionList = questionBundleList[i].questionList;
        if (questionList[j].isChecked == true) _score += questionList[j].score;
      }
    }
    return _score;
  }

}