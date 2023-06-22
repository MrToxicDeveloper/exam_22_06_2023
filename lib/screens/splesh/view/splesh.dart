import 'dart:async';

import 'package:flutter/material.dart';

class Splesh extends StatefulWidget {
  const Splesh({super.key});

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  Widget build(BuildContext context) {
    timer();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset("asset/images/quiz_logo.png", width: 100),
        ),
      ),
    );
  }

  Timer timer() {
    return Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }
}
