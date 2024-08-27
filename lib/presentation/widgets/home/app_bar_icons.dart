import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';

class AppBarIcons extends StatelessWidget {
  final List<void Function()> onTap;
  const AppBarIcons({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
          onPressed: onTap[0],
          iconSize: 18,
          color: primaryColor,
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.solidBell),
          onPressed: onTap[1],
          iconSize: 18,
          color: primaryColor,
        ),
        IconButton(
          color: primaryColor,
          icon: Icon(FontAwesomeIcons.solidUser),
          iconSize: 18,
          onPressed: onTap[2],
        ),
      ],
    );
  }
}
