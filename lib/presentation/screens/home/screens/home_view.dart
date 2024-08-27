import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/theme/app_fonts.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // Delete this list and replace it with your real data

    return HomeViewTemplate(
      bottomNavigationBar: MyBottomBarNavigator(
        selectedIndex: 0,
      ),
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
                  //    context.push('/workout');
                },
                // Nutrition
                () {
                  //   context.push('/nutrition');
                },
                // Community
                () {},
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExercisesOrFoodRecommendationsContainer(
                titles: ['Squat Exercise', 'Full body Scretching'],
                images: [
                  'assets/images/design/exercises/squat_exercise.png',
                  'assets/images/design/exercises/fullbody_stretching.png',
                ],
                times: [30, 10],
                kcals: [300, 100],
                descriptions: [
                  'Squat is a full body exercise that works on your quads, hamstrings, glutes, and lower back.',
                  'Stretching is important for flexibility',
                ],
              ),
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
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: GridView.count(
            //     mainAxisSpacing: 10,
            //     crossAxisSpacing: 10,
            //     crossAxisCount: 2,
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     children: List.generate(
            //       articles.length,
            //       (index) {
            //         return articles[index];
            //       },
            //     ),
            //   ),
            // ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
