import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/register_types_prov.dart';

class WorkoutLog extends ConsumerStatefulWidget {
  const WorkoutLog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return WorkoutLogState();
  }
}

class WorkoutLogState extends ConsumerState<WorkoutLog> {
  String? selectedMonth;
  @override
  Widget build(BuildContext context) {
    List<String> registersTypes = ['Workout Logs', 'Charts'];
    final registersTypesProv = ref.watch(registersTypesProvider);
    final List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    final List<Widget> activities = [
      ActivitiesRow(
        kcal: '200',
        exercise: 'Running',
        date: '12/12/2021',
      ),
      ActivitiesRow(
        kcal: '300',
        exercise: 'Cycling',
        date: '12/12/2021',
      ),
      ActivitiesRow(
        kcal: '400',
        exercise: 'Swimming',
        date: '12/12/2021',
      ),
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PurpleBar(child: ProgressTrakingCard()),
          const SizedBox(
            height: 20,
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Choose Date',
                        style: MyTextTheme.Poppins14.copyWith(
                            color: secondaryColor)),
                    DropdownButton<String>(
                      value: selectedMonth,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedMonth = newValue;
                        });
                      },
                      items:
                          months.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: MyTextTheme.Poppins12.copyWith(
                              color: primaryColor,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                FitBodyCalendar()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Activities',
                  style: MyTextTheme.Poppins20.copyWith(color: secondaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  itemCount: activities.length,
                  shrinkWrap: true,
                  itemExtent: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return activities[index];
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
