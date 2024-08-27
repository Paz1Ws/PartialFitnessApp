import 'package:flutter/material.dart';
import '../../../../../config/theme/app_colors.dart';

class WelcomeSetupScreen extends StatelessWidget {
  const WelcomeSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.90,
            child: Image.asset(
              'assets/images/design/setup/fitness_person_welcome.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 1.8,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              color: lightdarkColor,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Consistency Is \nThe Key To Progress \nDon\'t Give Up!',
                    textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing:
                          1, // Adjust the letterSpacing value to control the space between letters
                      color: secondaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: primaryColor,
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height / 7,
                    child: Center(
                      child: Text(
                        'Tip💡: Start with a 10-minute workout and gradually increase the time as you get stronger.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: lightdarkColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
