import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 88,
              height: 88,
              child: CircularProgressIndicator(
                value: 0.7,
                strokeWidth: 10,
                strokeCap: StrokeCap.round,
                backgroundColor: AppColors.green100,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.green500),
              ),
            ),
          ),
          Center(
            child: Text(
              "70%",
              style: AppTextStyles.headingSm.copyWith(color: AppColors.heading),
            ),
          ),
        ],
      ),
    );
  }
}
