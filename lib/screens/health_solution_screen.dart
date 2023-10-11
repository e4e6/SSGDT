import 'package:flutter/material.dart';

class HealthSolutionScreen extends StatefulWidget {
  const HealthSolutionScreen({Key? key}) : super(key: key);

  @override
  State<HealthSolutionScreen> createState() => _HealthSolutionState();
}

class _HealthSolutionState extends State<HealthSolutionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: []),
      ),
    );
  }
}

class SolutionCard extends StatelessWidget {
  SolutionCard(
      {Key? key, required this.width, required this.height, required this.text})
      : super(key: key);
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
