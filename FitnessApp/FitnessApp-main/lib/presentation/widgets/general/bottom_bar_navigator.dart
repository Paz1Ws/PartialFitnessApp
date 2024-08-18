import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../config/theme/app_colors.dart';

class MyBottomBarNavigator extends StatelessWidget {
  const MyBottomBarNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: primaryColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.fileSignature),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.star),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.headset),
          label: 'Resources',
        ),
      ],
      onTap: (index) {
        // Handle item tap here
        switch (index) {
          case 0:
            context.go('/home');
            break;
          case 1:
            // Handle Progress item tap
            break;
          case 2:
            // Handle Favorites item tap
            break;
          case 3:
            // Handle Resources item tap
            break;
        }
      },

      selectedItemColor: secondaryColor, // Set the selected item color
      unselectedItemColor: accentColor, // Set the unselected item color
    );
  }
}
