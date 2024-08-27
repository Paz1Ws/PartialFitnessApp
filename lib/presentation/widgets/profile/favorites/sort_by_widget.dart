import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';
import '../../../screens/profile/providers/sort_by_provider.dart';
import '../../widgets.dart';

class SortByWidget extends ConsumerWidget {
  final List<String> text;
  const SortByWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final isSelected = ref.watch(sortByProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sort By',
          style: MyTextTheme.Poppins12.copyWith(
              color: secondaryColor, fontWeight: FontWeight.w100),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: SizedBox(
              height: 30,
              child: SelectorButtonsGenerator(
                text: text,
                itemCount: 3,
                isSelected: isSelected,
                provider: sortByProvider,
              )),
        ),
      ],
    );
  }
}
