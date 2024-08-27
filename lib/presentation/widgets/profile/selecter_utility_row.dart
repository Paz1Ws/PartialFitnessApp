import 'package:flutter/material.dart';
import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class SelecterUtilityRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;
  const SelecterUtilityRow(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: primaryColor, size: 36),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                  color: accentColor, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: () {
            onTap();
          },
          icon: Icon(Icons.arrow_right_rounded),
          color: secondaryColor,
          iconSize: 36,
        )
      ],
    );
  }
}
