import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class StepsMeasures extends StatelessWidget {
  final int steps;
  final DateTime date;
  final String duration;

  const StepsMeasures({
    required this.duration,
    required this.steps,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String getWeekDay(int weekDay) {
      switch (weekDay) {
        case 1:
          return 'Mon';
        case 2:
          return 'Tue';
        case 3:
          return 'Wed';
        case 4:
          return 'Thu';
        case 5:
          return 'Fri';
        case 6:
          return 'Sat';
        case 7:
          return 'Sun';
        default:
          return 'Mon';
      }
    }

    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        padding: const EdgeInsets.only(left: 20.0),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: primaryColor),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getWeekDay(date.weekday),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: MyTextTheme.Poppins14.copyWith(
                        color: accentColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    date.day.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: MyTextTheme.Poppins24.copyWith(
                        color: accentColor, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(-40.0, 0.0, 0.0),
              child: Container(
                height: 50,
                width: 1,
                color: accentColor,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Steps',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins14.copyWith(
                      color: accentColor,
                    ),
                  ),
                  Text(
                    steps.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins24.copyWith(
                      color: accentColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Duration',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: MyTextTheme.Poppins14.copyWith(
                          color: accentColor, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidClock,
                          color: accentColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          duration + "m",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyTextTheme.Poppins24.copyWith(
                              color: accentColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ));
  }
}
