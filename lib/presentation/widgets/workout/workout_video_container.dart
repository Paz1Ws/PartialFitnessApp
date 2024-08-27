import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';

class WorkoutVideoContainer extends StatelessWidget {
  final String? image;
  final String level;
  final int kcal;
  final int? time;
  const WorkoutVideoContainer(
      {super.key,
      required this.image,
      required this.level,
      required this.kcal,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image ?? 'assets/images/design/exercises/leg_exercise.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: primaryColor,
              child: IconButton(
                padding: EdgeInsets.only(left: 10),
                onPressed: () {
// CHANGE LOGIC TO REPRODUCE VIDEO
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CongratulationsScreen(
                        level: level,
                        time: time!,
                        kcal: kcal,
                      ),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.play,
                  color: accentColor,
                  size: 100,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 5,
            child: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.solidStar),
              color: Colors.yellow,
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
