import 'package:devquiz/core/themes/app_colors.dart';
import 'package:devquiz/core/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linearGradient),
        child: Center(child: Image.asset(AppImages.logo)),
      ),
    );
  }
}
