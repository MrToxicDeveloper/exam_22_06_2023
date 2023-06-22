import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  HomeProvider? proTrue;
  HomeProvider? proFalse;

  int i = 0;

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).apiCalling();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<HomeProvider>(context, listen: true);
    proFalse = Provider.of<HomeProvider>(context, listen: false);
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
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                  "${proTrue!.quiz!.results![i].question}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        proFalse!.answer.add(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}");
                        if (i < 9) {
                          i++;
                        } else {
                          Navigator.pushReplacementNamed(context, 'final');
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 60,
                        width: 200,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        proFalse!.answer.add(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}");
                        if (i < 9) {
                          i++;
                        } else {
                          Navigator.pushReplacementNamed(context, 'final');
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 60,
                        width: 200,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        proFalse!.answer.add(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}");
                        if (i < 9) {
                          i++;
                        } else {
                          Navigator.pushReplacementNamed(context, 'final');
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 60,
                        width: 200,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                            "${proTrue!.quiz!.results![i].incorrectAnswers![randnom()]}"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        proFalse!.answer
                            .add("${proTrue!.quiz!.results![i].correctAnswer}");
                        if (i < 9) {
                          i++;
                        } else {
                          Navigator.pushReplacementNamed(context, 'final');
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 60,
                        width: 200,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                            "${proTrue!.quiz!.results![i].correctAnswer!}"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int randnom() {
    // Int i;
    // Random rnd;
    // var rnd = Random();
    // return rnd.nextInt(3);

    var random = Random();
    var n1 = random.nextInt(3);
    // var n2 = random.nextInt(2);
    // var n3 = random.nextInt(1);
    var n2 = n1;
    n1 = random.nextInt(3);
    var n3 = n1;
    n1 = random.nextInt(3);

    if (n2 == n1 || n2 == n3) n2 += 1;
    if (n1 == n2 || n1 == n3) n1 += 1;
    if (n3 == n2 || n3 == n1) n3 += 1;
    return n3;
    // i = rnd;
    print("===================================i");
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../home/provider/home_provider.dart';
//
// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({super.key});
//
//   @override
//   State<QuestionScreen> createState() => _QuestionScreenState();
// }
//
// class _QuestionScreenState extends State<QuestionScreen> {
//   HomeProvider? proTrue;
//   HomeProvider? proFalse;
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Provider.of<HomeProvider>(context,listen: false).apiCalling();
//   // }
//   @override
//   Widget build(BuildContext context) {
//     proTrue = Provider.of<HomeProvider>(context, listen: true);
//     proFalse = Provider.of<HomeProvider>(context, listen: false);
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text("QuizStorm",style: TextStyle(color: Colors.black),),
//           centerTitle: true,
//         ),
//         body: FutureBuilder(
//           future: proTrue!.apiCalling(),
//           builder: (context, snapshot) {
//             if(snapshot.hasError){
//               return Text("${snapshot.error}");
//             }
//             else if(snapshot.hasData){
//               return Text("ok");
//             }
//             return Center(child: CircularProgressIndicator());
//           },
//         ),
//       ),
//     );
//   }
// }
