import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets.dart';

class ExerciseOrFoodCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int time;
  final int kcal;
  final String level;
  final void Function()? onTap;
  const ExerciseOrFoodCard(
      {super.key,
      this.onTap,
      required this.image,
      this.title = 'Squat Exercise',
      this.description =
          'Squat is a full body exercise that works on your quads, hamstrings, glutes, and lower back.',
      this.time = 18,
      this.kcal = 200,
      this.level = 'Beginner'});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 150,
        width: 210,
        decoration: BoxDecoration(
            color: lightdarkColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color: accentColor, // Set the border color here
              width: 1,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              transform: Matrix4.translationValues(
                10,
                10,
                0,
              ),
              child: Text(
                title,
                style: MyTextTheme.Poppins14.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.normal,
                  fontSize: title.length > 15 ? 11.5 : 14,
                ),
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  TextButton.icon(
                    label: Text(
                      time.toString() + ' min',
                      style: MyTextTheme.LeagueSpartanLight.copyWith(
                        color: accentColor,
                      ),
                    ),
                    onPressed: null,
                    icon: Icon(
                      FontAwesomeIcons.clock,
                      color: primaryColor,
                      size: 14,
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(-10, 0, 0),
                    child: TextButton.icon(
                      label: Text(
                        kcal.toString() + ' kcal',
                        style: MyTextTheme.LeagueSpartanLight.copyWith(
                          color: accentColor,
                        ),
                      ),
                      onPressed: null,
                      icon: Icon(
                        FontAwesomeIcons.fire,
                        color: primaryColor,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 90,
        ),
      ),
      Positioned(
        top: 0,
        right: 5,
        child: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.solidStar),
          color: Colors.yellow,
          iconSize: 20,
        ),
      ),
      Positioned(
        bottom: 45,
        right: 10,
        child: CircleAvatar(
          radius: 15,
          backgroundColor:
              primaryColor, // Set the desired background color here
          child: Center(
            child: IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap!();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WorkoutDetails(
                      image: image,
                      level: level,
                      title: title,
                      description: description,
                      time: time,
                      kcal: kcal,
                    ),
                  ));
                }
              },
              icon: Icon(
                FontAwesomeIcons.play,
                color: accentColor,
                size: 15,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
