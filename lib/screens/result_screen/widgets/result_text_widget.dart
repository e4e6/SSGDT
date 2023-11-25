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
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.2,
                fontStyle: FontStyle.italic,
                fontFamily: 'Arial',
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
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