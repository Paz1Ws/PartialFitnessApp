import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../widgets/widgets.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'Fill Profile',
      widget: FillProfileView(),
    );
  }
}

class FillProfileView extends ConsumerWidget {
  const FillProfileView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              'Your information will be secure with us.',
              textAlign: TextAlign.center,
              style: GoogleFonts.leagueSpartan(
                fontSize: 14,
                color: accentColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 20),
          PurpleBar(height: 140.00, child: ProfilePhoto()),
          InputContainer(
            islogin: false,
            isFillProfile: true,
            formFields: 4,
            textFormFields: const [
              'Full Name',
              'Nickname',
              'Email',
              'Phone Number',
            ],
          )
        ],
      ),
    );
  }
}
