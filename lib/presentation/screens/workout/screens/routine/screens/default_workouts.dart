import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/theme/app_colors.dart';
import '../../../../../../config/theme/app_fonts.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../screens.dart';
import '../../../../setup/providers/select_activity_level_provider.dart';

class DefaultWorkouts extends ConsumerWidget {
  const DefaultWorkouts({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<String> activityLevel = ['Begginer', 'Intermediate', 'Advanced'];
    final activityLevelProv = ref.watch(selectedActivityLevelProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SelectorButtonsGenerator(
              text: activityLevel,
              size: 120,
              itemCount: 3,
              isSelected: activityLevelProv,
              provider: selectedActivityLevelProvider,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TrainingOrMealOfTheDay(
            onTap: () {
              // Here to go details of the workout
              null;
            },
            title: 'Functional Training',
            duration: 30,
            calories: 200,
            exercises: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s go $activityLevelProv',
                      style: MyTextTheme.Poppins20.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Explore the best workouts for you',
                      style: MyTextTheme.Poppins12.copyWith(
                          color: accentColor, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(12),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemExtent: 180,
            itemCount: exampleFavoritesCards.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  exampleFavoritesCards[index],
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
