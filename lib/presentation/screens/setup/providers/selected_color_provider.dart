import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Gender { male, female }

final selectedGenderProvider = StateProvider<Gender>(
  (ref) => Gender.male, // Initial state is male
);
