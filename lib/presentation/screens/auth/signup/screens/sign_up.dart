import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightdarkColor,
      appBar: AppBar(
        backgroundColor: lightdarkColor,
        leading: IconButton(
          icon:
              Icon(FontAwesomeIcons.caretLeft, color: secondaryColor, size: 30),
          onPressed: () {
            context.go('/login');
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text('Create Account',
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
            transform: Matrix4.translationValues(0, -25, 0),
            child: Column(
              children: [
                Text('Let\'s Start',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    )),
              ],
            ),
          ),
          InputContainer(
            islogin: false,
            formFields: 4,
            textFormFields: const [
              'Full Name',
              'Email or Mobile Number',
              'Password',
              'Confirm Password',
            ],
          ),
          SizedBox(height: 20),
          Text(
              'By continue you agree to our\nTerms of Service and Privacy Policy',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: accentColor,
              )),
          SizedBox(height: 15),
          NextButton(
            text: 'Sign Up',
            onPressed: () {
              context.go('/home');
            },
          ),
          SizedBox(height: 15),
          Text('Or Sign Up with',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: accentColor,
              )),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/google.png',
                ),
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/facebook.png',
                ),
                SizedBox(width: 20),
                PlatformLoginButtons(
                  image: 'assets/images/design/auth/fingerprint.png',
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
