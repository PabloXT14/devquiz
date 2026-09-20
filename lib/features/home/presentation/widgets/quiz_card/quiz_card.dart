import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_images.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border, width: 1),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          Image.asset(AppImages.data, width: 40, height: 40),

          Text(
            "Gerenciamento de Estado",
            style: AppTextStyles.headingXs.copyWith(
              color: AppColors.heading,
              height: 1.3,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                "3 de 10",
                style: AppTextStyles.bodySm.copyWith(
                  color: AppColors.input,
                  height: 1.5,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 4,

                  child: LinearProgressIndicator(
                    value: 0.3,
                    backgroundColor: AppColors.border,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.green500,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
