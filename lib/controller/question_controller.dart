import 'package:flutter/material.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:jindan/models/question_model/question_model.dart';
class QuestionController with ChangeNotifier{
  final QuestionModel questionModel = QuestionModel();

  List<QuestionBundleItem> questionBundleList = [
    QuestionBundleItem(
      questionTitle: '식생활',
      questionList: [
        QuestionItem(questionText: '항상 싱겁게 먹는다(보통 사람은 소금을 더 쳐서 먹는 정도를 말함).'),
        QuestionItem(questionText: '신선한 과일이나 채소를 끼니마다 먹는다.'),
        QuestionItem(questionText: '검게 태운 음식을 먹지 않는다.'),
        QuestionItem(questionText: '식사를 규칙적으로 먹는다.'),
        QuestionItem(questionText: '간식을 먹지 않는다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '운동',
      questionList: [
        QuestionItem(questionText: '일주일에 3회 이상, 한 번에 30분 이상 운동한다.'),
        QuestionItem(questionText: '일주일에 3회 이상, 한 번에 30분 이상 운동하지 않는다.'),
        QuestionItem(questionText: '운동을 전혀 하지 않거나 월 3회 미만 한다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '흡연',
      questionList: [
        QuestionItem(questionText: '전혀 피운 적이 없거나 10년 전에 끊었다.'),
        QuestionItem(questionText: '5 년 전에 끊었다.'),
        QuestionItem(questionText: '1개월~5년 사이 끊었다.'),
        QuestionItem(questionText: '하루 1갑 미만.'),
        QuestionItem(questionText: '하루 1갑 이상.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '음주',
      questionList: [
        QuestionItem(questionText: '전혀 마시지 않는다.'),
        QuestionItem(questionText: '횟수와 관계없이 소주 2홉 반 병 이하로 마신다.'),
        QuestionItem(questionText: '일주일에 1~3회이고 한 번에 소주 2홉 1병 이상.'),
        QuestionItem(questionText: '일주일에 4회 이상, 한 번에 소주 2홉 1병 이상.'),
        QuestionItem(questionText: '2번과 3번 사이'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '스트레스',
      questionList: [
        QuestionItem(questionText: '지난 한달간 정신적으로나 육체적으로 감당하기 어려운 어려움을 느낀 적이 있습니까?'),
        QuestionItem(questionText: '지난 한달간 자신의 생활신념에 따라 살아가려고 애쓰다가 좌절을 느낀 적이 있습니까?'),
        QuestionItem(questionText: '지난 한달간 처한 환경이 인간답게 살아가는데 부족하다고 느낀 적이 있습니까?'),
        QuestionItem(questionText: '지난 한달간 미래에 대하여 불확실하게 느끼거나 불안해한 적이 있습니까?'),
        QuestionItem(questionText: '지난 한달간 할 일들이 너무 많아 정말 중요한 일들을 잊은 적이 있습니까?'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '연간 여행거리 / 위험한 직업',
      questionList: [
        QuestionItem(questionText: '서울~부산 거리의 10배 이하 / 일이 위험하지 않다.'),
        QuestionItem(questionText: '서울~부산 거리의 10배~19배 정도 / 일이 약간 위험하다.'),
        QuestionItem(questionText: '서울~부산 거리의 20배 이상 / 일이 위험하고 사고 가능성이 항상 있다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '운전 및 안전습관',
      questionList: [
        QuestionItem(questionText: '안전벨트를 항상 착용하고, 무슨 일을 할 때마다 안전에 주의한다.'),
        QuestionItem(questionText: '안전벨트를 항상 착용하지만, 무슨 일을 할 때마다 안전에 주의하지 않는다.'),
        QuestionItem(questionText: '안전벨트를 항상 착용하지 않고, 무슨 일을 할 때마다 안전에 주의하지 않는다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '건강검진',
      questionList: [
        QuestionItem(questionText: '2 년에 1회 이상 건강검진을 받는다.'),
        QuestionItem(questionText: '전혀 건강검진을 받지 않는다.'),
        QuestionItem(questionText: '2 년에 1회 이하로 건강검진을 받는다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'B형 간염 혹은 바이러스 보유자',
      questionList: [
        QuestionItem(questionText: '그렇다.'),
        QuestionItem(questionText: '아니다.'),
        QuestionItem(questionText: '모른다.'),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '비만도',
      questionList: [
        QuestionItem(questionText: '표준체중(이상 체중의 90~110%).'),
        QuestionItem(questionText: '과체중 혹은 저체중(이상 체중의 110~119%/80~90%).'),
        QuestionItem(questionText: '경도 비만 혹은 경도 저체중(이상 체중의 120~129%/75~80%).'),
        QuestionItem(questionText: '고도 비만 혹은 고도 저체중(이상 체중의 130% 이상/74% 이하).'),
      ],
    ),
  ];
}