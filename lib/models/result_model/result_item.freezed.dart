// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultItem {
  String get questionText => throw _privateConstructorUsedError;
  double get resultRating => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultItemCopyWith<ResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultItemCopyWith<$Res> {
  factory $ResultItemCopyWith(
          ResultItem value, $Res Function(ResultItem) then) =
      _$ResultItemCopyWithImpl<$Res, ResultItem>;
  @useResult
  $Res call({String questionText, double resultRating, String imagePath});
}

/// @nodoc
class _$ResultItemCopyWithImpl<$Res, $Val extends ResultItem>
    implements $ResultItemCopyWith<$Res> {
  _$ResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? resultRating = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      resultRating: null == resultRating
          ? _value.resultRating
          : resultRating // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultItemImplCopyWith<$Res>
    implements $ResultItemCopyWith<$Res> {
  factory _$$ResultItemImplCopyWith(
          _$ResultItemImpl value, $Res Function(_$ResultItemImpl) then) =
      __$$ResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionText, double resultRating, String imagePath});
}

/// @nodoc
class __$$ResultItemImplCopyWithImpl<$Res>
    extends _$ResultItemCopyWithImpl<$Res, _$ResultItemImpl>
    implements _$$ResultItemImplCopyWith<$Res> {
  __$$ResultItemImplCopyWithImpl(
      _$ResultItemImpl _value, $Res Function(_$ResultItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = null,
    Object? resultRating = null,
    Object? imagePath = null,
  }) {
    return _then(_$ResultItemImpl(
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      resultRating: null == resultRating
          ? _value.resultRating
          : resultRating // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResultItemImpl implements _ResultItem {
  _$ResultItemImpl(
      {this.questionText = "[result_item:]결과 내용 추가 필요",
      this.resultRating = 0.0,
      this.imagePath = "[result_item:]이미지 주소 추가 필요"});

  @override
  @JsonKey()
  final String questionText;
  @override
  @JsonKey()
  final double resultRating;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'ResultItem(questionText: $questionText, resultRating: $resultRating, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultItemImpl &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.resultRating, resultRating) ||
                other.resultRating == resultRating) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionText, resultRating, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultItemImplCopyWith<_$ResultItemImpl> get copyWith =>
      __$$ResultItemImplCopyWithImpl<_$ResultItemImpl>(this, _$identity);
}

abstract class _ResultItem implements ResultItem {
  factory _ResultItem(
      {final String questionText,
      final double resultRating,
      final String imagePath}) = _$ResultItemImpl;

  @override
  String get questionText;
  @override
  double get resultRating;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$ResultItemImplCopyWith<_$ResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
