import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedGoalProvider = StateProvider<String>(
  (ref) => 'Gain Muscle', // Initial state is cm
);
