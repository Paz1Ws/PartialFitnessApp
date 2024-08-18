import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

import '../../../config/theme/app_colors.dart';

class ExercisesRecommendationsContainer extends StatelessWidget {
  const ExercisesRecommendationsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      width: double.infinity / 1.2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Recommendations',
                  style: MyTextTheme.Poppins20.copyWith(color: secondaryColor)),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_right_rounded),
                color: secondaryColor,
                iconSize: 36,
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: const [
              Expanded(
                child: ExerciseCard(),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ExerciseCard(
                  image:
                      'assets/images/design/exercises/fullbody_stretching.png',
                  exercise: 'Full body Scretching',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
