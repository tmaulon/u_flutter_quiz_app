import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.validityColor,
  });

  final int questionIndex;
  final Color validityColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: validityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "${questionIndex + 1}",
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
