import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/theme/app_colors.dart';

class FitBody extends StatelessWidget {
  const FitBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          "assets/images/design/FB.svg",
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('FIT',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
                fontStyle: FontStyle.italic,
              )),
          Text('BODY',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: secondaryColor,
                fontStyle: FontStyle.italic,
              )),
        ])
      ]),
    );
  }
}
