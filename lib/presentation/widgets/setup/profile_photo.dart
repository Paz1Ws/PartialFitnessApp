import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/theme/app_colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(
            'assets/images/design/setup/portrait_fitness_person.png',
          ),
        ),
        Positioned(
          bottom: 10,
          right: 140,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: secondaryColor,
            child: IconButton(
              color: darkColor,
              icon: Icon(FontAwesomeIcons.pencil),
              onPressed: () {
                // Add your edit button logic here
              },
            ),
          ),
        ),
      ],
    );
  }
}
