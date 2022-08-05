import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../services/services.dart';
import '../../shared/shared.dart';
import '../pages.dart';

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

            return Scaffold(
              appBar: AppBar(
                title: ProgressBar(value: state.progress),
                leading: IconButton(
                  icon: const Icon(FontAwesomeIcons.xmark),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              body: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                controller: state.controller,
                onPageChanged: (int idx) =>
                    state.progress = (idx / (quiz.questions.length + 1)),
                itemBuilder: (BuildContext context, int idx) {
                  if (idx == 0) {
                    return QuizStartPage(quiz: quiz);
                  } else if (idx == quiz.questions.length + 1) {
                    return QuizCongratsPage(quiz: quiz);
                  } else {
                    return QuizQuestionPage(question: quiz.questions[idx - 1]);
                  }
                },
              ),
            );
          }
        },
      ),
    );
  }
}
