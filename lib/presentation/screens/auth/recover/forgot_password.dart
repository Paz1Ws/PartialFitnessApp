import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/presentation/screens/auth/login/screens/welcome_login.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WelcomeLogin()),
            );
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('Forgotten Password',
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
                Text('Forgot Password?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    )),
                SizedBox(height: 20),
                Text(
                  'Don\'t worry, we got you!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: accentColor,
                  ),
                )
              ],
            ),
          ),
          InputContainer(
            islogin: false,
            formFields: 1,
            textFormFields: const [
              'Enter your email or mobile number',
            ],
          ),
          SizedBox(height: 40),
          NextButton(
            text: 'Continue',
            onPressed: () {
              context.go('/setpassword');
            },
          )
        ],
      ),
    );
  }
}
