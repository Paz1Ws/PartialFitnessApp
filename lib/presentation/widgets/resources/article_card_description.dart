import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class ArticleCardDescription extends StatelessWidget {
  final String image;
  final String descriptionTitle;
  final String description;
  final double rating;
  const ArticleCardDescription({
    this.description = "Default description",
    required this.image,
    required this.descriptionTitle,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return FoodOrArticleDetails(
                title: 'Strength Training Tips',
                dateOfPublication: DateTime.utc(2021, 10, 10),
                description: 'Maximize your strength training with these tips',
                image: 'assets/images/design/exercises/strenght_tips.png',
                titleOfSection: 'Resources',
                steps: 'Follow these steps to maximize your strength training',
                warmUp: 'Warm up for 5 minutes',
              );
            }));
          },
          child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: accentColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            descriptionTitle,
                            style: MyTextTheme.Poppins16.copyWith(
                                color: lightdarkColor),
                          ),
                          Text(
                            description,
                            style: MyTextTheme.Poppins12.copyWith(
                                color: lightdarkColor),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                rating.toString(),
                                style: MyTextTheme.Poppins12.copyWith(
                                    color: darkColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          top: 0,
          right: 5,
          child: IconButton(
            icon: Icon(
              size: 20,
              FontAwesomeIcons.star,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
