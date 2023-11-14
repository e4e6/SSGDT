import 'package:flutter/material.dart';

class ResultTextWidget extends StatelessWidget {
  ResultTextWidget({Key? key, required this.age, required this.explanation}) : super(key: key);
  double age;
  String explanation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            text: TextSpan(
              text: age >= 0 ? '+${age}살' : '${age}살' ,
              style: TextStyle(
                fontSize: 80, // 텍스트 크기
                fontWeight: FontWeight.bold, // 텍스트 굵기
                color: Colors.black, // 텍스트 색상
                letterSpacing: 1.2, // 글자 간격 조정
                fontStyle: FontStyle.italic, // 이탤릭 스타일
                fontFamily: 'Arial', // 폰트 설정
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60), // 좌우 패딩을 16으로 설정
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 8,
            text: TextSpan(
              text: explanation,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.2,
                fontStyle: FontStyle.italic,
                fontFamily: 'Arial',
              ),
            ),
          ),
        )
      ],
    );
  }
}