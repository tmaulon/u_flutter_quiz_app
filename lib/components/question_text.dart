import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: GoogleFonts.lato(
        fontSize: 24,
        color: const Color.fromARGB(255, 30, 144, 121),
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
