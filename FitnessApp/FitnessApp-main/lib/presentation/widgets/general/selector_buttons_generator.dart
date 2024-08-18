import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class SelectorButtonsGenerator extends ConsumerWidget {
  const SelectorButtonsGenerator({
    super.key,
    required this.text,
    required this.provider,
    required this.isSelected,
    required this.itemCount,
    this.size,
  });

  final List<String> text;
  final String isSelected;
  final int itemCount;
  final double? size;
  final provider;

  @override
  Widget build(BuildContext context, ref) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                ref.read(provider.notifier).state = text[index];
              },
              child: Container(
                height: 30,
                width: size ?? 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  color:
                      isSelected == text[index] ? secondaryColor : accentColor,
                ),
                child: Center(
                  child: Text(
                    text[index],
                    style: MyTextTheme.LeagueSpartanMedium.copyWith(
                        color: isSelected == text[index]
                            ? lightdarkColor
                            : primaryColor,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        );
      },
    );
  }
}
