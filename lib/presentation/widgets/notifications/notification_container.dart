import 'package:flutter/material.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_fonts.dart';

class NotificationContainer extends StatelessWidget {
  final String? notification;
  final String date;
  final IconData? icon;
  const NotificationContainer({
    required this.notification,
    required this.date,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Row(
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 00, 0),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: primaryColor,
                      ),
                      child: Icon(
                        icon ?? Icons.notifications_active,
                        color: secondaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: -5,
                    child: Icon(
                      Icons.circle,
                      size: 16,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notification ?? 'You have a new Notification',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MyTextTheme.Poppins12.copyWith(
                        color: darkColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    date,
                    style: MyTextTheme.Poppins14.copyWith(
                        color: const Color.fromARGB(255, 116, 116, 116),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
