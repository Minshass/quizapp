import 'package:flutter/material.dart';
import 'package:quiz/splash.dart';

void main() {
  runApp(const MYapp());
}

class MYapp extends StatefulWidget {
  const MYapp({super.key});

  @override
  State<MYapp> createState() => _MYappState();
}

class _MYappState extends State<MYapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(

      )  ,
    );
  }
}
