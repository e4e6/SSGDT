import 'package:flutter/material.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:jindan/models/result_model/result_item.dart';
import 'package:jindan/models/result_model/result_model.dart';

class ResultController with ChangeNotifier{
  double score = 0.0;
  int index = 0;
  List<ResultItem> resultList = ResultModel().healthAgeResultItems;

  void setScore({required List<QuestionBundleItem>questionBundleList}){
    double _newScore = 0.0;
    for (int i=0; i<questionBundleList.length; i++) {
      _newScore += questionBundleList[i].initialScore;
      for (int j = 0; j < questionBundleList[i].questionList.length; j++) {
        List<QuestionItem> questionList = questionBundleList[i].questionList;
        if (questionList[j].isChecked == true) _newScore += questionList[j].score;
      }
    }
    score = _newScore;
    notifyListeners();
  }

  void setIndex({required double score}){
    if(score >= 15 ) index = 0;
    if(score >= 5 && score<15) index = 1;
    if(score >= -3 && score<5) index = 2;
    if(score >= -7 && score<-3) index = 3;
    if(score<-7) index = 4;
    notifyListeners();
  }

}