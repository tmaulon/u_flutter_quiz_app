import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/data/questions.dart';
import 'package:u_flutter_quiz_app/screens/questions_screen.dart';
import 'package:u_flutter_quiz_app/screens/start_screen.dart';

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
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      currentActiveScreen = ActiveScreenName.questionsScreen;
    });
  }

  void swhowResultsScreen() {
    setState(() {
      currentActiveScreen = ActiveScreenName.startScreen;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      selectedAnswers.clear();
      swhowResultsScreen();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentActiveScreenWidget = StartScreen(switchScreen);

    if (currentActiveScreen == ActiveScreenName.questionsScreen) {
      currentActiveScreenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

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
          child: currentActiveScreenWidget,
        ),
      ),
    );
  }
}
