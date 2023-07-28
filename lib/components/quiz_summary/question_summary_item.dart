import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u_flutter_quiz_app/components/quiz_summary/question_identifier.dart';

import '../../models/question_summary.dart';

class QuestionSummaryItem extends StatelessWidget {
  const QuestionSummaryItem({
    super.key,
    required this.questionSummary,
  });

  final QuestionSummary questionSummary;

  Color getQuestionValidityColor(QuestionSummary questionSummary) =>
      questionSummary.user_awser == questionSummary.valid_answer
          ? const Color.fromARGB(255, 13, 64, 54)
          : const Color.fromARGB(255, 144, 30, 30);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: questionSummary.question_index,
            validityColor: getQuestionValidityColor(questionSummary),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questionSummary.question,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 30, 144, 121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  questionSummary.user_awser,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: getQuestionValidityColor(questionSummary),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  questionSummary.valid_answer,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 13, 64, 54),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
