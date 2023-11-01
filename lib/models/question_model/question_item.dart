import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_item.freezed.dart';

@freezed
class QuestionItem with _$QuestionItem {
  factory QuestionItem(
      {@Default(0) double score,
      @Default("[item:]질문 내용 추가 필요") String questionText,
      @Default(false) bool isChecked,
      }) = _QuestionItem;
}
