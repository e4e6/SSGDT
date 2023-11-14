import 'package:flutter/material.dart';
import 'package:jindan/models/test_selection_model/test_selection_item.dart';
import 'package:jindan/models/test_selection_model/test_selection_model.dart';

class TestSelectionController with ChangeNotifier {
  List<TestSelectionItem> testSelectionItemList = TestSelectionModel().testSelectionItemList;
  int testSelectionItemListIndex = 0;
}