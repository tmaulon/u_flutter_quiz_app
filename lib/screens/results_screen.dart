import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u_flutter_quiz_app/components/quiz_summary/quiz_summary.dart';
import 'package:u_flutter_quiz_app/data/questions.dart';
import 'package:u_flutter_quiz_app/models/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestartQuiz,
    required this.choosenAnswers,
  });
  final void Function() onRestartQuiz;
  final List<String> choosenAnswers;

  List<QuestionSummary> get quizSummary {
    final List<QuestionSummary> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add(QuestionSummary(
          i, questions[i].text, questions[i].answers[0], choosenAnswers[i]));
    }

    return summary;
  }

  int get questionsLength => questions.length;
  int get validAnswersLength => quizSummary
      .where((questionSummary) =>
          questionSummary.user_awser == questionSummary.valid_answer)
      .length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Results",
              style: GoogleFonts.lato(
                fontSize: 40,
                color: const Color.fromARGB(255, 30, 144, 121),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "You answered $validAnswersLength out of $questionsLength questions correctly!",
              style: GoogleFonts.lato(
                fontSize: 24,
                color: const Color.fromARGB(255, 30, 144, 121),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(quizSummary: quizSummary),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: onRestartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 30, 144, 121),
                side: const BorderSide(
                  color: Color.fromARGB(255, 30, 144, 121),
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              icon: const Icon(
                Icons.restart_alt,
              ),
              label: const Text("Restart quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
