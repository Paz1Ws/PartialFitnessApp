import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../widgets/widgets.dart';
import '../../providers/select_goal_provider.dart';

class SelectGoal extends StatelessWidget {
  const SelectGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'What Is Your Goal?',
      widget: SelectGoalView(),
    );
  }
}

class SelectGoalView extends ConsumerWidget {
  const SelectGoalView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        SizedBox(height: 10),
        Center(
          child: Text(
            'Have a good goal is the first step to achieve it.',
            textAlign: TextAlign.center,
            style: GoogleFonts.leagueSpartan(
              fontSize: 14,
              color: accentColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 50),
        PurpleBar(
            height: MediaQuery.sizeOf(context).height / 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SelectGoalRow(text: '   Muscle Mass Gain '),
                  SizedBox(height: 20),
                  SelectGoalRow(text: '   Lose Weight'),
                  SizedBox(height: 20),
                  SelectGoalRow(text: '   Maintain Weight'),
                  SizedBox(height: 20),
                  SelectGoalRow(text: '   Energy Boost'),
                  SizedBox(height: 20),
                  SelectGoalRow(text: '   Others'),
                  SizedBox(height: 20),
                ],
              ),
            )),
      ],
    );
  }
}

class SelectGoalRow extends ConsumerWidget {
  final String text;
  const SelectGoalRow({required this.text, super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      height: 55,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.leagueSpartan(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              ref.watch(selectedGoalProvider).toString() == text
                  ? FontAwesomeIcons.solidCircleDot
                  : FontAwesomeIcons.circle,
            ),
            onPressed: () {
              ref.read(selectedGoalProvider.notifier).state = text;
            },
          ),
        ],
      ),
    );
  }
}
