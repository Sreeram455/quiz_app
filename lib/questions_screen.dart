import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  State<QuestionsScreen>createState(){
    return _QuestionsScreenState();

  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(context){
    final CurrentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text(CurrentQuestion.text,style: const TextStyle(color:Colors.white,fontSize: 28),textAlign:TextAlign.center ,),
          const SizedBox(height: 30),
         ... CurrentQuestion.answers.map((item){//... means spreading it seperates value in  a list
             return Answer_button(() {},item);
            })
         // Answer_button(() { }, CurrentQuestion.answers[0]),
         // Answer_button(() { }, CurrentQuestion.answers[1]),
         // Answer_button(() { }, CurrentQuestion.answers[2]),
         // Answer_button(() { }, CurrentQuestion.answers[3]),




        ],),
      ),
    );
  }
}