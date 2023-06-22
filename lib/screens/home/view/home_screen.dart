import 'package:exam_22_06_2023/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "QuizStorm",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              child: Image.asset("asset/images/quiz.jpg"),
            )),
            Expanded(
                child: Container(
              alignment: Alignment.center,
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushReplacementNamed(context, 'que');
                  }, child: Text("Start")),
            )),
          ],
        ),
      ),
    );
  }
}
