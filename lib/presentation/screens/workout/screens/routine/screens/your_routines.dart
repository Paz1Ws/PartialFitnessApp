import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../config/theme/app_colors.dart';
import '../../../../../../config/theme/app_fonts.dart';
import '../../../../../widgets/widgets.dart';

class MyRoutines extends ConsumerWidget {
  const MyRoutines({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<Widget> exercises = [
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/squat_exercise.png',
        title: 'Squat Exercise',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/squat_exercise.png',
        title: 'Squat Exercise',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/squat_exercise.png',
        title: 'Squat Exercise',
      ),
    ];
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monday',
              style: MyTextTheme.Poppins20.copyWith(
                  color: secondaryColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: exercises.map((exercise) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: exercise,
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tuesday',
              style: MyTextTheme.Poppins20.copyWith(
                  color: secondaryColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: exercises.map((exercise) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: exercise,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
