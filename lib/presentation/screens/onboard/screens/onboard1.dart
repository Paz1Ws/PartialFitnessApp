import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/theme/app_colors.dart';

class Onboarding extends StatelessWidget {
  final void Function() nextPage;
  final Image image;
  const Onboarding({super.key, required this.nextPage, required this.image});
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome To',
                style: GoogleFonts.leagueSpartan(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: secondaryColor,
                )),
            FitBody(),
            SizedBox(
              height: 20,
            ),
            NextButton(
              text: 'Get Started',
              onPressed: nextPage,
            ),
          ],
        ),
      ],
    ));
  }
}
