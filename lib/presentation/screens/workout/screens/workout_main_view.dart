import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widgets/widgets.dart';
import '../../screens.dart';
import '../providers/workout_screen_provider.dart';

class WorkoutMainView extends ConsumerWidget {
  const WorkoutMainView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final workoutScreenProv = ref.watch(workoutScreenProvider);
    return HomeViewTemplate(
        title: workoutScreenProv == 'DefaultWorkouts'
            ? 'Workout'
            : workoutScreenProv == 'MyRoutines'
                ? 'My Routines'
                : 'Create Your Own Routine',
        bottomNavigationBar: MyBottomBarNavigator(
          onTap: [
            (index) {
              switch (index) {
                case 0:
                  ref.read(workoutScreenProvider.notifier).state =
                      'DefaultWorkouts';
                  break;
                case 1:
                  ref.read(workoutScreenProvider.notifier).state = 'MyRoutines';
                  break;
                case 2:
                  ref.read(workoutScreenProvider.notifier).state =
                      'CreateYourOwnRoutine';
                  break;
              }
            }
          ],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dumbbell),
              label: 'Workout',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.noteSticky),
              label: 'My Routines',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Create',
            ),
          ],
        ),
        actions: false,
        padding: workoutScreenProv == 'DefaultWorkouts'
            ? EdgeInsets.zero
            : EdgeInsets.symmetric(horizontal: 20),
        body: workoutScreenProv == 'DefaultWorkouts'
            ? DefaultWorkouts()
            : workoutScreenProv == 'MyRoutines'
                ? MyRoutines()
                : CreateYourOwnRoutine());
  }
}
