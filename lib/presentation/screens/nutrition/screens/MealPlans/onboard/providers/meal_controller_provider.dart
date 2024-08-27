import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealControllerProvider = StateProvider<PageController>((ref) {
  return PageController();
});
