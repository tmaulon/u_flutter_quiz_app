import 'package:flutter/material.dart';

import '../models/question_summary.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({
    super.key,
    required this.quizSummary,
  });

  final List<QuestionSummary> quizSummary;

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
                    Text(questionSummary.question),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(questionSummary.user_awser),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(questionSummary.valid_answer),
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
