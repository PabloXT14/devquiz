import 'package:flutter/material.dart';

import 'package:devquiz/app/theme/app_colors.dart';

import 'package:devquiz/features/challenge/presentation/widgets/question_indicator/question_indicator.dart';
import 'package:devquiz/features/challenge/presentation/widgets/quiz/quiz.dart';

class ChallengeView extends StatefulWidget {
  const new({super.key});

  @override
  State<ChallengeView> createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: QuestionIndicator(),
      ),
      body: Container(
        child: Column(
          children: [Quiz(title: "O que o Flutter faz em sua totalidade?")],
        ),
      ),
    );
  }
}
