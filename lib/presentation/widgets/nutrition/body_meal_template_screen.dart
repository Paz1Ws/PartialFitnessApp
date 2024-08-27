import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/screens/profile/screens/favorites/user_favorites_view.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

class BodyMealTemplateScreen extends StatelessWidget {
  const BodyMealTemplateScreen({
    super.key,
    required this.onTap,
    required this.imagefoodOfTheDay,
    required this.titleFoodOfTheDay,
    required this.timeFoodOfTheDay,
    required this.caloriesFoodOfTheDay,
  });
  final void Function() onTap;
  final String imagefoodOfTheDay, titleFoodOfTheDay;
  final int timeFoodOfTheDay, caloriesFoodOfTheDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TrainingOrMealOfTheDay(
          onTap: onTap,
          image: imagefoodOfTheDay,
          label: 'Recipe of the day',
          title: titleFoodOfTheDay,
          duration: timeFoodOfTheDay,
          calories: caloriesFoodOfTheDay,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExercisesOrFoodRecommendationsContainer(
                titles: const ['Fruit Smoothie', 'Vegan Salad'],
                images: const [
                  'assets/images/design/nutrition/fruit_smoothie.png',
                  'assets/images/design/nutrition/salad_with_quinoa.png',
                ],
                times: const [30, 10],
                kcals: const [200, 100],
                descriptions: const [
                  'Fruit smoothie is a healthy and delicious meal that is perfect for a light lunch.',
                  'Salad with quinoa is a healthy and delicious meal that is perfect for a light lunch.',
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Recipes for you',
                  style: MyTextTheme.Poppins18.copyWith(
                    color: secondaryColor,
                  )),
              ListView.builder(
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
        ),
      ],
    );
  }
}
