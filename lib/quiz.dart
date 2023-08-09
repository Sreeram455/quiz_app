import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  @override
  State<Quiz>createState() {
    return _Quizstate();

  }




}
class _Quizstate extends State<Quiz>{
  var activeScreen='start_screen';
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   activeScreen=StartScreen(SwitchScreen);
  //   super.initState();
  // }
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
      ScreenWidget=const QuestionsScreen();
    }
    return MaterialApp(home:Scaffold(body:Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.blue
        ],
            begin:Alignment.topLeft,
            end:Alignment.topRight),
      ),
      // child: activeScreen=='start_screen'
      //     ? StartScreen(SwitchScreen): const QuestionsScreen(),
      child:ScreenWidget
    ),
    ),
    );

  }
}
