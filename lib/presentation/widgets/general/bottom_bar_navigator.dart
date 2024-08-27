import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../config/theme/app_colors.dart';

class MyBottomBarNavigator extends StatefulWidget {
  final List<BottomNavigationBarItem>? items;
  final List<void Function(int)>? onTap;
  final int? selectedIndex;
  const MyBottomBarNavigator({
    this.items,
    this.selectedIndex,
    this.onTap,
    super.key,
  });

  @override
  _MyBottomBarNavigatorState createState() => _MyBottomBarNavigatorState();
}

class _MyBottomBarNavigatorState extends State<MyBottomBarNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (widget.onTap != null) {
      switch (widget.onTap!.length) {
        case 1:
          widget.onTap![0](index);
          break;
        case 2:
          widget.onTap![1](index);
          break;
        case 3:
          widget.onTap![2](index);
          break;
        case 4:
          widget.onTap![3](index);
          break;
      }
    } else {
      switch (index) {
        case 0:
          context.go('/home');
          break;
        case 1:
          context.go('/progress');
          break;
        case 2:
          context.go('/favorites');
          break;
        case 3:
          context.go('/resources');
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: primaryColor,
      items: widget.items ??
          const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fileSignature),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidStar),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.headset),
              label: 'Resources',
            ),
          ],
      currentIndex: widget.selectedIndex ?? _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: secondaryColor,
      showSelectedLabels: true, // Show the selected item label
      unselectedItemColor: accentColor, // Set the unselected item color
    );
  }
}
