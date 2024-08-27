import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class MealPlansFeatures3 extends StatelessWidget {
  final void Function() nextPage;

  const MealPlansFeatures3({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        GoRouter.of(context).go('/mealplans');
      }
    });
    return HomeViewTemplate(
      title: 'Meal Plans',
      actions: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.55,
              child: RiveAnimation.asset(
                'assets/animations/progress_bar_concept.riv',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Center(
            child: Text('Creating A Plan For You',
                style: MyTextTheme.Poppins24.copyWith(
                  color: secondaryColor,
                )),
          ),
        ],
      ),
    );
  }
}
