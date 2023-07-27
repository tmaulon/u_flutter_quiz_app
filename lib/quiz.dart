import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/data/questions.dart';
import 'package:u_flutter_quiz_app/screens/questions_screen.dart';
import 'package:u_flutter_quiz_app/screens/results_screen.dart';
import 'package:u_flutter_quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

enum ActiveScreenName { startScreen, questionsScreen, resultsScreen }

class _QuizState extends State<Quiz> {
  var currentActiveScreen = ActiveScreenName.startScreen;
  List<String> selectedAnswers = [];

  void beginQuiz() {
    setState(() {
      selectedAnswers.clear();
      currentActiveScreen = ActiveScreenName.questionsScreen;
    });
  }

  void swhowResultsScreen() {
    setState(() {
      currentActiveScreen = ActiveScreenName.resultsScreen;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      swhowResultsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentActiveScreenWidget = StartScreen(beginQuiz);

    if (currentActiveScreen == ActiveScreenName.questionsScreen) {
      currentActiveScreenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (currentActiveScreen == ActiveScreenName.resultsScreen) {
      currentActiveScreenWidget = ResultsScreen(
        onRestartQuiz: beginQuiz,
        choosenAnswers: selectedAnswers,
      );
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
