import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTypeHeightProvider = StateProvider<String>(
  (ref) => 'Cm', // Initial state is cm
);
