import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/questions_screen.dart';
import 'package:u_flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

enum ActiveScreenName { startScreen, questionsScreen }

class _QuizState extends State<Quiz> {
  var currentActiveScreen = ActiveScreenName.startScreen;

  void switchScreen() {
    setState(() {
      currentActiveScreen = ActiveScreenName.questionsScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 173, 240, 223),
                Color.fromARGB(255, 0, 255, 191)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentActiveScreen == ActiveScreenName.startScreen
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
