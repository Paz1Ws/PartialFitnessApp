import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';

class PurpleBar extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  const PurpleBar({super.key, required this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: width ?? double.infinity,
      height: height ?? MediaQuery.sizeOf(context).height * 0.2,
      child: child,
    );
  }
}
