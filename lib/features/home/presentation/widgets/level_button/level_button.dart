import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

enum LevelButtonType { easy, medium, hard, expert }

class LevelButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final LevelButtonType type;

  const new({
    super.key,
    required this.title,
    required this.onTap,
    this.type = LevelButtonType.easy,
  });

  Color _getBackgroundColor() {
    switch (type) {
      case LevelButtonType.easy:
        return AppColors.purple100;
      case LevelButtonType.medium:
        return AppColors.green100;
      case LevelButtonType.hard:
        return AppColors.orange100;
      case LevelButtonType.expert:
        return AppColors.red100;
    }
  }

  Color _getForegroundColor() {
    switch (type) {
      case LevelButtonType.easy:
        return AppColors.purple500;
      case LevelButtonType.medium:
        return AppColors.green500;
      case LevelButtonType.hard:
        return AppColors.orange500;
      case LevelButtonType.expert:
        return AppColors.red500;
    }
  }

  BorderSide? _getBorder() {
    switch (type) {
      case LevelButtonType.easy:
        return BorderSide(color: AppColors.purple200, width: 1);
      case LevelButtonType.medium:
        return BorderSide(color: AppColors.green200, width: 1);
      case LevelButtonType.hard:
        return BorderSide(color: AppColors.orange200, width: 1);
      case LevelButtonType.expert:
        return BorderSide(color: AppColors.red200, width: 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: _getBackgroundColor(),
            foregroundColor: _getForegroundColor(),
            elevation: 0.0, // Remove the shadow
            shadowColor: Colors.transparent, // Remove the shadow color on press
            padding: const EdgeInsets.all(0), // Remove the default padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
              side: _getBorder() ?? BorderSide.none,
            ),
          ),
          child: Text(
            title,
            style: AppTextStyles.bodyMdMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
