import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color? buttonColor;
  final Color? textColor;
  const NextButton(
      {super.key,
      required this.text,
      this.textColor,
      this.buttonColor,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ??
                (text == 'Start'
                    ? secondaryColor
                    : Colors.white.withOpacity(0.2)),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            side: BorderSide(color: accentColor, width: 1.0),
            minimumSize: Size(240, 50), // Increase the size of the button
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: textColor ?? (text == 'Start' ? darkColor : accentColor),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
