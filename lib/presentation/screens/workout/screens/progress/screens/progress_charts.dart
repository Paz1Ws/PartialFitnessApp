import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../providers/register_types_prov.dart';

class Charts extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    List<String> registersTypes = ['Workout Logs', 'Charts'];
    List<Widget> stepMeasures = [
      StepsMeasures(
        date: DateTime.parse('2022-01-12 00:00:00.000'),
        duration: '45',
        steps: 2000,
      ),
      StepsMeasures(
        date: DateTime.now(),
        duration: '75',
        steps: 4000,
      ),
      StepsMeasures(
        date: DateTime.parse('2022-01-12 00:00:00.000'),
        duration: '60',
        steps: 3000,
      ),
      StepsMeasures(
        date: DateTime.now(),
        duration: '90',
        steps: 5000,
      ),
      StepsMeasures(
        date: DateTime.now(),
        duration: '105',
        steps: 6000,
      ),
    ];
    final registersTypesProv = ref.watch(registersTypesProvider);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: SelectorButtonsGenerator(
              text: registersTypes,
              size: 150,
              itemCount: 2,
              isSelected: registersTypesProv,
              provider: registersTypesProvider,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'My Progress',
            style: MyTextTheme.Poppins20.copyWith(
              color: secondaryColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'January 12Th',
            style: MyTextTheme.Poppins30.copyWith(
              color: secondaryColor,
            ),
          ),
          SvgPicture.asset(
            'assets/images/design/workout/charts.svg',
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: stepMeasures.length,
            itemBuilder: (context, index) {
              return stepMeasures[index];
            },
          ),
        ],
      ),
    );
  }
}
