import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_item.freezed.dart';

@freezed
class QuestionItem with _$QuestionItem {
  factory QuestionItem(
      {@Default(0) double score,
      @Default("질문 내용") String questionText,
      @Default(false) isChecked,
      }) = _QuestionItem;
}
