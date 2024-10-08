import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/widgets.dart';

class WelcomeLogin extends ConsumerWidget {
  const WelcomeLogin({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: lightdarkColor,
      appBar: AppBar(
        backgroundColor: lightdarkColor,
        title: Center(
          child: Text('Log In',
              style: MyTextTheme.Poppins24.copyWith(color: secondaryColor)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform(
            transform: Matrix4.translationValues(0, -40, 0),
            child: Column(
              children: [
                Text('Welcome',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    )),
                SizedBox(height: 20),
                Text('Get the full experience of FitBody',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: accentColor,
                    )),
              ],
            ),
          ),
          InputContainer(
            islogin: true,
            formFields: 4,
            textFormFields: const [
              'Username or Email',
              'Password',
            ],
          ),
          NextButton(
            text: 'Log In',
            onPressed: () {
              context.go('/setUp');
            },
          ),
          SizedBox(height: 30),
          Text('Or Sign Up with',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: accentColor,
              )),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/google.svg',
                ),
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/facebook.svg',
                ),
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/fingerprint.svg',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          DontHaveAccount(),
        ],
      ),
    );
  }
}
