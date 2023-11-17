import 'package:flutter/material.dart';
import 'package:jindan/controller/test_selection_controller.dart';
import 'package:jindan/screens/question_screens/question_screen.dart';
import 'package:jindan/screens/test_selection_screen/widgets/single_test_widget.dart';
import 'package:provider/provider.dart';

class TestSelectionScreen extends StatefulWidget {
   TestSelectionScreen({Key? key}) : super(key: key);

  @override
  State<TestSelectionScreen> createState() => _TestSelectionScreenState();
}

class _TestSelectionScreenState extends State<TestSelectionScreen> {
  @override
  Widget build(BuildContext _) {
    final testSelectionControllerWatch = _.watch<TestSelectionController>();
    final testSelectionControllerRead = _.read<TestSelectionController>();

    double mainWidth = 300.0;
    double imageContainerHeight = 400.0;
    double sizedBoxHeight = 100.0;

    return Scaffold(
        appBar:
        AppBar(
          title: Text(
          '건강나이 테스트',
          style: TextStyle(
            fontWeight: FontWeight.bold, // 볼드 처리
          ),
        ),
          centerTitle: true, // 중앙 정렬
          elevation: 0.0,
          toolbarHeight: 50.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0), // 선의 높이 조절
            child: Divider(
              color: Colors.grey, // 선의 색상 조절
              height: 1.0, // 선의 두께 조절
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              SingleTestWidget(
                imagePath: testSelectionControllerRead.testSelectionItemList[0].imagePath,
                duration: '12min',
                title: '건강나이 테스트',
                questionCount: '10',
                boxHeight: 140,
                boxWidth: 320,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()),
                  );
                },
              ),
              SizedBox(height: 30,),
            ],
          ),
        )

    );

    //   Scaffold(
    //   body: ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: testSelectionControllerRead.testSelectionItemList.length,
    //     itemBuilder: (BuildContext _, int questionIndex) {
    //       return
    //     },
    //   ),
    // );
  }
}



class StartImageContainer extends StatelessWidget {
  StartImageContainer({Key? key, required this.width,required this.height, required this.text}) : super(key: key);
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
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/start_screen_image.png',
              width: 280,
            ),
          ],
        ),
      ),
    );
  }
}