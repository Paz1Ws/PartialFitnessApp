import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class CardFeatures extends StatelessWidget {
  final String calories;
  final int time;
  final String? exercises;
  const CardFeatures({
    required this.calories,
    required this.time,
    this.exercises,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.fire,
              color: darkColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "${calories}Kcal",
              style: MyTextTheme.LeagueSpartanLight.copyWith(
                  color: darkColor, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.timer,
              color: darkColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              time.toString() + " min",
              style: MyTextTheme.LeagueSpartanLight.copyWith(
                  color: darkColor, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        if (exercises != null)
          Row(
            children: [
              Icon(
                Icons.fitness_center,
                color: darkColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "${exercises!} Exercises",
                style: MyTextTheme.LeagueSpartanLight.copyWith(
                    color: darkColor, fontWeight: FontWeight.normal),
              ),
            ],
          ),
      ],
    );
  }
}
