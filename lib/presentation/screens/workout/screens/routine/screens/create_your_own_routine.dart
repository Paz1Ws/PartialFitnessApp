import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../config/theme/app_colors.dart';
import '../../../../../../config/theme/app_fonts.dart';
import '../../../../../widgets/widgets.dart';

class CreateYourOwnRoutine extends ConsumerWidget {
  const CreateYourOwnRoutine({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<Widget> exercises = [
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
      ),
    ];
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Round 1',
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
              'Round 2',
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
