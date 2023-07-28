import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/components/quiz_summary/question_summary_item.dart';

import '../../models/question_summary.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({
    super.key,
    required this.quizSummary,
  });

  final List<QuestionSummary> quizSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...quizSummary.map((questionSummary) =>
                QuestionSummaryItem(questionSummary: questionSummary)),
          ],
        ),
      ),
    );
  }
}
