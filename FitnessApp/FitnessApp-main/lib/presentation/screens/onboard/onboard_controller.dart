import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardController extends ConsumerStatefulWidget {
  const OnboardController({super.key});

  @override
  OnboardControllerState createState() => OnboardControllerState();
}

class OnboardControllerState extends ConsumerState<OnboardController> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    void nextPage() {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    final List<Widget> widgets = [
      Onboarding(
        nextPage: nextPage,
      ),
      Onboarding2(
        nextPage: nextPage,
      ),
      Onboarding3(
        nextPage: nextPage,
      ),
      Onboarding4(),
    ];

    return Scaffold(
      body: PageView(
        physics: AlwaysScrollableScrollPhysics(),
        controller: pageController,
        children: widgets,
      ),
    );
  }
}
