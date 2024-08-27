import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/theme/app_colors.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '¿Are you sure you want to log out?',
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
                  'No',
                  style: MyTextTheme.LeagueSpartanMedium.copyWith(
                      color: darkColor),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                onPressed: () {
                  context.go('/login');
                },
                child: Text(
                  'Yes I want to log out',
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
