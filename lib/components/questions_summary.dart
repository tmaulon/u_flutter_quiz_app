import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/question_summary.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({
    super.key,
    required this.quizSummary,
  });

  final List<QuestionSummary> quizSummary;

  bool isValidAnswer(
      {required String user_awser, required String valid_answer}) {
    return user_awser == valid_answer;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...quizSummary.map(
          (questionSummary) {
            return Row(
              children: [
                Text("${questionSummary.question_index + 1}"),
                Column(
                  children: [
                    Text(
                      questionSummary.question,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 30, 144, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      questionSummary.user_awser,
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: isValidAnswer(
                                user_awser: questionSummary.user_awser,
                                valid_answer: questionSummary.valid_answer)
                            ? const Color.fromARGB(255, 13, 64, 54)
                            : const Color.fromARGB(255, 144, 30, 30),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      questionSummary.valid_answer,
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 30, 144, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
