import 'package:flutter/material.dart';
import 'package:jindan/controller/question_controller.dart';
import 'package:jindan/controller/result_controller.dart';
import 'package:jindan/screens/start_screen.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => QuestionController()),
      ChangeNotifierProvider(create: (_) => ResultController()),
    ],
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StartScreen(),
    ),);
  }
}
