import 'package:flutter/material.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';
import '../general/purple_bar.dart';

class WeeklyChallenge extends StatelessWidget {
  const WeeklyChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PurpleBar(
        child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: lightdarkColor),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Weekly \nChallenge',
                          style: MyTextTheme.Poppins24.copyWith(
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text('Plank With Hip Twist',
                            style: MyTextTheme.Poppins12.copyWith(
                                color: accentColor)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/images/design/exercises/plank_exercise.png',
                        fit: BoxFit.cover,
                      )),
                )
              ],
            )));
  }
}
