// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionItem {
  double get score => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionItemCopyWith<QuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionItemCopyWith<$Res> {
  factory $QuestionItemCopyWith(
          QuestionItem value, $Res Function(QuestionItem) then) =
      _$QuestionItemCopyWithImpl<$Res, QuestionItem>;
  @useResult
  $Res call({double score, String questionText, bool isChecked});
}

/// @nodoc
class _$QuestionItemCopyWithImpl<$Res, $Val extends QuestionItem>
    implements $QuestionItemCopyWith<$Res> {
  _$QuestionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? questionText = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionItemImplCopyWith<$Res>
    implements $QuestionItemCopyWith<$Res> {
  factory _$$QuestionItemImplCopyWith(
          _$QuestionItemImpl value, $Res Function(_$QuestionItemImpl) then) =
      __$$QuestionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double score, String questionText, bool isChecked});
}

/// @nodoc
class __$$QuestionItemImplCopyWithImpl<$Res>
    extends _$QuestionItemCopyWithImpl<$Res, _$QuestionItemImpl>
    implements _$$QuestionItemImplCopyWith<$Res> {
  __$$QuestionItemImplCopyWithImpl(
      _$QuestionItemImpl _value, $Res Function(_$QuestionItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? questionText = null,
    Object? isChecked = null,
  }) {
    return _then(_$QuestionItemImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestionItemImpl implements _QuestionItem {
  _$QuestionItemImpl(
      {this.score = 0,
      this.questionText = "[item:]질문 내용 추가 필요",
      this.isChecked = false});

  @override
  @JsonKey()
  final double score;
  @override
  @JsonKey()
  final String questionText;
  @override
  @JsonKey()
  final bool isChecked;

  @override
  String toString() {
    return 'QuestionItem(score: $score, questionText: $questionText, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionItemImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, questionText, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      __$$QuestionItemImplCopyWithImpl<_$QuestionItemImpl>(this, _$identity);
}

abstract class _QuestionItem implements QuestionItem {
  factory _QuestionItem(
      {final double score,
      final String questionText,
      final bool isChecked}) = _$QuestionItemImpl;

  @override
  double get score;
  @override
  String get questionText;
  @override
  bool get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
