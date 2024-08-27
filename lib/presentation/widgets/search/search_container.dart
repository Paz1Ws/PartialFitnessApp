import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class SearchContainer extends StatelessWidget {
  final String search;
  const SearchContainer({
    required this.search,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Row(
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 00, 0),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: secondaryColor,
                ),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: primaryColor,
                  size: 20,
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
                    search,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins12.copyWith(
                        color: darkColor, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
