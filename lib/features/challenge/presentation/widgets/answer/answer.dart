import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const Answer({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  TextStyle _getTextStyle() {
    if (isSelected) {
      return AppTextStyles.bodyMdMedium.copyWith(color: AppColors.green500);
    }

    return AppTextStyles.bodyMdMedium.copyWith(color: AppColors.body);
  }

  BorderSide _getBorder() {
    if (isSelected) {
      return BorderSide(color: AppColors.green200, width: 1);
    }

    return BorderSide(color: AppColors.border, width: 1);
  }

  Color _getBackgroundColor() {
    if (isSelected) {
      return AppColors.green100;
    }

    return AppColors.white;
  }

  Color _getCircleColor() {
    if (isSelected) {
      return AppColors.green500;
    }

    return AppColors.white;
  }

  BorderSide _getBorderCircle() {
    if (isSelected) {
      return BorderSide(color: AppColors.green500, width: 1);
    }

    return BorderSide(color: AppColors.border, width: 1);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(_getBorder()),
        ),
        child: Row(
          spacing: 48,
          children: [
            // TEXT
            Expanded(child: Text(text, style: _getTextStyle())),

            // CIRCLE
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: _getCircleColor(),
                borderRadius: BorderRadius.circular(12),
                border: Border.fromBorderSide(_getBorderCircle()),
              ),
              alignment: Alignment.center,
              child: isSelected
                  ? Icon(Icons.check, size: 16, color: AppColors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
