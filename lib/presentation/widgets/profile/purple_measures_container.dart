import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/theme/app_colors.dart';

class PurpleMeasuresContainer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 135, 106, 250),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MeasuresInformation(
            measure: '85 Kg',
            type: 'Weight',
          ),
          WhiteDivider(),
          MeasuresInformation(
            measure: '25',
            type: 'Years Old',
          ),
          WhiteDivider(),
          MeasuresInformation(
            measure: '1.90 M',
            type: 'Height',
          ),
        ],
      ),
    );
  }
}

class MeasuresInformation extends StatelessWidget {
  final String measure;
  final String type;
  const MeasuresInformation({
    required this.measure,
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          measure,
          style: MyTextTheme.LeagueSpartanLight.copyWith(
            color: accentColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          type,
          style: MyTextTheme.LeagueSpartanLight.copyWith(
            color: accentColor,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class WhiteDivider extends StatelessWidget {
  const WhiteDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
