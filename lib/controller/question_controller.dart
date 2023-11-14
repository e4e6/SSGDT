import 'package:flutter/material.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:jindan/models/question_model/question_model.dart';
import 'package:jindan/screens/question_screens/question_screen.dart';
import 'package:jindan/screens/result_screens/result_screen.dart';

class QuestionController with ChangeNotifier{
  int questionBundleIndex = 0;

  List<QuestionBundleItem> questionBundleList = QuestionModel().healthAgeQuestionBundle;

  void changeAllQuestionCheckboxValueToFalse({required int questionBundleIndex, required int questionIndex}) {
    final questionBundle = questionBundleList[questionBundleIndex];
    final question = questionBundle.questionList[questionIndex];

    // Toggle the checked state of the clicked checkbox
    final newQuestion = question.copyWith(isChecked: !question.isChecked);

    // Create a new list of questions with all checkboxes unchecked except the clicked one
    final updatedQuestionList = List<QuestionItem>.from(questionBundle.questionList).map((item) {
      return item.copyWith(isChecked: false);
    }).toList();


    // Update the question bundle with the updated question list
    final newQuestionBundle = questionBundle.copyWith(questionList: updatedQuestionList);
    questionBundleList[questionBundleIndex] = newQuestionBundle;

    notifyListeners();
  }

  void changeQuestionCheckboxValue({required int questionBundleIndex, required int questionIndex}) {
    final questionBundle = questionBundleList[questionBundleIndex];
    final question = questionBundle.questionList[questionIndex];

    final newQuestion = question.copyWith(isChecked: !question.isChecked);

    final newQuestionBundle = questionBundle.copyWith(
      questionList: List<QuestionItem>.from(questionBundle.questionList)
        ..[questionIndex] = newQuestion,
    );
    questionBundleList[questionBundleIndex] = newQuestionBundle;
    notifyListeners();
  }
  void CheckboxHandler(int questionBundleIndex, int questionIndex) {
    if (questionBundleList[questionBundleIndex].isMultipleSelectionsAllowed == false) {
      changeAllQuestionCheckboxValueToFalse(questionBundleIndex: questionBundleIndex, questionIndex: questionIndex);
    }
    changeQuestionCheckboxValue(questionBundleIndex: questionBundleIndex, questionIndex: questionIndex);
  }

  void changeToNextQuestionBundle() {
    questionBundleIndex < questionBundleList.length-1
        ? questionBundleIndex ++
        : questionBundleIndex = questionBundleList.length-1;
    notifyListeners();
  }
  void changeToPreviousQuestionBundle() {
    questionBundleIndex >0
        ? questionBundleIndex --
        : questionBundleIndex = 0;
    notifyListeners();
  }

  void ChangeQuestionBundleListandIndexToInitialState(){
    questionBundleList = QuestionModel().healthAgeQuestionBundle;
    questionBundleIndex = 0;
    notifyListeners();
  }

  void openQuestionScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => QuestionScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    ));
  }

  void openResultScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ResultScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    ));
  }
}