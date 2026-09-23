import 'package:devquiz/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double value;

  const ProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 4,

      child: LinearProgressIndicator(
        value: value,
        backgroundColor: AppColors.border,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.green500),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
