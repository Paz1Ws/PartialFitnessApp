import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/theme/app_colors.dart';
import '../../screens/setup/providers/select_height_provider.dart';
import '../../screens/setup/providers/select_weight_provider.dart';

class GreenContainerSelector extends ConsumerWidget {
  const GreenContainerSelector({
    super.key,
    required this.isForWeight,
    required this.onIntlPressed,
    required this.onEngPressed,
  });
  final bool isForWeight;
  final VoidCallback onIntlPressed;
  final VoidCallback onEngPressed;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 60,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: onIntlPressed,
            child: Text(
              isForWeight ? 'Kg' : 'Cm',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: isForWeight
                    ? ref.watch(selectedTypeWeightProvider).toString() == 'Kg'
                        ? lightdarkColor
                        : lightdarkColor.withOpacity(0.4)
                    : ref.watch(selectedTypeHeightProvider).toString() == 'Cm'
                        ? lightdarkColor
                        : lightdarkColor.withOpacity(0.4),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 5,
            decoration: BoxDecoration(
              color: darkColor,
              border: Border.all(color: darkColor),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          TextButton(
            onPressed: onEngPressed,
            child: Text(
              isForWeight ? 'Lb' : 'Ft',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: isForWeight
                    ? ref.watch(selectedTypeWeightProvider).toString() == 'Lb'
                        ? lightdarkColor
                        : lightdarkColor.withOpacity(0.4)
                    : ref.watch(selectedTypeHeightProvider).toString() == 'Ft'
                        ? lightdarkColor
                        : lightdarkColor.withOpacity(0.4),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
