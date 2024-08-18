import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_fonts.dart';

class ArticleCard extends StatelessWidget {
  final String image;
  final String description;
  const ArticleCard({
    this.description = "Default description",
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: Image.asset(image),
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
          ],
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(description,
                overflow: TextOverflow.ellipsis,
                style: MyTextTheme.Poppins12.copyWith(color: accentColor)),
          ),
        ),
      ],
    );
  }
}
