import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MealFeaturesContainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<String> options;
  const MealFeaturesContainer(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.options})
      : super(key: key);

  @override
  State<MealFeaturesContainer> createState() => _MealFeaturesContainerState();
}

class _MealFeaturesContainerState extends State<MealFeaturesContainer> {
  late List<Icon> icons;
  @override
  void initState() {
    super.initState();
    icons = List.generate(widget.options.length, (index) {
      return Icon(
        FontAwesomeIcons.square,
        color: primaryColor,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: MyTextTheme.Poppins18.copyWith(color: secondaryColor),
          ),
          SizedBox(height: 5),
          Text(
            widget.subtitle,
            style: MyTextTheme.Poppins12.copyWith(color: accentColor),
          ),
          Wrap(
            spacing: 10, // Add this line to control the vertical spacing
            direction: Axis.horizontal,
            alignment: WrapAlignment
                .start, // Add this line to align elements to the start
            children: List.generate(widget.options.length, (index) {
              return TextButton.icon(
                onPressed: () {
                  setState(() {
                    if (icons[index].icon == FontAwesomeIcons.square) {
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
                icon: icons[index],
                label: Text(
                  widget.options[index],
                  style: MyTextTheme.Poppins12.copyWith(color: accentColor),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
