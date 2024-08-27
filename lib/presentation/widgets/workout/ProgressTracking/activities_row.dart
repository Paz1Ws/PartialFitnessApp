import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class ActivitiesRow extends StatelessWidget {
  final String kcal;
  final String exercise;
  final String date;
  final String duration;
  final String typeDuration;

  const ActivitiesRow({
    required this.kcal,
    this.duration = "30",
    this.typeDuration = "min",
    required this.exercise,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                  "assets/images/design/workout/runner_circle.png",
                  height: 50,
                  width: 50),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.fire,
                        color: primaryColor,
                        size: 16,
                      ),
                      Text(
                        kcal + " kcal",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: MyTextTheme.Poppins12.copyWith(
                            color: primaryColor, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Text(
                    exercise,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins12.copyWith(
                        color: darkColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    date,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins12.copyWith(
                        color: primaryColor, fontWeight: FontWeight.normal),
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
                      style: MyTextTheme.Poppins16.copyWith(
                          color: primaryColor, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.clock,
                          color: primaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          duration,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyTextTheme.Poppins12.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          " " + typeDuration,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyTextTheme.Poppins12.copyWith(
                              color: primaryColor,
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
