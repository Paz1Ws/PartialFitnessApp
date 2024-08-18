import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../onboard/onboard_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => OnboardController()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: FitBody(),
    );
  }
}
