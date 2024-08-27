import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/theme/app_colors.dart';
import '../widgets.dart';

class SelectSection extends StatelessWidget {
  final List<void Function()> onTap;
  const SelectSection({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SelectIconButton(
          icon: FontAwesomeIcons.houseFire,
          text: 'Home',
          onTap: onTap[0],
        ),
        Container(
          width: 1,
          height: 36,
          color: primaryColor,
        ),
        SelectIconButton(
          icon: FontAwesomeIcons.dumbbell,
          text: 'Workout',
          onTap: onTap[1],
        ),
        Container(
          width: 1,
          height: 36,
          color: primaryColor,
        ),
        SelectIconButton(
          icon: FontAwesomeIcons.appleWhole,
          text: 'Nutrition',
          onTap: onTap[2],
        ),
        Container(
          width: 1,
          height: 36,
          color: primaryColor,
        ),
        SelectIconButton(
          icon: FontAwesomeIcons.peopleGroup,
          text: 'Community',
          onTap: onTap[3],
        ),
      ],
    );
  }
}
