import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

import '../../../config/theme/app_colors.dart';

class ExercisesOrFoodRecommendationsContainer extends StatelessWidget {
  final List<String> images;
  final List<String> titles;
  final List<int> times;
  final List<int> kcals;
  final List<String> descriptions;

  ExercisesOrFoodRecommendationsContainer({
    Key? key,
    required this.images,
    required this.titles,
    required this.times,
    required this.kcals,
    required this.descriptions,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      width: double.infinity / 1.2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Recommendations',
                  style: MyTextTheme.Poppins20.copyWith(color: secondaryColor)),
              Expanded(child: SizedBox()),
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
            children: [
              Expanded(
                child: ExerciseOrFoodCard(
                  image: images[0],
                  title: titles[0],
                  time: times[0],
                  kcal: kcals[0],
                  description: descriptions[0],
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ExerciseOrFoodCard(
                  image: images[1],
                  title: titles[1],
                  time: times[1],
                  kcal: kcals[1],
                  description: descriptions[1],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
