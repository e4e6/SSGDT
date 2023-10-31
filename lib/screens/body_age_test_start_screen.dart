import 'package:flutter/material.dart';
import 'package:jindan/screens/question_screens/question_screen.dart';

class BodyAgeTestStartScreen extends StatefulWidget {
  const BodyAgeTestStartScreen({Key? key}) : super(key: key);

  @override
  State<BodyAgeTestStartScreen> createState() => _BodyAgeTestStartScreenState();
}

class _BodyAgeTestStartScreenState extends State<BodyAgeTestStartScreen> {
  double mainWidth = 300.0;
  double imageContainerHeight = 400.0;
  double sizedBoxHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: sizedBoxHeight,),
            RoundedShadowContainer(width: mainWidth, height: imageContainerHeight, text: 'Image: HowOldAreYou?',),
            SizedBox(height: 30,),
            RoundedShadowButton(text: '시작',height: 80,width: mainWidth,)
          ],
        ),
      )

    );
  }
}

class RoundedShadowContainer extends StatelessWidget {
  RoundedShadowContainer({Key? key, required this.width,required this.height, required this.text}) : super(key: key);
  double width;
  double height;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // 둥글게 만들기 위한 BorderRadius 설정
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // 그림자 색상 설정
            spreadRadius: 5, // 그림자 확산 범위
            blurRadius: 7, // 그림자 흐릿함 정도
            offset: Offset(0, 3), // 그림자 위치 (x, y)
          ),
        ],
        color: Colors.white, // 컨테이너의 배경색 설정
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class RoundedShadowButton extends StatelessWidget {
  RoundedShadowButton({Key? key, required this.width,required this.height, required this.text}) : super(key: key);
  double width;
  double height;
  String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => QuestionScreen(),));
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // 둥글게 만들기 위한 BorderRadius 설정
        ),
        elevation: 5, // 그림자 높이
        shadowColor: Colors.grey.withOpacity(0.5), // 그림자 색상 설정
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}