import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/screens/nutrition/providers/nutrition_screen_provider.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainMealTemplateScreen extends ConsumerWidget {
  const MainMealTemplateScreen({
    super.key,
    required this.extraFunction,
    required this.selectorProvider,
    required this.child,
    required this.textOptions,
    required this.isSelected,
    required this.title,
  });
  final Widget child;
  final selectorProvider;
  final List<String> textOptions;
  final extraFunction;
  final String isSelected, title;

  // Continue adding this...
  // final List<String> titlesRecommededFoods = [];
  // final List<String> imagesRecommededFoods = [];
  // final List<String> recipesForYou = [];
  @override
  Widget build(BuildContext context, ref) {
    return HomeViewTemplate(
        title: title,
        actions: true,
        onTap: () {
          context.go('/home');
        },
        padding: EdgeInsets.zero,
        bottomNavigationBar: Container(
          height: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: SelectorButtonsGenerator(
                  text: textOptions,
                  fontSize: 16,
                  size: MediaQuery.of(context).size.width / 3.2,
                  itemCount: 3,
                  extraFunction: extraFunction,
                  isSelected: isSelected,
                  provider: selectorProvider,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              child,
            ],
          ),
        ));
  }
}
