import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/summary_item.dart';
class QuestionsSummary extends StatelessWidget{
  QuestionsSummary(this.summaryData,{super.key});
  final List<Map<String,Object>> summaryData;
  @override
  Widget build(context){
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
                  (data)
    {  return SummaryItem(data);
        // {
        //   return Row(children: [
        //     Text(((data['question_index'] as int)+1).toString()),
        //     Expanded(//Expanded allows the column to only occupy the width of row as row is above it
        //       // without expanded colum would take take entire width even if it goes out of screen
        //       child: Column(children: [Text(data['question'] as String,textAlign: TextAlign.left,),
        //       const SizedBox(height: 5,),
        //         Text(data['user_answer'] as String,style:TextStyle(color: Colors.white,),textAlign: TextAlign.left,),
        //         Text(data['correct_answer'] as String,style: TextStyle(color:Colors.red),textAlign: TextAlign.left)
        //       ],),
        //     )
        //   ],);
        },
        ).toList(),

        ),
      ),
    );


  }
}