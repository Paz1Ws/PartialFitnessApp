import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class MealPlansController extends ConsumerStatefulWidget {
  const MealPlansController({super.key});

  @override
  MealPlansControllerState createState() => MealPlansControllerState();
}

class MealPlansControllerState extends ConsumerState<MealPlansController> {
  bool isInitialPage = true;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    void nextPage() {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }

    final List<Widget> widgets = [
      MealPlansWelcome(nextPage: () {
        nextPage();
      }),
      MealPlansFeatures1(nextPage: () {
        nextPage();
      }),
      MealPlansFeatures2(nextPage: () {
        nextPage();
      }),
      MealPlansFeatures3(nextPage: () {
        nextPage();
      }),
    ];

    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widgets,
      ),
    );
  }
}
