import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlatformLoginButtons extends StatelessWidget {
  final String image;
  const PlatformLoginButtons({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 35,
        height: 35,
        child: SvgPicture.asset(image, fit: BoxFit.contain),
      ),
    );
  }
}
