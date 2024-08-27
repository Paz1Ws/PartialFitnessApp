import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InputContainer(
        isFillProfile: true,
        islogin: false,
        formFields: 4,
        textFormFields: const [
          'Full Name',
          'Email',
          'Mobile Number',
          'Date of Birth',
          'Weight',
          'Height'
        ],
      ),
      ElevatedButton(
          onPressed: () {
            // print('Update Profile');
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              minimumSize: Size(240, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36))),
          child: Text('Update Profile',
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                  color: darkColor, fontSize: 18))),
      SizedBox(height: 20),
    ]);
  }
}
