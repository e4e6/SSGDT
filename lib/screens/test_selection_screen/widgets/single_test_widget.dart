import 'package:flutter/material.dart';

class SingleTestWidget extends StatelessWidget {
  SingleTestWidget({
    Key? key,
    required this.imagePath,
    required this.boxWidth,
    required this.boxHeight,
    required this.title,
    required this.duration,
    required this.questionCount,
    required this.onTap,
  }) : super(key: key);

  final String imagePath;
  final double boxWidth;
  final double boxHeight;
  final String title;
  final String duration;
  final String questionCount;
  void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(boxHeight / 10),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            Container(
              width: boxWidth * 1/3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(boxHeight / 10),
                  bottomLeft: Radius.circular(boxHeight / 10),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),

            SizedBox(width: 10),

            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '검사소요시간: $duration',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '문항수: $questionCount',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

