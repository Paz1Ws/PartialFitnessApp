import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/register_types_prov.dart';

class ProgressTrackingView extends ConsumerStatefulWidget {
  const ProgressTrackingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ProgressTrackingViewState();
  }
}

class _ProgressTrackingViewState extends ConsumerState<ProgressTrackingView> {
  String? selectedMonth;
  @override
  Widget build(BuildContext context) {
    final registersTypesProv = ref.watch(registersTypesProvider);
    return HomeViewTemplate(
      title: 'Progress Tracking',
      actions: true,
      leading: false,
      bottomNavigationBar: MyBottomBarNavigator(
        selectedIndex: 1,
      ),
      padding: registersTypesProv == 'Workout Logs'
          ? const EdgeInsets.all(0)
          : const EdgeInsets.all(20),
      body: registersTypesProv == 'Workout Logs' ? WorkoutLog() : Charts(),
    );
  }
}
