import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MealPlansWelcome extends StatefulWidget {
  final void Function() nextPage;
  const MealPlansWelcome({super.key, required this.nextPage});

  @override
  State<MealPlansWelcome> createState() => _MealPlansWelcomeState();
}

class _MealPlansWelcomeState extends State<MealPlansWelcome> {
  @override
  Widget build(BuildContext context) {
    final Image image = Image.asset(
      'assets/images/design/nutrition/meal_plans.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
      precacheImage(image.image, context);
    }

    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: image,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PurpleBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.appleWhole,
                          color: secondaryColor,
                          size: 36,
                        ),
                        SizedBox(width: 10),
                        Text('Meal Plans',
                            style: MyTextTheme.Poppins18.copyWith(
                              color: accentColor,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Welcome to our Meal Plans! We offer a wide variety of nutritious and delicious meal plans designed to help you achieve your fitness goals.',
                      textAlign: TextAlign.center,
                      style: MyTextTheme.Poppins12.copyWith(
                        color: lightdarkColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            NextButton(
                text: 'Know your Plan',
                onPressed: () {
                  widget.nextPage();
                }),
          ],
        ),
      ],
    ));
  }
}
