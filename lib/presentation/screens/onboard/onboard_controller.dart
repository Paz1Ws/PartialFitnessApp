import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardController extends ConsumerStatefulWidget {
  const OnboardController({super.key});

  @override
  OnboardControllerState createState() => OnboardControllerState();
}

class OnboardControllerState extends ConsumerState<OnboardController> {
  final Image image1 = Image.asset(
    "assets/images/onboarding/onboarding1.png",
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
  );
  final Image image2 = Image.asset(
    "assets/images/onboarding/onboarding2.png",
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
  );
  final Image image3 = Image.asset(
    "assets/images/onboarding/onboarding3.png",
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
  );
  final Image image4 = Image.asset(
    "assets/images/onboarding/onboarding4.png",
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    void nextPage() {
      pageController.jumpToPage(
        pageController.page!.toInt() + 1,
      );
    }

    final List<Widget> widgets = [
      Onboarding(
        nextPage: nextPage,
        image: image1,
      ),
      Onboarding2(
        nextPage: nextPage,
        image: image2,
      ),
      Onboarding3(
        nextPage: nextPage,
        image: image3,
      ),
      Onboarding4(
        image: image4,
      )
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
