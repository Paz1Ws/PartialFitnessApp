import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';
import 'package:go_router/go_router.dart';

class Onboarding4 extends StatelessWidget {
  final Image image;
  const Onboarding4({super.key, required this.image});
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
            context.go('/login');
          },
          iconAsset: "assets/images/design/home/community.svg",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_3.png",
          text: "A Community For You Challenge Yourself",
        ),
      ],
    ));
  }
}
