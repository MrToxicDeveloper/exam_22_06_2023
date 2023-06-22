import 'package:exam_22_06_2023/screens/final/view/final_screen.dart';
import 'package:exam_22_06_2023/screens/home/provider/home_provider.dart';
import 'package:exam_22_06_2023/screens/home/view/home_screen.dart';
import 'package:exam_22_06_2023/screens/question/view/question.dart';
import 'package:exam_22_06_2023/screens/splesh/view/splesh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        initialRoute: 'splesh',
        routes: {
          '/': (context) => HomeScreen(),
          'splesh': (context) => Splesh(),
          'que': (context) => QuestionScreen(),
          'final': (context) => FinalScreen(),
        },
      ),
    ),
  );
}
