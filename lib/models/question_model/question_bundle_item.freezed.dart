// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bundle_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionBundleItem {
  String get questionTitle => throw _privateConstructorUsedError;
  List<QuestionItem> get questionList => throw _privateConstructorUsedError;
  bool get isMultipleSelectionsAllowed => throw _privateConstructorUsedError;
  double get initialScore => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionBundleItemCopyWith<QuestionBundleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBundleItemCopyWith<$Res> {
  factory $QuestionBundleItemCopyWith(
          QuestionBundleItem value, $Res Function(QuestionBundleItem) then) =
      _$QuestionBundleItemCopyWithImpl<$Res, QuestionBundleItem>;
  @useResult
  $Res call(
      {String questionTitle,
      List<QuestionItem> questionList,
      bool isMultipleSelectionsAllowed,
      double initialScore,
      String imagePath});
}

/// @nodoc
class _$QuestionBundleItemCopyWithImpl<$Res, $Val extends QuestionBundleItem>
    implements $QuestionBundleItemCopyWith<$Res> {
  _$QuestionBundleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionList = null,
    Object? isMultipleSelectionsAllowed = null,
    Object? initialScore = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
      isMultipleSelectionsAllowed: null == isMultipleSelectionsAllowed
          ? _value.isMultipleSelectionsAllowed
          : isMultipleSelectionsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      initialScore: null == initialScore
          ? _value.initialScore
          : initialScore // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionBundleItemImplCopyWith<$Res>
    implements $QuestionBundleItemCopyWith<$Res> {
  factory _$$QuestionBundleItemImplCopyWith(_$QuestionBundleItemImpl value,
          $Res Function(_$QuestionBundleItemImpl) then) =
      __$$QuestionBundleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionTitle,
      List<QuestionItem> questionList,
      bool isMultipleSelectionsAllowed,
      double initialScore,
      String imagePath});
}

/// @nodoc
class __$$QuestionBundleItemImplCopyWithImpl<$Res>
    extends _$QuestionBundleItemCopyWithImpl<$Res, _$QuestionBundleItemImpl>
    implements _$$QuestionBundleItemImplCopyWith<$Res> {
  __$$QuestionBundleItemImplCopyWithImpl(_$QuestionBundleItemImpl _value,
      $Res Function(_$QuestionBundleItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionList = null,
    Object? isMultipleSelectionsAllowed = null,
    Object? initialScore = null,
    Object? imagePath = null,
  }) {
    return _then(_$QuestionBundleItemImpl(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
      isMultipleSelectionsAllowed: null == isMultipleSelectionsAllowed
          ? _value.isMultipleSelectionsAllowed
          : isMultipleSelectionsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      initialScore: null == initialScore
          ? _value.initialScore
          : initialScore // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionBundleItemImpl implements _QuestionBundleItem {
  _$QuestionBundleItemImpl(
      {this.questionTitle = "[question_bundle_item:]제목 추가 필요",
      required final List<QuestionItem> questionList,
      this.isMultipleSelectionsAllowed = false,
      this.initialScore = 0.0,
      this.imagePath = "[question_bundle_item:]이미지 주소 추가 필요"})
      : _questionList = questionList;

  @override
  @JsonKey()
  final String questionTitle;
  final List<QuestionItem> _questionList;
  @override
  List<QuestionItem> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  @JsonKey()
  final bool isMultipleSelectionsAllowed;
  @override
  @JsonKey()
  final double initialScore;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'QuestionBundleItem(questionTitle: $questionTitle, questionList: $questionList, isMultipleSelectionsAllowed: $isMultipleSelectionsAllowed, initialScore: $initialScore, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionBundleItemImpl &&
            (identical(other.questionTitle, questionTitle) ||
                other.questionTitle == questionTitle) &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            (identical(other.isMultipleSelectionsAllowed,
                    isMultipleSelectionsAllowed) ||
                other.isMultipleSelectionsAllowed ==
                    isMultipleSelectionsAllowed) &&
            (identical(other.initialScore, initialScore) ||
                other.initialScore == initialScore) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionTitle,
      const DeepCollectionEquality().hash(_questionList),
      isMultipleSelectionsAllowed,
      initialScore,
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionBundleItemImplCopyWith<_$QuestionBundleItemImpl> get copyWith =>
      __$$QuestionBundleItemImplCopyWithImpl<_$QuestionBundleItemImpl>(
          this, _$identity);
}

abstract class _QuestionBundleItem implements QuestionBundleItem {
  factory _QuestionBundleItem(
      {final String questionTitle,
      required final List<QuestionItem> questionList,
      final bool isMultipleSelectionsAllowed,
      final double initialScore,
      final String imagePath}) = _$QuestionBundleItemImpl;

  @override
  String get questionTitle;
  @override
  List<QuestionItem> get questionList;
  @override
  bool get isMultipleSelectionsAllowed;
  @override
  double get initialScore;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$QuestionBundleItemImplCopyWith<_$QuestionBundleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
