import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.StartQuiz,{super.key});
  final void Function() StartQuiz;
  @override
Widget build(context){
    return  Center(
      child: Column(mainAxisSize: MainAxisSize.min,
        children: [Image.asset('assets/images/quiz-logo.png',width:200,color:const Color.fromARGB(150,255, 255, 255))
          ,const SizedBox(height:20),
          const Text('Learn Flutter in a easy way',style: TextStyle(color:Colors.white,fontSize: 28),),
          const SizedBox(height: 10,),
          OutlinedButton.icon(onPressed:StartQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon:const Icon(Icons.access_alarm_outlined),
              label: const Text('Start Quiz'))
        ],
      ),
    );
}
}