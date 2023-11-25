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
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
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
