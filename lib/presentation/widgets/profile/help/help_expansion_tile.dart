import 'package:flutter/material.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class HelpExpansionTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String content;

  const HelpExpansionTile({
    required this.title,
    required this.icon,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: MyTextTheme.LeagueSpartanMedium.copyWith(
            color: accentColor, fontSize: 16),
      ),
      leading: Icon(
        icon,
        color: secondaryColor,
      ),
      trailing: Icon(
        Icons.arrow_drop_down,
        color: secondaryColor,
      ),
      children: [
        ListTile(
          title: Text(
            content,
            style: MyTextTheme.LeagueSpartanLight.copyWith(
                color: accentColor, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
