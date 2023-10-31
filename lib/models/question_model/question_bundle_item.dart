import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jindan/models/question_model/question_item.dart';

part 'question_bundle_item.freezed.dart';

@freezed
class QuestionBundleItem with _$QuestionBundleItem {
  factory QuestionBundleItem(
      {@Default("[item:]제목 추가 필요") String questionTitle,
        required List<QuestionItem> questionList,
        @Default(false) bool isMultipleSelectionsAllowed,
        @Default(0.0) double initialScore,
      }) = _QuestionBundleItem;
}
