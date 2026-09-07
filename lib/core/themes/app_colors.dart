import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Neutral Colors
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  // Brand Colors
  static const primary = Color(0xFF8257E5);
  static const secondary = Color(0xFF04D361);

  // Text Colors
  static const heading = Color(0xFF514766);
  static const body = Color(0xFF6E6680);
  static const input = Color(0xFFA6A1B2);

  // Shape Colors
  static const background = Color(0xFFF5F5FA);
  static const border = Color(0xFFE1E1E6);

  // Purple Colors
  static const Color purple100 = Color(0xFFEBEBFC);
  static const Color purple200 = Color(0xFFCECEF5);
  static const Color purple500 = Color(0xFF6363DB);

  // Green Colors
  static const Color green100 = Color(0xFFE1F5EC);
  static const Color green200 = Color(0xFFB8DBCB);
  static const Color green500 = Color(0xFF03AB4F);

  // Red Colors
  static const Color red100 = Color(0xFFF5E9EC);
  static const Color red200 = Color(0xFFE5C5CF);
  static const Color red500 = Color(0xFFCC3750);

  // Orange Colors
  static const Color orange100 = Color(0xFFF5EFE9);
  static const Color orange200 = Color(0xFFE5D5C5);
  static const Color orange500 = Color(0xFFE8891C);

  // Gradient Colors
  static const linearGradient = LinearGradient(
    colors: [Color(0xFF57B6E5), Color(0xFF8257E5)],
    stops: [0.0, 0.695],
    transform: GradientRotation(2.13959913 * pi),
  );
}
