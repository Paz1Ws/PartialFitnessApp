import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';
import '../general/purple_bar.dart';

class TrainingOrMealOfTheDay extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final String? label;
  final int duration;
  final int calories;
  final int? exercises;
  final String? image;
  const TrainingOrMealOfTheDay(
      {super.key,
      required this.onTap,
      required this.title,
      this.label,
      this.image,
      required this.duration,
      required this.calories,
      this.exercises});

  @override
  Widget build(BuildContext context) {
    return PurpleBar(
      height: MediaQuery.of(context).size.height * 0.3,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Stack(alignment: Alignment.center, children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  image ??
                      'assets/images/design/exercises/training_of_the_day.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.cover,
                )),
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(10)),
                  child: Container(
                    color: secondaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(label ?? 'Training of the day',
                          style: MyTextTheme.Poppins12.copyWith(
                            color: darkColor,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: lightdarkColor.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              style: MyTextTheme.Poppins14.copyWith(
                                color: secondaryColor,
                                fontWeight: FontWeight.bold,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.access_time,
                                  color: accentColor, size: 16),
                              Text(' $duration min',
                                  style: MyTextTheme.Poppins12.copyWith(
                                    color: accentColor,
                                  )),
                              SizedBox(width: 10),
                              Icon(FontAwesomeIcons.fire,
                                  color: accentColor, size: 16),
                              Text('  $calories Kcal',
                                  style: MyTextTheme.Poppins12.copyWith(
                                    color: accentColor,
                                  )),
                              SizedBox(width: 10),
                              if (exercises != null)
                                Icon(
                                  Icons.fitness_center,
                                  color: accentColor,
                                ),
                              if (exercises != null)
                                Text(
                                  '  $exercises Exercises',
                                  style:
                                      MyTextTheme.LeagueSpartanLight.copyWith(
                                          color: accentColor,
                                          fontWeight: FontWeight.normal),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: secondaryColor,
                  size: 24,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
