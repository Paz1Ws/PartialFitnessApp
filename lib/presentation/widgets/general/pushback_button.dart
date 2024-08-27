import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:go_router/go_router.dart';

class PushbackButton extends StatelessWidget {
  final void Function()? onTap;
  const PushbackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_left_rounded),
      iconSize: 36,
      color: secondaryColor,
      onPressed: () {
        onTap != null ? onTap!() : context.pop();
      },
    );
  }
}
