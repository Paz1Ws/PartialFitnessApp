import 'package:flutter/material.dart';

import 'package:flutter_fitness_app/presentation/screens/nutrition/screens/MealIdeas/providers/meal_ideas_sections_provider.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// IMPORTANT: Remember this section is very large, because is used for examples
// With the adequate logic, the code will be more clean :)

class MealIdeasMainView extends ConsumerWidget {
  const MealIdeasMainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final mealIdeasSections = ref.watch(mealIdeasSectionsProvider);
    final List<String> mealIdeasOptions = ['Breakfast', 'Lunch', 'Dinner'];
    return MainMealTemplateScreen(
      selectorProvider: mealIdeasSectionsProvider,
      title: 'Meal Ideas',
      extraFunction: () {
        // YOU CAN USE THIS LOGIC TO CHANGE AND REUSE THE BODY OF THE SCREEN
        // BUT I DON'T DO THIS, BECAUSE I LEAVE IT TO YOUR DISCRETION

        // mealIdeasSectionsProvider == 'Lunch'
        //     ? updateBodyIdeasSectionsProvider(
        //         ref,
        //         BodyMealTemplateScreen(
        //           onTap: () {
        //             // Here add logic to go details of the meal
        //             null;
        //           },
        //           imagefoodOfTheDay:
        //               'assets/images/design/nutrition/lunch_example.png',
        //           titleFoodOfTheDay: 'Salmon And Avocado Salad',
        //           timeFoodOfTheDay: 25,
        //           caloriesFoodOfTheDay: 600,
        //         ))
        //     : mealIdeasSectionsProvider == 'Dinner'
        //         ? updateBodyIdeasSectionsProvider(
        //             ref,
        //             BodyMealTemplateScreen(
        //               onTap: () {
        //                 // Here add logic to go details of the meal
        //                 null;
        //               },
        //               imagefoodOfTheDay:
        //                   'assets/images/design/nutrition/dinner_example.png',
        //               titleFoodOfTheDay: 'Grilled Chicken Salad',
        //               timeFoodOfTheDay: 35,
        //               caloriesFoodOfTheDay: 650,
        //             ))
        //         : null;
      },
      textOptions: mealIdeasOptions,
      isSelected: mealIdeasSections,

      // This screen also can be the breakfast screen by default.

      child: ref.watch(mealIdeasSectionsProvider.notifier).state == 'Lunch'
          ? LunchExample()
          : ref.watch(mealIdeasSectionsProvider.notifier).state == 'Dinner'
              ? DinnerExample()
              : BodyMealTemplateScreen(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FoodOrArticleDetails(
                              ingredients: [
                                '2 eggs',
                                'Salt and pepper',
                                '1 tbsp olive oil',
                                '1 handful of spinach',
                                '1 tomato, diced',
                                '1/4 cup grated cheddar cheese',
                              ],
                              titleOfSection: 'Meal Ideas',
                              preparation:
                                  '1. In a bowl, whisk together the eggs, salt, and pepper.\n2. Heat the olive oil in a non-stick frying pan over medium heat.\n3. Add the spinach and tomato and cook for 2-3 minutes until the spinach has wilted.\n4. Pour in the egg mixture and cook for 3-4 minutes until the edges start to set.\n5. Sprinkle over the cheese and cook for a further 2-3 minutes until the cheese has melted.\n6. Fold the omelette in half and serve.',
                              image:
                                  'assets/images/design/nutrition/breakfast_example.png',
                              title: 'Spinach and Tomato Omelette',
                              time: 30,
                              calories: 500,
                            )));
                  },
                  imagefoodOfTheDay:
                      'assets/images/design/nutrition/breakfast_example.png',
                  titleFoodOfTheDay: 'Spinach and Tomato Omelette',
                  timeFoodOfTheDay: 30,
                  caloriesFoodOfTheDay: 500,
                ),
    );
  }
}

class LunchExample extends StatelessWidget {
  const LunchExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyMealTemplateScreen(
      onTap: () {
        // Here add logic to go details of the meal
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => FoodOrArticleDetails(
                    ingredients: [
                      '2 salmon fillets',
                      'Salt and pepper',
                      '2 tbsp olive oil',
                      '1 tbsp lemon juice',
                      '1 tsp Dijon mustard',
                      '1 tsp honey',
                      '100 g mixed leaves',
                      '100 g cherry tomatoes, halved',
                      '1 cucumber, sliced',
                      '1 avocado, sliced',
                    ],
                    titleOfSection: 'Meal Ideas',
                    preparation:
                        '1. Preheat the oven to 200°C (180°C fan) | 400°F | gas 6.\n2. Place the salmon fillets on a baking tray and season with salt and pepper.\n3. Bake for 15-20 minutes until cooked through.\n4. Meanwhile, make the dressing by whisking together the olive oil, lemon juice, mustard, and honey.\n5. Season with salt and pepper.\n6. In a large bowl, toss together the mixed leaves, cherry tomatoes, cucumber, and avocado.\n7. Divide the salad between plates and top with the salmon fillets.\n8. Drizzle over the dressing and serve.',
                    image: 'assets/images/design/nutrition/lunch_example.png',
                    title: 'Salmon And Avocado Salad',
                    time: 25,
                    calories: 600,
                  )),
        );
      },
      imagefoodOfTheDay: 'assets/images/design/nutrition/lunch_example.png',
      titleFoodOfTheDay: 'Salmon And Avocado Salad',
      timeFoodOfTheDay: 25,
      caloriesFoodOfTheDay: 600,
    );
  }
}

class DinnerExample extends StatelessWidget {
  const DinnerExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyMealTemplateScreen(
      onTap: () {
        // Here add logic to go details of the meal
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => FoodOrArticleDetails(
                    ingredients: [
                      '2 chicken breasts',
                      'Salt and pepper',
                      '1 tbsp olive oil',
                      '1 tbsp lemon juice',
                      '1 tsp Dijon mustard',
                      '1 tsp honey',
                      '100 g mixed leaves',
                      '100 g cherry tomatoes, halved',
                      '1 cucumber, sliced',
                      '1 avocado, sliced',
                    ],
                    titleOfSection: 'Meal Ideas',
                    preparation:
                        '1. Preheat the oven to 200°C (180°C fan) | 400°F | gas 6.\n2. Place the chicken breasts on a baking tray and season with salt and pepper.\n3. Bake for 15-20 minutes until cooked through.\n4. Meanwhile, make the dressing by whisking together the olive oil, lemon juice, mustard, and honey.\n5. Season with salt and pepper.\n6. In a large bowl, toss together the mixed leaves, cherry tomatoes, cucumber, and avocado.\n7. Divide the salad between plates and top with the chicken breasts.\n8. Drizzle over the dressing and serve.',
                    image: 'assets/images/design/nutrition/dinner_example.png',
                    title: 'Grilled Chicken Salad',
                    time: 35,
                    calories: 650,
                  )),
        );
      },
      imagefoodOfTheDay: 'assets/images/design/nutrition/dinner_example.png',
      titleFoodOfTheDay: 'Grilled Chicken Salad',
      timeFoodOfTheDay: 35,
      caloriesFoodOfTheDay: 650,
    );
  }
}
