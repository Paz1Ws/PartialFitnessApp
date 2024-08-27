import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

class MealPlansFeatures1 extends StatelessWidget {
  final void Function() nextPage;

  const MealPlansFeatures1({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      title: 'Meal Plans',
      actions: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MealFeaturesContainer(
              title: 'Meal Features',
              subtitle: 'What are you dietary preferences?',
              options: [
                'Vegan',
                'Vegetarian',
                'Gluten Free',
                'Dairy Free',
                'Low Carb',
                'High Protein',
                'No Preferences',
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            MealFeaturesContainer(
              title: 'Alerggies',
              subtitle: 'Do you have any allergies?',
              options: [
                'Peanuts',
                'Tree Nuts',
                'Dairy',
                'Eggs',
                'Soy',
                'Fish',
                'Shellfish',
                'Wheat',
                'No Allergies',
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            MealFeaturesContainer(
              title: 'Meal Types',
              subtitle: 'What type of meals do you prefer?',
              options: [
                'Breakfast',
                'Lunch',
                'Dinner',
                'Snacks',
                'Desserts',
                'Smoothies',
                'No Preferences',
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            NextButton(
              text: 'Next',
              buttonColor: secondaryColor,
              textColor: lightdarkColor,
              onPressed: () {
                nextPage();
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          ],
        ),
      ),
    );
  }
}
