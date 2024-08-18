import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExerciseCard extends StatelessWidget {
  final String? image;
  final String? exercise;
  final String? minutes;
  final String? kcal;
  const ExerciseCard(
      {super.key, this.image, this.exercise, this.minutes, this.kcal});

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
                7,
                5,
                0,
              ),
              child: Text(
                exercise ?? 'Squat Exercise',
                style: MyTextTheme.Poppins14.copyWith(
                  color: secondaryColor,
                  fontWeight: FontWeight.normal,
                  fontSize:
                      exercise != null && exercise!.length > 15 ? 11.5 : 14,
                ),
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  TextButton.icon(
                    label: Text(
                      minutes ?? '18 Minutes',
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
                        kcal ?? '200 Kcal',
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
          image ?? 'assets/images/design/exercises/squat_exercise.png',
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
              onPressed: () {},
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
