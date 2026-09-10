import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_images.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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
