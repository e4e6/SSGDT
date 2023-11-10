import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_selection_item.freezed.dart';

@freezed
class TestSelectionItem with _$TestSelectionItem {
  factory TestSelectionItem(
      {@Default("[question_bundle_item:]제목 추가 필요") String questionTitle,
        required List<dynamic> Test,
        @Default(0) int numberOfQuestions,
        @Default(0) int expectedTimeInMinutes,
        @Default("[test_selection_item:]이미지 주소 추가 필요") String imagePath,
      }) = _TestSelectionItem;
}