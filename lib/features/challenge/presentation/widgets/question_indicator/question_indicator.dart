import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

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

          SizedBox(
            width: double.maxFinite,
            height: 4,

            child: LinearProgressIndicator(
              value: 0.4,
              backgroundColor: AppColors.border,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.green500),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
