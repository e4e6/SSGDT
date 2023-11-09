import 'package:flutter/material.dart';
import 'package:jindan/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'controller/question_controller.dart';
import 'controller/result_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => QuestionController()),
      ChangeNotifierProvider(create: (_) => ResultController()),
    ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeScreen(),
      ),);
  }
}
