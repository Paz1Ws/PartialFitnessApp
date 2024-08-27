import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';

import '../../../screens.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> utilities = [
      SelecterUtilityRow(
        icon: Icons.notifications,
        text: 'Notifications Settings',
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotificationsSettings()));
        },
      ),
      SelecterUtilityRow(
        icon: Icons.settings,
        text: 'Password Settings',
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PasswordSettings()));
        },
      ),
      SelecterUtilityRow(
        icon: Icons.delete,
        text: 'Delete Account',
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return DeleteAccount();
            },
          );
        },
      ),
    ];
    return HomeViewTemplate(
      title: 'Settings',
      padding: EdgeInsets.symmetric(horizontal: 16),
      body: Column(
        children: [
          SizedBox(height: 16),
          for (var utility in utilities) ...[
            utility,
            SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}
