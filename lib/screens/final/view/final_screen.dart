import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  HomeProvider? proTrue;
  HomeProvider? proFalse;

  int count = 0;

  @override
  void initState() {
    super.initState();

    Provider.of<HomeProvider>(context, listen: false).apiCalling();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (int i = 0; i < 9; i++) {
      if (Provider.of<HomeProvider>(context, listen: true)
              .quiz!
              .results![i]
              .correctAnswer ==
          Provider.of<HomeProvider>(context, listen: false).answer[i]) {
        count++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<HomeProvider>(context, listen: true);
    proFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(

        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            height: 250,
            width: 275,
            color: Colors.green.shade100,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Results :--",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  ("$count / 10"),
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: InkWell(
                          onTap: () => Navigator.pushReplacementNamed(context, '/'),
                          child: Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.white,
                            alignment: Alignment.center,
                            child: Text("Home"),
                    ),
                        )),
                    Expanded(
                        child: InkWell(
                          onTap: () => Navigator.pushReplacementNamed(context, 'que'),
                          child: Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      color: Colors.white,
                            alignment: Alignment.center,
                            child: Text("Retake"),
                    ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
