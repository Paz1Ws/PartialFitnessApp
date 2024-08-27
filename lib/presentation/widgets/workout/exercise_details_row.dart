import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExerciseDetailsRow extends StatelessWidget {
  final int time;
  final int kcal;
  final double height;
  final String level;
  const ExerciseDetailsRow({
    required this.time,
    this.height = 40.0,
    required this.kcal,
    required this.level,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Wrap(
          spacing: 12,
          children: [
            Icon(
              Icons.access_time,
              color: darkColor,
            ),
            Text(
              time.toString() + ' min',
              style: TextStyle(
                color: darkColor,
              ),
            ),
            Icon(
              FontAwesomeIcons.fire,
              color: darkColor,
            ),
            Text(
              kcal.toString() + ' kcal',
              style: TextStyle(
                color: darkColor,
              ),
            ),
            Icon(
              FontAwesomeIcons.personRunning,
              color: darkColor,
            ),
            Text(
              level,
              style: TextStyle(
                color: darkColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
