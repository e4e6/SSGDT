

import 'package:flutter/material.dart';

class ResultImageWidget extends StatelessWidget {
  ResultImageWidget({Key? key, required this.width, required this.image}) : super(key: key);
  double width;
  String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
            image,
            width:this.width
        ),
      ),
    );
  }
}