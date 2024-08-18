import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/routes/go_router.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/theme/app_fonts.dart';
import '../../screens.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // Delete this list and replace it with your real data
    List<Widget> articles = [
      ArticleCard(
        image: 'assets/images/design/articles/article1.png',
        description: 'Supplement Guide',
      ),
      ArticleCard(
        image: 'assets/images/design/articles/article2.png',
        description: '15 Quick & Effective Daily Routines',
      ),
      ArticleCard(
        image: 'assets/images/design/articles/article1.png',
      ),
      ArticleCard(image: 'assets/images/design/articles/article2.png'),
    ];
    return HomeViewTemplate(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SelectSection(
              onTap: [
                // Home
                () {
                  if (ModalRoute.of(context)?.settings.name != '/home') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                // Workout
                () {
                  context.push('/workout');
                },
                // Nutrition
                () {},
                // Community
                () {},
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExercisesRecommendationsContainer(),
            ),
            SizedBox(height: 20),
            WeeklyChallenge(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('    Articles & Tips',
                  style: MyTextTheme.Poppins20.copyWith(color: secondaryColor)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  articles.length,
                  (index) {
                    return articles[index];
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
