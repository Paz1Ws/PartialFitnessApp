import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../widgets/setup/select_activity_level.dart';
import '../../../../widgets/widgets.dart';

class SelectActivityLevel extends StatelessWidget {
  const SelectActivityLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'Physical Activity Level',
      widget: SelectActivityLevelView(),
    );
  }
}

class SelectActivityLevelView extends ConsumerWidget {
  const SelectActivityLevelView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Remember keep your body active is the key to a healthy life.',
              textAlign: TextAlign.center,
              style: GoogleFonts.leagueSpartan(
                fontSize: 14,
                color: accentColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 120),
          Column(
            children: [
              SelectActivityLevelRow(text: 'Begginer'),
              SizedBox(height: 10),
              SelectActivityLevelRow(text: 'Intermediate'),
              SizedBox(height: 10),
              SelectActivityLevelRow(text: 'Advanced'),
            ],
          ),
        ],
      ),
    );
  }
}
