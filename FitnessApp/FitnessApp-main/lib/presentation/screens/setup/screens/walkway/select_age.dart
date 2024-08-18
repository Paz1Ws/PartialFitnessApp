import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../widgets/widgets.dart';
import '../../providers/select_age_provider.dart';

class SelectAge extends StatelessWidget {
  const SelectAge({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'How Old Are You?',
      widget: SelectAgeView(),
    );
  }
}

class SelectAgeView extends ConsumerWidget {
  const SelectAgeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        SizedBox(height: 30),
        Center(
          child: Text(
            'The age affect directly the \nnutrients and training you need.',
            textAlign: TextAlign.center,
            style: GoogleFonts.leagueSpartan(
              fontSize: 14,
              color: accentColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 50),
        Text(
          ref.watch(selectedValueProvider).toString(),
          style: GoogleFonts.poppins(
            fontSize: 64,
            color: accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          FontAwesomeIcons.caretUp,
          color: secondaryColor,
          size: 60,
        ),
        PurpleBar(
          height: MediaQuery.sizeOf(context).height / 7.5,
          child: RotatedBox(
            quarterTurns: 1,
            child: ListWheelScrollView(
              perspective: 0.002,
              physics: AlwaysScrollableScrollPhysics(),
              diameterRatio: 3,
              onSelectedItemChanged: (value) {
                ref.read(selectedValueProvider.notifier).state = value;
                print(value);
              },
              itemExtent: 100,
              children: List.generate(
                100,
                (index) => RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    index.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: ref.watch(selectedValueProvider.notifier).state ==
                              index
                          ? accentColor
                          : lightdarkColor.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.translationValues(-25, -130, 0),
          child: CustomPaint(
            painter: CustomBoxPainter(),
            size: Size(150, 150), // Adjust size as needed
          ),
        )
      ],
    );
  }
}
