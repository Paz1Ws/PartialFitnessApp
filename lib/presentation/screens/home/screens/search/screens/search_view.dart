import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../widgets/widgets.dart';
import '../providers/search_selector.dart';

class SearchView extends ConsumerWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<String> notificationsTypes = ['All', 'Workout', 'Nutrition'];
    final searchSelector = ref.watch(searchSelectorProvider);

    return HomeViewTemplate(
        title: 'Search',
        actions: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MySearchBar(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: SelectorButtonsGenerator(
                    text: notificationsTypes,
                    size: 100,
                    itemCount: 3,
                    isSelected: searchSelector,
                    provider: searchSelectorProvider,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ExercisesOrFoodRecommendationsContainer(
                  titles: ['Squat Exercise', 'Full body Scretching'],
                  images: [
                    'assets/images/design/exercises/squat_exercise.png',
                    'assets/images/design/exercises/fullbody_stretching.png',
                  ],
                  times: [30, 10],
                  kcals: [300, 100],
                  descriptions: [
                    'Squat is a full body exercise that works on your quads, hamstrings, glutes, and lower back.',
                    'Stretching is important for flexibility',
                  ],
                ),
                searchSelector == 'Workout'
                    ? SearchByField(
                        searchBy: 'Workout',
                      )
                    : searchSelector == 'Nutrition'
                        ? SearchByField(
                            searchBy: 'Nutrition',
                          )
                        : searchSelector == 'All'
                            ? ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemExtent: 200,
                                itemCount: exampleFavoritesCards.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      exampleFavoritesCards[index],
                                    ],
                                  );
                                },
                              )
                            : Container(),
              ],
            ),
          ),
        ));
  }
}
