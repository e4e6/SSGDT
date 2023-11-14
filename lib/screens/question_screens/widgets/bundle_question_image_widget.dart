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
        questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleListIndex].imagePath,
      height:180
          // 기본 상태로 추가한 이미지 question_mark.png 는 높이폭 비율이 같음
        // 반면 기존 이미지들은 높이에 비해 폭이 넓음
        // 그래서 폭에 기준을 맞추면 앱에서 (반응형 ui로 디자인되지 않았기 때문에) overflow가 발생함
        // 그래서 기준을 높이, 폭 중에서 짧은쪽인 높이에 맞춰 overflow가 일어나지 않도록 함
        // 근본적인 해결 방안은 아니지만 일단 임시방편으로 이렇게 해둠
      ),
    );
  }
}