import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../widgets/widgets.dart';

class ContactUs extends ConsumerWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HelpExpansionTile(
              title: 'Customer Support',
              icon: FontAwesomeIcons.headset,
              content:
                  'If you have any questions or need help, please contact our customer support team at customersupport@gmail.com',
            ),
            HelpExpansionTile(
                title: 'Website', icon: Icons.web, content: 'www.fitbody.com '),
            HelpExpansionTile(
              title: 'WhatsApp',
              icon: Icons.email,
              content: (' +1 234 567 890 or +1 234 567 899'),
            ),
            HelpExpansionTile(
                title: 'Facebook',
                icon: FontAwesomeIcons.facebook,
                content: 'FitBody'),
            HelpExpansionTile(
                title: 'Instagram',
                icon: FontAwesomeIcons.instagram,
                content: '@fitbody'),
          ],
        ));
  }
}
