import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/general/purple_bar.dart';
import 'package:flutter_fitness_app/presentation/widgets/home/home_view_template.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodOrArticleDetails extends StatelessWidget {
  final String? title, preparation, image, titleOfSection;
  final DateTime? dateOfPublication;
  final String? description;
  final String? warmUp;
  final String? steps;
  final int? calories, time;
  final List<String>? ingredients;

  const FoodOrArticleDetails(
      {super.key,
      required this.title,
      this.description,
      this.steps,
      this.warmUp,
      this.dateOfPublication,
      this.titleOfSection,
      this.preparation,
      this.image,
      this.calories,
      this.time,
      this.ingredients});

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      title: titleOfSection,
      padding: EdgeInsets.zero,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title!,
                          overflow: TextOverflow.ellipsis,
                          style: MyTextTheme.Poppins20.copyWith(
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          size: 16,
                        ),
                        color: secondaryColor,
                        iconSize: 36,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  dateOfPublication != null
                      ? Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: primaryColor,
                              size: 16,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Published On ${dateOfPublication!.day}/${dateOfPublication!.month}/${dateOfPublication!.year}',
                              style: MyTextTheme.Poppins12.copyWith(
                                color: accentColor,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: primaryColor,
                              size: 16,
                            ),
                            Text('  $time min',
                                style: MyTextTheme.LeagueSpartanLight.copyWith(
                                    color: accentColor)),
                            SizedBox(width: 20),
                            Icon(
                              FontAwesomeIcons.fire,
                              color: primaryColor,
                              size: 16,
                            ),
                            Text('  $calories kcal',
                                style: MyTextTheme.LeagueSpartanLight.copyWith(
                                    color: accentColor)),
                          ],
                        ),
                ],
              ),
            ),
            SizedBox(height: 20),
            PurpleBar(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  description != null
                      ? Text(description!,
                          style: MyTextTheme.Poppins12.copyWith(
                              color: accentColor))
                      : Text('Ingredients',
                          style: MyTextTheme.Poppins16.copyWith(
                              color: secondaryColor)),
                  SizedBox(height: 10),
                  steps != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Plan Your Routine',
                                style: MyTextTheme.Poppins14.copyWith(
                                    color: secondaryColor)),
                            SizedBox(height: 10),
                            Text(steps!,
                                style: MyTextTheme.Poppins12.copyWith(
                                    color: accentColor)),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(ingredients!.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.circle,
                                    size: 5,
                                    color: accentColor,
                                  ),
                                  SizedBox(width: 10),
                                  Text(ingredients![index],
                                      style: MyTextTheme.Poppins12.copyWith(
                                          color: accentColor)),
                                ],
                              ),
                            );
                          }),
                        ),
                  SizedBox(height: 10),
                  warmUp != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Warm Up',
                                style: MyTextTheme.Poppins16.copyWith(
                                    color: secondaryColor)),
                            SizedBox(height: 10),
                            Text(warmUp!,
                                style: MyTextTheme.Poppins12.copyWith(
                                    color: accentColor)),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Preparation',
                                style: MyTextTheme.Poppins16.copyWith(
                                    color: secondaryColor)),
                            SizedBox(height: 20),
                            Text(preparation!,
                                textAlign: TextAlign.justify,
                                style: MyTextTheme.Poppins12.copyWith(
                                    color: accentColor)),
                            SizedBox(height: 10),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
