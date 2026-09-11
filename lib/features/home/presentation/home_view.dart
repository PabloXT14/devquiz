import 'package:devquiz/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarWidget(), body: Center());
  }
}
