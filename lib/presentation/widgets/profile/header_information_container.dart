import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';
import '../../screens/profile/providers/is_edit_profile.dart';

class HeaderInformationContainer extends ConsumerWidget {
  const HeaderInformationContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/design/setup/portrait_fitness_person.png',
              ),
            ),
            Positioned(
              top: 80,
              left: 80,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: secondaryColor,
                child: IconButton(
                  color: darkColor,
                  icon: Icon(FontAwesomeIcons.pencil),
                  onPressed: () {
                    ref.read(isEditProfileProvider.notifier).state =
                        ref.read(isEditProfileProvider.notifier).state
                            ? false
                            : true;
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Andrew Brown',
          style: MyTextTheme.Poppins20.copyWith(color: accentColor),
        ),
        Text(
          'andrewbrown@gmail.com',
          style: MyTextTheme.Poppins14.copyWith(
              color: accentColor, fontWeight: FontWeight.normal),
        ),
        Text(
          'Birthday: 12/12/1990',
          style: MyTextTheme.Poppins14.copyWith(
              color: accentColor, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
