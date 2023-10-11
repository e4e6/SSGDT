import 'package:flutter/material.dart';
import 'package:jindan/config/constant.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/models/question_model/question_bundle_item.dart';
import 'package:jindan/models/question_model/question_item.dart';
import 'package:jindan/screens/body_age_result_screen.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  @override
  Widget build(BuildContext _) {
    final QuestionController questionControllerWatch = Provider.of<QuestionController>(_, listen: false);
    // final TimeController timeControllerRead = Provider.of<TimeController>(_, listen: false);
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      body: Consumer<QuestionController>(builder:(context, questionController, _) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: false,
                  padding: EdgeInsets.only(bottom:100),
                  itemCount: questionControllerWatch.questionBundleList.length,
                  itemBuilder: (BuildContext _, int index) {
                    print('in question screen ListView: questionBundleList');
                    print(questionControllerWatch.questionBundleList);
                    return Column(
                      children: [
                        BundleQuestionWidget(
                          questionBundleItem: questionControllerWatch
                              .questionBundleList[index],),
                        SizedBox(height: 30,),
                      ],
                    );
                  },
                ),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BodyAgeResultScreen(),));
                });
              },
                  child: Text(' 제출 ', style: TextStyle(fontSize: 20),)),
            ],

          ),
        );
      }),
    );
  }
}

class SingleQuestionWidget extends StatelessWidget {
  SingleQuestionWidget({Key? key, required this.questionItem,}) : super(key: key);

  QuestionItem questionItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: questionItem.isChecked,
          onChanged: (value) {
          },
        ),
        Flexible(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            // strutStyle: StrutStyle(fontSize: 16.0),
            text: TextSpan(
                text:questionItem.questionText,style: TextStyle(color: Colors.black, fontSize: 16.0)
            ),
          ),
        )
      ],
    );
  }
}

class BundleQuestionWidget extends StatefulWidget {
  BundleQuestionWidget({Key? key, required this.questionBundleItem}) : super(key: key);

  final QuestionBundleItem questionBundleItem;

  @override
  State<BundleQuestionWidget> createState() => _BundleQuestionWidgetState();
}

class _BundleQuestionWidgetState extends State<BundleQuestionWidget> {

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.all(20.0),
          curve: Curves.easeIn,
          width: MediaQuery.of(context).size.width - 40,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5),
            ],
          ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.questionBundleItem.questionTitle, style: TextStyle(fontSize: 20)),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.questionBundleItem.questionItemList.length,
                itemBuilder: (BuildContext _, int index) {
                  return SingleQuestionWidget(questionItem: widget.questionBundleItem.questionItemList[index]);
                },
              ),
            ],
          )
      ),
    );
  }
}

