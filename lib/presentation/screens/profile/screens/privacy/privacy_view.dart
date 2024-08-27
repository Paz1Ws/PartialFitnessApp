import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';

class UserPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: lightdarkColor,
      title: Text('Privacy Policy',
          style: MyTextTheme.LeagueSpartanTitle.copyWith(color: accentColor)),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our app, Flutter Fitness App, and other sites we own and operate.',
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                color: accentColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.',
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                color: accentColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorised access, disclosure, copying, use or modification.',
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                color: accentColor,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: secondaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Close',
            style: MyTextTheme.LeagueSpartanMedium.copyWith(
              color: darkColor,
            ),
          ),
        ),
      ],
    );
  }
}
