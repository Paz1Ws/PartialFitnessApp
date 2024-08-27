import 'package:flutter/material.dart';
import '../../../config/theme/app_colors.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: accentColor, width: 1),
        ),
        child: Icon(
          icon,
          size: 80,
          color: color == secondaryColor ? darkColor : accentColor,
        ),
      ),
    );
  }
}
