import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/widgets.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: lightdarkColor,
        appBar: AppBar(
          backgroundColor: lightdarkColor,
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.caretLeft,
                color: secondaryColor, size: 30),
            onPressed: () {
              context.go('/login');
            },
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text('Set Password',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                )),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              transform: Matrix4.translationValues(0, -70, 0),
              child: Text(
                'Set a new password',
                textAlign: TextAlign.center,
                style: GoogleFonts.leagueSpartan(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: accentColor,
                ),
              ),
            ),
            InputContainer(
              islogin: false,
              formFields: 2,
              textFormFields: const [
                'Password',
                'Confirm Password',
              ],
            ),
            SizedBox(height: 40),
            NextButton(
              text: 'Reset Password',
              onPressed: () {
                context.go('/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
