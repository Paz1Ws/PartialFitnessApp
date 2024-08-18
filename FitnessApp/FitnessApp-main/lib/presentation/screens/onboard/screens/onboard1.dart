import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../widgets/widgets.dart';

class Onboarding extends StatelessWidget {
  final void Function() nextPage;
  Onboarding({super.key, required this.nextPage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding1.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
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
