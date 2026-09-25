import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:devquiz/features/challenge/presentation/widgets/answer/answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  final String title;

  const Quiz({super.key, required this.title});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int selectedIndex = -1;
  final answers = [
    "Kit de desenvolvimento de interface de usuário",
    "Possibilita a criação de aplicativos compilados nativamente",
    "Permite criar aplicativos para Android e iOS",
    "Todas as alternativas estão corretas",
  ];

  void _onAnswerSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 64),
      child: Column(
        children: [
          Text(
            widget.title,
            style: AppTextStyles.headingMd.copyWith(color: AppColors.heading),
          ),
          SizedBox(height: 24),

          // ANSWERS
          Column(
            spacing: 8,
            children: [
              for (int i = 0; i < answers.length; i++)
                Answer(
                  text: answers[i],
                  isSelected: selectedIndex == i,
                  onTap: () => _onAnswerSelected(i),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
