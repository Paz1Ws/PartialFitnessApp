import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedValueProvider = StateProvider<int>(
  (ref) => 0, // Initial state is male
);
