import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/routes/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class PlayerWorkoutContainer extends StatelessWidget {
  final String title;
  final int repetition;
  final Duration duration;
  final void Function()? onTap;
  const PlayerWorkoutContainer({
    this.onTap,
    required this.title,
    required this.repetition,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Row(
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 00, 0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    if (onTap != null) {
                      onTap!();
                    }
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      color: primaryColor,
                    ),
                    child: Icon(
                      FontAwesomeIcons.play,
                      color: accentColor,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins12.copyWith(
                        color: darkColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    duration.inMinutes.toString() + ' min',
                    style: MyTextTheme.Poppins14.copyWith(
                        color: const Color.fromARGB(255, 116, 116, 116),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Text(
              'Repetitions x' + repetition.toString(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: MyTextTheme.Poppins12.copyWith(
                  color: primaryColor, fontWeight: FontWeight.normal),
            ),
            SizedBox(width: 30),
          ],
        ));
  }
}
