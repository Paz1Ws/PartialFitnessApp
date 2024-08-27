import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account? ',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: accentColor,
            )),
        GestureDetector(
          onTap: () {
            context.go('/signup');
          },
          child: Text('Sign Up',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: secondaryColor,
              )),
        ),
      ],
    );
  }
}
