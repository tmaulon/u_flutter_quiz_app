import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  startQuiz() {
    debugPrint('Starting quiz ...');
    onStartQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                fontSize: 50,
                color: const Color.fromARGB(255, 30, 144, 121),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 30, 144, 121),
              side: const BorderSide(
                color: Color.fromARGB(255, 30, 144, 121),
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text("Start quiz"),
          )
        ],
      ),
    );
  }
}
