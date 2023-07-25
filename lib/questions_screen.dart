import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/components/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "The question...?",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 30, 144, 121),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(
          answerText: 'Answer 1',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer 2',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer 3',
          onTap: () {},
        ),
      ]),
    );
  }
}
