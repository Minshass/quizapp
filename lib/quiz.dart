import 'package:flutter/material.dart';
import 'package:quiz/questions1.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  List question=[
    Quiz(qus:'e is a vowel',ans: true),
    Quiz(qus:'bike have 3 wheels',ans: false),
    Quiz(qus:'sky color is blue',ans: true),
    Quiz(qus:'banana is a fruit',ans: true),
    Quiz(qus: 'earth is a planet',ans: true),
    Quiz(qus: 'lion is a animal',ans:true),
    Quiz(qus: 'human blood color is green',ans: false),
    Quiz(qus: 'gujarat is capital of india',ans: false),
    Quiz(qus: 'tiger has a 4 legs',ans: true),
    Quiz(qus: 'black is not a color',ans: false),
  ];
  int index=0;
  String result="";
  void next_qus(){
      if(index<=question.length){
        setState(() {
        index++;
      });}
      }
      void check(bool_ans){
    print(bool_ans);
    if(bool_ans==question[index].ans){
     result='correct ans';}
      else{result='wrong ans';
    }
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text(question[index].qus),
          Container(child: (TextButton( onPressed: () {check(true);next_qus();},
            child: Text('True',style: TextStyle(color: Colors.green,
              fontSize: 15),),)),),
          Container(child: (TextButton( onPressed: () {check(false);next_qus();},
            child: Text('False',style: TextStyle(color: Colors.red,
              fontSize: 15),),)),),
          Text(result),

        ],

        ),

      ),

    );
  }}



