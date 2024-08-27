import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../config/theme/app_colors.dart';
import '../../../../../../config/theme/app_fonts.dart';

class WorkoutVideos extends ConsumerWidget {
  const WorkoutVideos({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<Widget> exercises = [
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/fullbody_stretching.png',
        title: 'Full body Scretching',
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const WorkoutVideoInformation(
                image:
                    'assets/images/design/exercises/fullbody_stretching.png');
          }));
        },
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/plank_exercise.png',
        title: 'Plank Exercise',
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const WorkoutVideoInformation(
                image: 'assets/images/design/exercises/plank_exercise.png');
          }));
        },
      ),
      ExerciseOrFoodCard(
        image: 'assets/images/design/exercises/leg_exercise.png',
        title: 'Leg Exercise',
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const WorkoutVideoInformation(
                image: 'assets/images/design/exercises/leg_exercise.png');
          }));
        },
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
        image: 'assets/images/design/exercises/squat_exercise.png',
        title: 'Squat Exercise',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'Super Efective and Quick Workout Videos',
          style: MyTextTheme.Poppins20.copyWith(
              color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        Text(
          'Discover the best workout videos for you',
          style:
              MyTextTheme.Poppins12.copyWith(color: accentColor, fontSize: 14),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: exercises.map((exercise) {
              return SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: exercise,
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
