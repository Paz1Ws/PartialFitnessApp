import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class MealPlansMainView extends StatefulWidget {
  const MealPlansMainView({super.key});

  @override
  State<MealPlansMainView> createState() => _MealPlansMainViewState();
}

class _MealPlansMainViewState extends State<MealPlansMainView> {
  late List<Icon> icons;
  @override
  void initState() {
    super.initState();
    icons = List.generate(exampleFavoritesCards.length, (index) {
      return Icon(
        FontAwesomeIcons.square,
        color: primaryColor,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      title: 'Meal Plans',
      actions: true,
      onTap: () {
        context.go('/nutrition');
      },
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Breakfast Plans For You',
                    style: MyTextTheme.Poppins24.copyWith(
                      color: secondaryColor,
                    )),
                SizedBox(height: 10),
                Text(
                  'Breakfast is the most important meal of the day. It is important to have a healthy breakfast to start your day. Here are some breakfast plans for you.',
                  style: MyTextTheme.Poppins12.copyWith(
                      color: accentColor, fontSize: 14),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: exampleFavoritesCards.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemExtent: 150,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: icons[index],
                            iconSize: 18,
                            color: secondaryColor,
                            onPressed: () {
                              setState(() {
                                if (icons[index].icon ==
                                    FontAwesomeIcons.square) {
                                  icons[index] = Icon(
                                    FontAwesomeIcons.squareCheck,
                                    color: secondaryColor,
                                  );
                                } else {
                                  icons[index] = Icon(
                                    FontAwesomeIcons.square,
                                    color: primaryColor,
                                  );
                                }
                              });
                            },
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: exampleFavoritesCards[index])
                      ],
                    );
                  },
                ),
              ],
            ),
            NextButton(
              text: 'See Recipe',
              buttonColor: secondaryColor,
              textColor: lightdarkColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FoodOrArticleDetails(
                          title: 'Avocado Toast',
                          titleOfSection: 'Meal Plans',
                          preparation:
                              'Toast the bread. Mash the avocado and spread it on the toast. Sprinkle with salt and pepper. Enjoy!',
                          image:
                              'assets/images/design/nutrition/avocado_toast.png',
                          calories: 200,
                          time: 30,
                          ingredients: const [
                            '1 slice of whole grain bread',
                            '1/2 avocado',
                            'Salt and pepper to taste',
                            'Eggs'
                          ],
                        )));
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
