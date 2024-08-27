import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class SelectorButtonsGenerator extends ConsumerWidget {
  const SelectorButtonsGenerator({
    Key? key,
    required this.text,
    required this.provider,
    required this.isSelected,
    required this.itemCount,
    this.size,
    this.fontSize,
    this.extraFunction,
  }) : super(key: key);

  final List<String> text;
  final String isSelected;
  final int itemCount;
  final double? size;
  final double? fontSize;
  final extraFunction;
  final provider;

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(itemCount, (index) {
        return GestureDetector(
          onTap: () {
            ref.read(provider.notifier).state = text[index];
            if (extraFunction != null) {
              extraFunction();
            }
          },
          child: Container(
            height: 30,
            width: size ?? 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: isSelected == text[index] ? secondaryColor : accentColor,
            ),
            child: Center(
              child: Text(
                text[index],
                style: MyTextTheme.LeagueSpartanMedium.copyWith(
                  color:
                      isSelected == text[index] ? lightdarkColor : primaryColor,
                  fontWeight: FontWeight.normal,
                  fontSize: fontSize ?? 18,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
