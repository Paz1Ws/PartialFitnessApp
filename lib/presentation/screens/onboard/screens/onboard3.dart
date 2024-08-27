import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';

class Onboarding3 extends StatelessWidget {
  final nextPage;

  final Image image;
  const Onboarding3({super.key, required this.nextPage, required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: image,
        ),
        OnboardingDescriptiveLabel(
          buttonText: 'Next',
          onPressed: () {
            nextPage();
          },
          iconAsset: "assets/images/design/home/nutrition.svg",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_2.png",
          text: "Find Nutrition Tips That Fit Your Lifestyle",
        ),
      ],
    ));
  }
}
