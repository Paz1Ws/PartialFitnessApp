import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../widgets/widgets.dart';
import '../../../../screens.dart';

class RecommendationsView extends ConsumerWidget {
  const RecommendationsView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
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
