import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTypeWeightProvider = StateProvider<String>(
  (ref) => 'Kg', // Initial state is kg
);
