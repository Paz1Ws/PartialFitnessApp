import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';

class PushbackButton extends StatelessWidget {
  const PushbackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_left_rounded),
      iconSize: 36,
      color: secondaryColor,
      onPressed: () {
        context.pop();
      },
    );
  }
}
