import 'package:devquiz/app/theme/app_colors.dart';
import 'package:devquiz/features/home/presentation/widgets/app_bar/app_bar_widget.dart';
import 'package:devquiz/features/home/presentation/widgets/level_button/level_button.dart';
import 'package:devquiz/features/home/presentation/widgets/quiz_card/quiz_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: AppColors.background,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            // LEVEL BUTTONS
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LevelButton(
                    title: "Fácil",
                    onTap: () {},
                    type: LevelButtonType.easy,
                  ),
                  LevelButton(
                    title: "Médio",
                    onTap: () {},
                    type: LevelButtonType.medium,
                  ),
                  LevelButton(
                    title: "Difícil",
                    onTap: () {},
                    type: LevelButtonType.hard,
                  ),
                  LevelButton(
                    title: "Perito",
                    onTap: () {},
                    type: LevelButtonType.expert,
                  ),
                ],
              ),
            ),

            // QUIZ CARDS
            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 16,
            //     crossAxisSpacing: 16,

            //     children: [QuizCard(), QuizCard(), QuizCard(), QuizCard()],
            //   ),
            // ),
            Container(width: 180, child: QuizCard()),
            Container(width: 180, child: QuizCard()),
          ],
        ),
      ),
    );
  }
}
