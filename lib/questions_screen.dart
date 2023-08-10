import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen(this.onSelectAnswer,{super.key});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen>createState(){
    return _QuestionsScreenState();

  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex=0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);

      setState(() {
        // currentQuestionIndex=currentQuestionIndex+1;
        // currentQuestionIndex+=1;
        currentQuestionIndex++;
      });
    
  }

  @override
  Widget build(context){
    final CurrentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text(CurrentQuestion.text,style: GoogleFonts.lato(color:Colors.white54,fontSize: 28),textAlign:TextAlign.center ,),
          const SizedBox(height: 30),
         ... CurrentQuestion.getShuffledAnswers().map((answer){//... means spreading it seperates value in  a list
             return Answer_button((){answerQuestion(answer);},answer);
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