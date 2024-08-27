import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/nutrition/providers/nutrition_screen_provider.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../widgets/widgets.dart';

class NutritionMainView extends ConsumerWidget {
  const NutritionMainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final nutritionScreenProv = ref.watch(nutritionScreenProvider);
    final List<String> nutritiontTextOptions = [
      'Healthy Recipes',
      'Meal Plans',
      'Meal Ideas',
    ];

    return MainMealTemplateScreen(
        selectorProvider: nutritionScreenProvider,
        child: BodyMealTemplateScreen(
          onTap: () {
            // Here add logic to go details of the meal
            null;
          },
          titleFoodOfTheDay: 'Carrot and Orange Smoothie ',
          timeFoodOfTheDay: 10,
          caloriesFoodOfTheDay: 150,
          imagefoodOfTheDay:
              'assets/images/design/nutrition/carrots_and_woman.png',
        ),
        extraFunction: () {
          ref.watch(nutritionScreenProvider.notifier).state == 'Meal Plans'
              ? Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MealPlansController(),
                  ),
                )
              : ref.watch(nutritionScreenProvider.notifier).state ==
                      'Meal Ideas'
                  ? Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MealIdeasWelcome(),
                      ),
                    )
                  : null;
        },
        title: 'Nutrition',
        textOptions: nutritiontTextOptions,
        isSelected: nutritionScreenProv);
  }
}
