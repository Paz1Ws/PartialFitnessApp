import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CongratulationsScreen extends StatelessWidget {
  final int time;
  final int kcal;
  final String level;
  const CongratulationsScreen(
      {super.key, required this.time, required this.kcal, required this.level});

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      actions: false,
      title: '',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/images/design/workout/congratulations_trophium.svg',
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  'Congratulations! ',
                  style: MyTextTheme.Poppins24.copyWith(
                    color: lightdarkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ExerciseDetailsRow(time: time, kcal: kcal, level: level)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width / 1.5, 50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go to the next workout',
                    style: MyTextTheme.Poppins16.copyWith(color: accentColor)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: primaryColor),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width / 1.5, 50),
                ),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text('Home',
                    style: MyTextTheme.Poppins16.copyWith(color: primaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
