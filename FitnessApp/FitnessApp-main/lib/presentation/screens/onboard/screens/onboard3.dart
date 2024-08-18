import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';

class Onboarding3 extends StatelessWidget {
  final nextPage;
  const Onboarding3({super.key, required this.nextPage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding3.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
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
