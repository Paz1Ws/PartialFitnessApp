import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../screens/setup/providers/select_activity_level_provider.dart';

// ignore: must_be_immutable
class SelectActivityLevelRow extends ConsumerWidget {
  String text = 'Begginer';
  SelectActivityLevelRow({required this.text, super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: () {
          ref.read(selectedActivityLevelProvider.notifier).state = text;
        },
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: ref.watch(selectedActivityLevelProvider).toString() == text
                ? secondaryColor
                : accentColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color:
                    ref.watch(selectedActivityLevelProvider).toString() == text
                        ? lightdarkColor
                        : primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
