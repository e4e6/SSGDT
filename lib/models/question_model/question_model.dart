import 'dart:convert' show json;
import 'package:flutter/services.dart' show rootBundle;
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';

class QuestionModel {

  Future<List<QuestionBundleItem>> loadQuestionData() async {
    late List<dynamic> _jsonData;
    List<QuestionItem> _tempQuestionBundle = [];
    List<QuestionBundleItem> _questionBundleList = [];

    final String jsonString =
        await rootBundle.loadString('assets/json/question_data.json');
    _jsonData = json.decode(jsonString);

    for (int i = 0; i < _jsonData.length; i++) {
      for (int j = 0; j < _jsonData[i]["질문 내용"].length; j++) {
        _tempQuestionBundle.add(QuestionItem(
          questionText: _jsonData[i]["질문 내용"][j],
          score: _jsonData[i]["점수"][j],));
      }
      _questionBundleList.add(QuestionBundleItem(questionTitle: _jsonData[i]["제목"], questionList: _tempQuestionBundle,));
      _tempQuestionBundle=[];
    }
    print('in question_model 함수  -> _questionBundleList[3]:::');
    print(_questionBundleList[3]);
    return(_questionBundleList);
  }
}
