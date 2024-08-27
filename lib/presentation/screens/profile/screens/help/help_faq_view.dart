import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../config/theme/app_colors.dart';
import '../../../../../config/theme/app_fonts.dart';
import '../../../../widgets/widgets.dart';
import '../../providers/help_faq_provider.dart';

class HelpFaqView extends ConsumerWidget {
  const HelpFaqView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isSelected = ref.watch(helpFaqProvider);
    final isSelected2 = ref.watch(helpFaqProvider2);
    List<String> text = ['FAQ', 'Contact Us'];
    List<String> text2 = ['General', 'Account', 'Services'];

    return HomeViewTemplate(
      title: 'Help & FAQs',
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              '¿How Can We Help You?',
              style:
                  MyTextTheme.LeagueSpartanMedium.copyWith(color: accentColor),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: SelectorButtonsGenerator(
                      text: text,
                      size: 160,
                      itemCount: 2,
                      isSelected: isSelected,
                      provider: helpFaqProvider),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: SelectorButtonsGenerator(
                      itemCount: 3,
                      text: text2,
                      size: 100,
                      isSelected: isSelected2,
                      provider: helpFaqProvider2),
                ),
              ],
            ),
            ref.watch(helpFaqProvider.notifier).state == 'Contact Us'
                ? ContactUs()
                : HelpFaq(),
          ],
        ),
      ),
    );
  }
}
