import 'package:devquiz/core/themes/app_colors.dart';
import 'package:devquiz/core/themes/app_text_styles.dart';
import 'package:devquiz/screens/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key}) {
    // Trava a orientação da tela para modo retrato (portrait) e evita que o aplicativo seja exibido em modo paisagem (landscape). Só vira quando especificarmos no código.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        appBarTheme: AppBarTheme(
          elevation: 0, // Remove the shadow (opcional)
          backgroundColor: AppColors.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
