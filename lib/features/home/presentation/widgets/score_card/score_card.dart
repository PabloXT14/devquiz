import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:devquiz/features/home/presentation/widgets/chart/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border, width: 1),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 24,
        children: [
          // CIRCULAR PROGRESS INDICATOR
          Chart(),

          // TEXTS
          Expanded(
            flex: 1,
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vamos começar",
                  style: AppTextStyles.headingSm.copyWith(
                    color: AppColors.heading,
                  ),
                ),
                Text(
                  "Complete os desafios e avance em conhecimento",
                  style: AppTextStyles.bodyMd.copyWith(color: AppColors.body),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
