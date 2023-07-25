import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/components/answer_button.dart';
import 'package:u_flutter_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          currentQuestion.text,
          style: const TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 30, 144, 121),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        ...currentQuestion.answers
            .map((answer) => AnswerButton(answerText: answer, onTap: () {})),
      ]),
    );
  }
}
