import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Question()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                ('https://hips.hearstapps.com/hmg-prod/images/quiz-questions-answers-1669651278.jpg?crop=1.00xw:0.653xh;0,0.165xh&resize=640:*'))
          ],
        ),
      ),
    );
  }
}
