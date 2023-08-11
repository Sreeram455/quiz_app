import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/quiz.dart';
class Results_Screen extends StatelessWidget{
   const Results_Screen({super.key,required this.choosenAnswers,required this.onRestart,});
  final List<String> choosenAnswers;
   final void Function() onRestart;
  List<Map<String,Object>> getSummarydata(){
  final List<Map<String,Object>> Summary=[];
  for(var i=0;i<choosenAnswers.length;i++){
    Summary.add({
     'question_index':i,
     'question':questions[i].text,
     'correct_answer':questions[i].answers[0],
      'user_answer':choosenAnswers[i],
   }

    );

   }
  return Summary;
   }
  @override
  Widget build(context){
    final numTotalquestions=questions.length;
    final summarydata=getSummarydata();

    final numCorrectanswers=summarydata.where((data){
      return data['user_answer']==data['correct_answer'];

    }).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
        margin: const EdgeInsets.all(40),
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text("You answered $numCorrectanswers out of $numTotalquestions questions correctly",style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 230, 200, 253),fontSize: 28,fontWeight: FontWeight.bold),),
        const SizedBox(height:20),
        QuestionsSummary(getSummarydata()),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz!'),

    ),
    ],
    ),
    )

    );
  }
}

