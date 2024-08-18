import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../widgets/widgets.dart';
import '../../providers/select_age_provider.dart';
import '../../providers/select_height_provider.dart';

class SelectHeight extends StatelessWidget {
  const SelectHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'What Is Your Height?',
      widget: SelectHeightView(),
    );
  }
}

class SelectHeightView extends ConsumerWidget {
  const SelectHeightView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            'And yes, the weight also affect directly the \nnutrients and training you need.',
            textAlign: TextAlign.center,
            style: GoogleFonts.leagueSpartan(
              fontSize: 14,
              color: accentColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Text(
              ref.watch(selectedValueProvider).toString(),
              style: GoogleFonts.poppins(
                fontSize: 64,
                color: accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(55, -35, 0),
              child: Text(
                ref.watch(selectedTypeHeightProvider).toString(),
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RotatedBox(
            quarterTurns: 3,
            child: GreenContainerSelector(
              isForWeight: false,
              onIntlPressed: () {
                ref.read(selectedTypeHeightProvider.notifier).state = 'Cm';
              },
              onEngPressed: () {
                ref.read(selectedTypeHeightProvider.notifier).state = 'Ft';
              },
            ),
          ),
          SizedBox(width: 40),
          RotatedBox(
            quarterTurns: 3,
            child: PurpleBar(
              height: MediaQuery.sizeOf(context).height / 7.5,
              width: 350.00,
              child: Stack(children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Stack(
                    children: [
                      ListWheelScrollView(
                        perspective: 0.002,
                        physics: AlwaysScrollableScrollPhysics(),
                        diameterRatio: 3,
                        onSelectedItemChanged: (value) {
                          ref.read(selectedValueProvider.notifier).state =
                              value;
                        },
                        itemExtent: 100,
                        children: List.generate(
                          251,
                          (index) => Text(
                            index.toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 40,
                              color: ref
                                          .watch(selectedValueProvider.notifier)
                                          .state ==
                                      index
                                  ? accentColor
                                  : lightdarkColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: CustomPaint(
                            painter: CustomBoxPainter(),
                            size: Size(150, 150), // Adjust size as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            FontAwesomeIcons.caretLeft,
            color: secondaryColor,
            size: 60,
          ),
        ]),
      ],
    );
  }
}
