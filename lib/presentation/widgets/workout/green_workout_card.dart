import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

class GreenWorkoutCard extends StatelessWidget {
  final String title;
  final String description;
  final int time;
  final int kcal;
  final String level;
  const GreenWorkoutCard({
    required this.time,
    required this.kcal,
    required this.level,
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: MyTextTheme.Poppins20.copyWith(
              color: darkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: MyTextTheme.Poppins12.copyWith(
              color: darkColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ExerciseDetailsRow(
            time: time,
            kcal: kcal,
            level: level,
            height: 60,
          ),
        ],
      ),
    );
  }
}
