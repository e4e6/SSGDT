import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_item.freezed.dart';

@freezed
class ResultItem with _$ResultItem {
  factory ResultItem(
      {@Default("[result_item:]결과 내용 추가 필요") String resultText,
        @Default(0.0) double resultRating,
        @Default("[result_item:]이미지 주소 추가 필요") String imagePath,
      }) = _ResultItem;
}
