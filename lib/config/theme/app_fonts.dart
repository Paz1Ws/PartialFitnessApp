// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {
  static TextStyle LeagueSpartanLight = GoogleFonts.leagueSpartan(
      fontSize: 14, fontWeight: FontWeight.w400, color: primaryColor);
  static TextStyle LeagueSpartanMedium = GoogleFonts.leagueSpartan(
      fontSize: 18, fontWeight: FontWeight.w600, color: primaryColor);
  static TextStyle LeagueSpartanBold = GoogleFonts.leagueSpartan(
      fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor);
  static TextStyle LeagueSpartanTitle = GoogleFonts.leagueSpartan(
      fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor);
  static TextStyle Poppins12 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: accentColor,
  );
  static TextStyle Poppins14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: accentColor,
  );
  static TextStyle Poppins16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: accentColor,
  );
  static TextStyle Poppins18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static TextStyle Poppins20 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: secondaryColor,
  );
  static TextStyle Poppins24 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: secondaryColor,
  );
  static TextStyle Poppins30 = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: accentColor,
  );
  static TextStyle Poppins60 = GoogleFonts.poppins(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontStyle: FontStyle.italic,
  );
}
