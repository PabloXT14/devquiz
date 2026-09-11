import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({super.key})
    : super(
        preferredSize: Size.fromHeight(160),
        child: Container(
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(gradient: AppColors.linearGradient),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Olá, ',
                  style: AppTextStyles.headingMdRegular.copyWith(
                    color: AppColors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Pablo',
                      style: AppTextStyles.headingMd.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.stroke, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage("https://github.com/pabloxt14.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
