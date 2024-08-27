import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../config/theme/app_colors.dart';
import '../../../../../../../config/theme/app_fonts.dart';

class WorkoutVideoInformation extends ConsumerWidget {
  final String image;
  const WorkoutVideoInformation({super.key, required this.image});

  @override
  Widget build(BuildContext context, ref) {
    List<Widget> cardsExamples = [
      PlayerWorkoutContainer(
        title: 'Chest and Triceps',
        duration: Duration(minutes: 20),
        repetition: 12,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const WorkoutDetails(
              level: 'Intermediate',
              kcal: 200,
              time: 35,
              title: 'Chest and Triceps',
              image: 'assets/images/design/exercises/chest_exercise.png',
              description:
                  'This workout is designed to target your chest and triceps muscles. It is a great workout for building strength and muscle mass. The workout consists of 4 exercises that target the chest and triceps muscles. ',
            );
          }));
        },
      ),
      PlayerWorkoutContainer(
        title: 'Back and Biceps',
        duration: Duration(minutes: 25),
        repetition: 10,
      ),
      PlayerWorkoutContainer(
        title: 'Shoulders and Abs',
        duration: Duration(minutes: 18),
        repetition: 15,
      ),
      PlayerWorkoutContainer(
        title: 'Legs and Glutes',
        duration: Duration(minutes: 30),
        repetition: 8,
      ),
      PlayerWorkoutContainer(
        title: 'Full Body',
        duration: Duration(minutes: 45),
        repetition: 6,
      ),
    ];

    return HomeViewTemplate(
      padding: const EdgeInsets.all(0),
      title: 'Resources',
      actions: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PurpleBar(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Round 1',
                  style: MyTextTheme.Poppins14.copyWith(color: secondaryColor),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...cardsExamples,
            ],
          ),
        ),
      ),
    );
  }
}
