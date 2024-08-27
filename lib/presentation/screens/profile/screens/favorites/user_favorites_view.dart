import 'package:flutter/material.dart';
import '../../../../widgets/widgets.dart';

final List<Widget> exampleFavoritesCards = [
  ExerciseAndNutritionCard(
      image: 'assets/images/design/nutrition/fruit_smoothie.png',
      title: 'Fruit Smoothie',
      descriptiveWidget: CardFeatures(
        calories: "200",
        time: 30,
      )),
  ExerciseAndNutritionCard(
      image: 'assets/images/design/nutrition/salad_with_quinoa.png',
      title: 'Vegan Salad',
      descriptiveWidget: CardFeatures(
        calories: "100",
        time: 10,
      )),
  ExerciseAndNutritionCard(
      image: 'assets/images/design/nutrition/fruit_smoothie.png',
      title: 'Fruit Smoothie',
      descriptiveWidget: CardFeatures(
        calories: "200",
        time: 30,
      )),
  ExerciseAndNutritionCard(
      image: 'assets/images/design/nutrition/salad_with_quinoa.png',
      title: 'Vegan Salad',
      descriptiveWidget: CardFeatures(
        calories: "100",
        time: 10,
      )),
  ExerciseAndNutritionCard(
      image: 'assets/images/design/nutrition/fruit_smoothie.png',
      title: 'Fruit Smoothie',
      descriptiveWidget: CardFeatures(
        calories: "200",
        time: 30,
      )),
];

class UserFavoritesView extends StatelessWidget {
  const UserFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      title: 'Favorites',
      leading: false,
      bottomNavigationBar: MyBottomBarNavigator(
        selectedIndex: 2,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: exampleFavoritesCards.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    index == 0
                        ? SortByWidget(
                            text: const ['All', 'Video', 'Article'],
                          )
                        : exampleFavoritesCards[index],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
