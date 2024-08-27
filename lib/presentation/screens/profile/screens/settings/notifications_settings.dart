import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> notificationsSettings = [
      SelectSettingRow(
        text: 'Notifications',
        onTap: () {},
      ),
      SelectSettingRow(
        text: 'Email Notifications',
        onTap: () {},
      ),
      SelectSettingRow(
        text: 'Push Notifications',
        onTap: () {},
      )
    ];
    return HomeViewTemplate(
      title: 'Settings',
      padding: EdgeInsets.symmetric(horizontal: 12),
      body: Column(
        children: [
          SizedBox(height: 16),
          for (var setting in notificationsSettings) ...[
            setting,
            SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}
