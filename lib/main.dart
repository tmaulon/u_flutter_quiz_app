import 'package:flutter/material.dart';
import 'package:u_flutter_quiz_app/router/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
