import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemplateSetupScreen extends ConsumerWidget {
  final String title;
  final Widget widget;
  const TemplateSetupScreen({
    required this.title,
    required this.widget,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final pageController = PageController();

    return Scaffold(
      backgroundColor: lightdarkColor,
      appBar: AppBar(
        backgroundColor: lightdarkColor,
        leading: IconButton(
          icon:
              Icon(FontAwesomeIcons.caretLeft, color: secondaryColor, size: 30),
          onPressed: () {
            pageController.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 25,
              color: accentColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Add spacing between the Text and Expanded
          Expanded(
            child: widget,
          ),
        ],
      ),
    );
  }
}
