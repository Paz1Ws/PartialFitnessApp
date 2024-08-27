import 'package:flutter/material.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class ExerciseAndNutritionCard extends StatelessWidget {
  final String title;
  final Widget descriptiveWidget;
  final String image;
  const ExerciseAndNutritionCard({
    required this.title,
    required this.image,
    required this.descriptiveWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.fade,
                      style: MyTextTheme.Poppins16.copyWith(
                          color: darkColor, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                    descriptiveWidget,
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 150,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: secondaryColor,
                    ),
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
