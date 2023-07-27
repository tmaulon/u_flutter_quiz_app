import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestartQuiz,
    required this.choosenAnswers,
  });
  final void Function() onRestartQuiz;
  final List<String> choosenAnswers;

  int getValidAnswersLength() {
    return 0;
  }

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
              "You answered ${getValidAnswersLength()} out of ${choosenAnswers.length} questions correctly!",
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
            Text(
              "List of answers...",
              style: GoogleFonts.lato(
                fontSize: 24,
                color: const Color.fromARGB(255, 30, 144, 121),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            // ListView(
            //   padding: const EdgeInsets.all(8),
            //   children: <Widget>[
            //     Container(
            //       height: 5,
            //       width: 5,
            //       color: Colors.amber[600],
            //       child: const Center(child: Text('Entry A')),
            //     ),
            //     Container(
            //       height: 5,
            //       width: 5,
            //       color: Colors.amber[500],
            //       child: const Center(child: Text('Entry B')),
            //     ),
            //     Container(
            //       height: 5,
            //       width: 5,
            //       color: Colors.amber[100],
            //       child: const Center(child: Text('Entry C')),
            //     ),
            //   ],
            // ),
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
