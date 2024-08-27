import 'package:flutter/material.dart';

import '../../../../../widgets/widgets.dart';

class WorkoutDetails extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int time;
  final int kcal;
  final String level;
  const WorkoutDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.time,
      required this.kcal,
      required this.level});

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      padding: EdgeInsets.zero,
      title: 'Workout Details',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            PurpleBar(
              height: MediaQuery.of(context).size.height / 1.8,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: WorkoutVideoContainer(
                  time: time,
                  kcal: kcal,
                  level: level,
                  image: image,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GreenWorkoutCard(
              time: time,
              kcal: kcal,
              level: level,
              title: title,
              description: description,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
