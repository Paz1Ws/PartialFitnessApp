import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData fitnessTheme = ThemeData(
    colorSchemeSeed: primaryColor,
    fontFamily: GoogleFonts.poppins().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
  );
}
