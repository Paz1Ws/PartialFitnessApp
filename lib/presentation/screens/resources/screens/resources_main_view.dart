import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/resources/providers/articlestips_type_provider.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResourcesMainView extends ConsumerWidget {
  const ResourcesMainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final articlesTipsTypeProv = ref.watch(articlesTipsTypeProvider);
    return HomeViewTemplate(
        title: 'Resources',
        actions: true,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        leading: false,
        bottomNavigationBar: MyBottomBarNavigator(
          selectedIndex: 3,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: SelectorButtonsGenerator(
                  text: ['Workout Videos', 'Articles & Tips'],
                  size: 160,
                  itemCount: 2,
                  isSelected: articlesTipsTypeProv,
                  provider: articlesTipsTypeProvider,
                ),
              ),
              articlesTipsTypeProv == 'Workout Videos'
                  ? WorkoutVideos()
                  : ArticlesTips(),
            ],
          ),
        ));
  }
}
