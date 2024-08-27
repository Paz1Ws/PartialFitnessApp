import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../widgets/widgets.dart';

class HelpFaq extends ConsumerWidget {
  const HelpFaq({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SearchBar(),
            SizedBox(height: 20),
            HelpExpansionTile(
              title: 'How do I cancel my subscription?',
              icon: FontAwesomeIcons.xmark,
              content:
                  'You can cancel your subscription by going to the settings page and selecting the cancel subscription option.',
            ),
            HelpExpansionTile(
              title: 'How do I change my password?',
              icon: Icons.help,
              content:
                  'You can change your password by going to the settings page and selecting the change password option.',
            ),
            HelpExpansionTile(
              title: 'How do I update my payment information?',
              icon: FontAwesomeIcons.creditCard,
              content:
                  'You can update your payment information by going to the settings page and selecting the update payment information option.',
            ),
          ],
        ));
  }
}
