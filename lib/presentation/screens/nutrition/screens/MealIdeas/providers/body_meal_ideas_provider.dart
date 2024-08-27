import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bodyIdeasSectionsProvider = StateProvider<Widget>(
  (ref) => BodyMealTemplateScreen(
    imagefoodOfTheDay: 'assets/images/design/nutrition/breakfast_example.png',
    titleFoodOfTheDay: 'Spinach and Tomato Omlette',
    timeFoodOfTheDay: 30,
    caloriesFoodOfTheDay: 500,
    onTap: () {
      // Aquí puedes agregar la lógica para ir a los detalles de la comida
      null;
    },
  ),
);

void updateBodyIdeasSectionsProvider(WidgetRef ref, Widget newWidget) {
  ref.read(bodyIdeasSectionsProvider.notifier).state = newWidget;
}
