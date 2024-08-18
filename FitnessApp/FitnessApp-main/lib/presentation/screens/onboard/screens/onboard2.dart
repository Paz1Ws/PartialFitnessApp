import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Onboarding2 extends ConsumerWidget {
  final nextPage;
  const Onboarding2({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding2.png",
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
          iconAsset: "assets/images/design/home/workout.svg",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_1.png",
          text: "Start Your Journey Towards A More Active Lifestyle",
        ),
      ],
    ));
  }
}
