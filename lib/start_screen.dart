import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  startQuiz() {
    print('Starting quiz ...');
    debugPrint('Received click');
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
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 30, 144, 121)),
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
