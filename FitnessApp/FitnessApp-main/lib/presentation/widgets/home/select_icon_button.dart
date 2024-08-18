import 'package:flutter/material.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class SelectIconButton extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final String text;
  const SelectIconButton({
    required this.icon,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onTap,
          iconSize: 34,
          color: primaryColor,
        ),
        Text(text,
            style:
                MyTextTheme.LeagueSpartanLight.copyWith(color: secondaryColor)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.24),
      ],
    );
  }
}
