import 'package:flutter/material.dart';

class Answer_button extends StatelessWidget{
  Answer_button(this.Ontap,this.AnswerText,{super.key});
  final String AnswerText;
  final void Function() Ontap;
  @override
  Widget build(context){
    return  ElevatedButton(
        onPressed:Ontap,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,
            foregroundColor: Colors.white,padding: EdgeInsets.symmetric(vertical:10,horizontal: 100),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
        child:  Text(AnswerText,textAlign: TextAlign.center,),
    );
  }

}