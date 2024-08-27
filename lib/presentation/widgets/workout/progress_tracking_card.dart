import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/theme/app_colors.dart';

class ProgressTrakingCard extends ConsumerWidget {
  const ProgressTrakingCard({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Adrian',
                  style: MyTextTheme.Poppins24.copyWith(
                    color: accentColor,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.mars,
                  color: secondaryColor,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Age:',
                  style: MyTextTheme.Poppins18.copyWith(
                    color: accentColor,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  ' 25',
                  style: MyTextTheme.Poppins12.copyWith(
                      color: accentColor, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                LittleMeasuresRow(
                  value: '75Kg',
                  type: 'Weight',
                ),
                SizedBox(width: 10),
                LittleMeasuresRow(
                  value: '1.75m',
                  type: 'Height',
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 10),
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(
            'assets/images/design/setup/portrait_fitness_person.png',
          ),
        ),
      ],
    );
  }
}

class LittleMeasuresRow extends StatelessWidget {
  final String type;
  final String value;
  const LittleMeasuresRow({
    required this.type,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 48,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(48),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: MyTextTheme.Poppins18.copyWith(
                color: accentColor,
              ),
            ),
            Text(
              type,
              style: MyTextTheme.Poppins12.copyWith(
                  color: accentColor, fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
