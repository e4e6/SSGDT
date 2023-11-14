import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';

part 'test_selection_item.freezed.dart';

@freezed
class TestSelectionItem with _$TestSelectionItem {
  factory TestSelectionItem(
      {@Default("[question_bundle_item:]제목 추가 필요") String questionTitle,
        @Default([]) List<QuestionBundleItem> questionBundleList,
        @Default(0) int numberOfQuestions,
        @Default(0) int expectedTimeInMinutes,
        @Default("assets/image/question_mark.png") String imagePath,
      }) = _TestSelectionItem;
}