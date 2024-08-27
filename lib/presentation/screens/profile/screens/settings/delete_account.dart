import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';

import '../../../../../config/theme/app_colors.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '¿Are you sure you want to delete your account?',
            textAlign: TextAlign.center,
            style: MyTextTheme.LeagueSpartanMedium.copyWith(color: darkColor),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: MyTextTheme.LeagueSpartanMedium.copyWith(
                      color: darkColor),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                onPressed: () {},
                child: Text(
                  'Delete',
                  style: MyTextTheme.LeagueSpartanMedium.copyWith(
                      color: darkColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
