import 'package:devquiz/core/widgets/progress_bar/progress_bar.dart';
import 'package:flutter/material.dart';

import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';

class QuestionIndicator extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
      child: Column(
        spacing: 16,
        children: [
          // TEXTS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.bodyLg.copyWith(color: AppColors.input),
              ),
              Text(
                "de 10",
                style: AppTextStyles.bodyLg.copyWith(color: AppColors.input),
              ),
            ],
          ),

          ProgressBar(value: 0.3),
        ],
      ),
    );
  }
}
