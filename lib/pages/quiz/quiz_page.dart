import 'package:fireship_quiz/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/services.dart';
import 'quiz_state.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key, required this.quizId});
  final String quizId;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizState(),
      child: FutureBuilder<Quiz>(
        future: FirestoreService().getQuiz(quizId),
        builder: (context, snapshot) {
          var state = Provider.of<QuizState>(context);

          if (!snapshot.hasData || snapshot.hasError) {
            return const LoadingPage();
          } else {
            var quiz = snapshot.data!;

            return Scaffold();
          }
        },
      ),
    );
  }
}
