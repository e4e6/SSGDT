import 'package:flutter/material.dart';
import 'package:jindan/controller/test_selection_controller.dart';
import 'package:provider/provider.dart';


class SingleTestWidget extends StatefulWidget {
  SingleTestWidget({Key? key}) : super(key: key);

  @override
  State<SingleTestWidget> createState() => _SingleTestWidgetState();
}

class _SingleTestWidgetState extends State<SingleTestWidget> {
  @override
  Widget build(BuildContext _) {
    final testSelectionControllerWatch = _.watch<TestSelectionController>();
    final testSelectionControllerRead = _.read<TestSelectionController>();

    return Container(
      width: 320,
      height: 180,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                  testSelectionControllerRead.testSelectionItemList[testSelectionControllerRead.testSelectionItemListIndex].imagePath,
              ),

          ),
          Expanded(
            flex: 5,
            child: Text('saf')
          ),
        ],
      ),
    );
  }
}
