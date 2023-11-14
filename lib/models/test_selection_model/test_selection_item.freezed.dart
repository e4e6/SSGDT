// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_selection_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestSelectionItem {
  String get questionTitle => throw _privateConstructorUsedError;
  List<dynamic> get Test => throw _privateConstructorUsedError;
  List<QuestionBundleItem> get questionBundleList =>
      throw _privateConstructorUsedError;
  int get numberOfQuestions => throw _privateConstructorUsedError;
  int get expectedTimeInMinutes => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestSelectionItemCopyWith<TestSelectionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestSelectionItemCopyWith<$Res> {
  factory $TestSelectionItemCopyWith(
          TestSelectionItem value, $Res Function(TestSelectionItem) then) =
      _$TestSelectionItemCopyWithImpl<$Res, TestSelectionItem>;
  @useResult
  $Res call(
      {String questionTitle,
      List<dynamic> Test,
      List<QuestionBundleItem> questionBundleList,
      int numberOfQuestions,
      int expectedTimeInMinutes,
      String imagePath});
}

/// @nodoc
class _$TestSelectionItemCopyWithImpl<$Res, $Val extends TestSelectionItem>
    implements $TestSelectionItemCopyWith<$Res> {
  _$TestSelectionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? Test = null,
    Object? questionBundleList = null,
    Object? numberOfQuestions = null,
    Object? expectedTimeInMinutes = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      Test: null == Test
          ? _value.Test
          : Test // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      questionBundleList: null == questionBundleList
          ? _value.questionBundleList
          : questionBundleList // ignore: cast_nullable_to_non_nullable
              as List<QuestionBundleItem>,
      numberOfQuestions: null == numberOfQuestions
          ? _value.numberOfQuestions
          : numberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      expectedTimeInMinutes: null == expectedTimeInMinutes
          ? _value.expectedTimeInMinutes
          : expectedTimeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestSelectionItemImplCopyWith<$Res>
    implements $TestSelectionItemCopyWith<$Res> {
  factory _$$TestSelectionItemImplCopyWith(_$TestSelectionItemImpl value,
          $Res Function(_$TestSelectionItemImpl) then) =
      __$$TestSelectionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionTitle,
      List<dynamic> Test,
      List<QuestionBundleItem> questionBundleList,
      int numberOfQuestions,
      int expectedTimeInMinutes,
      String imagePath});
}

/// @nodoc
class __$$TestSelectionItemImplCopyWithImpl<$Res>
    extends _$TestSelectionItemCopyWithImpl<$Res, _$TestSelectionItemImpl>
    implements _$$TestSelectionItemImplCopyWith<$Res> {
  __$$TestSelectionItemImplCopyWithImpl(_$TestSelectionItemImpl _value,
      $Res Function(_$TestSelectionItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? Test = null,
    Object? questionBundleList = null,
    Object? numberOfQuestions = null,
    Object? expectedTimeInMinutes = null,
    Object? imagePath = null,
  }) {
    return _then(_$TestSelectionItemImpl(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      Test: null == Test
          ? _value._Test
          : Test // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      questionBundleList: null == questionBundleList
          ? _value._questionBundleList
          : questionBundleList // ignore: cast_nullable_to_non_nullable
              as List<QuestionBundleItem>,
      numberOfQuestions: null == numberOfQuestions
          ? _value.numberOfQuestions
          : numberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      expectedTimeInMinutes: null == expectedTimeInMinutes
          ? _value.expectedTimeInMinutes
          : expectedTimeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TestSelectionItemImpl implements _TestSelectionItem {
  _$TestSelectionItemImpl(
      {this.questionTitle = "[question_bundle_item:]제목 추가 필요",
      required final List<dynamic> Test,
      final List<QuestionBundleItem> questionBundleList = const [],
      this.numberOfQuestions = 0,
      this.expectedTimeInMinutes = 0,
      this.imagePath = "assets/image/question_mark.png"})
      : _Test = Test,
        _questionBundleList = questionBundleList;

  @override
  @JsonKey()
  final String questionTitle;
  final List<dynamic> _Test;
  @override
  List<dynamic> get Test {
    if (_Test is EqualUnmodifiableListView) return _Test;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Test);
  }

  final List<QuestionBundleItem> _questionBundleList;
  @override
  @JsonKey()
  List<QuestionBundleItem> get questionBundleList {
    if (_questionBundleList is EqualUnmodifiableListView)
      return _questionBundleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionBundleList);
  }

  @override
  @JsonKey()
  final int numberOfQuestions;
  @override
  @JsonKey()
  final int expectedTimeInMinutes;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'TestSelectionItem(questionTitle: $questionTitle, Test: $Test, questionBundleList: $questionBundleList, numberOfQuestions: $numberOfQuestions, expectedTimeInMinutes: $expectedTimeInMinutes, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestSelectionItemImpl &&
            (identical(other.questionTitle, questionTitle) ||
                other.questionTitle == questionTitle) &&
            const DeepCollectionEquality().equals(other._Test, _Test) &&
            const DeepCollectionEquality()
                .equals(other._questionBundleList, _questionBundleList) &&
            (identical(other.numberOfQuestions, numberOfQuestions) ||
                other.numberOfQuestions == numberOfQuestions) &&
            (identical(other.expectedTimeInMinutes, expectedTimeInMinutes) ||
                other.expectedTimeInMinutes == expectedTimeInMinutes) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionTitle,
      const DeepCollectionEquality().hash(_Test),
      const DeepCollectionEquality().hash(_questionBundleList),
      numberOfQuestions,
      expectedTimeInMinutes,
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestSelectionItemImplCopyWith<_$TestSelectionItemImpl> get copyWith =>
      __$$TestSelectionItemImplCopyWithImpl<_$TestSelectionItemImpl>(
          this, _$identity);
}

abstract class _TestSelectionItem implements TestSelectionItem {
  factory _TestSelectionItem(
      {final String questionTitle,
      required final List<dynamic> Test,
      final List<QuestionBundleItem> questionBundleList,
      final int numberOfQuestions,
      final int expectedTimeInMinutes,
      final String imagePath}) = _$TestSelectionItemImpl;

  @override
  String get questionTitle;
  @override
  List<dynamic> get Test;
  @override
  List<QuestionBundleItem> get questionBundleList;
  @override
  int get numberOfQuestions;
  @override
  int get expectedTimeInMinutes;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$TestSelectionItemImplCopyWith<_$TestSelectionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
