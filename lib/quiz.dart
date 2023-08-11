import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  @override
  State<Quiz>createState() {
    return _Quizstate();

  }




}
class _Quizstate extends State<Quiz>{
  List<String> selectedAnswers=[];
  var activeScreen='start_screen';
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   activeScreen=StartScreen(SwitchScreen);
  //   super.initState();
  // }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        ;
        activeScreen='result-screen';

      });

    }
}
  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }
  void SwitchScreen(){

    setState(() {
      // activeScreen=const QuestionsScreen();
      activeScreen='question_screen';
    });
  }
  @override
  Widget build(content){
    Widget ScreenWidget=StartScreen(SwitchScreen);
    if(activeScreen == 'question_screen'){
      ScreenWidget= QuestionsScreen(chooseAnswer);
    }
    if(activeScreen=='result-screen'){
      ScreenWidget=Results_Screen(choosenAnswers: selectedAnswers,
      onRestart: restartQuiz,);
    }
    return MaterialApp(home:Scaffold(body:Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.blue
        ],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight),
      ),
      // child: activeScreen=='start_screen'
      //     ? StartScreen(SwitchScreen): const QuestionsScreen(),
      child:ScreenWidget
    ),
    ),
    );

  }
}
