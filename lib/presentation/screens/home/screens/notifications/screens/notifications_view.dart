import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../config/theme/app_colors.dart';
import '../../../../../../../config/theme/app_fonts.dart';
import '../../../../../widgets/widgets.dart';
import '../providers/notifications_type_provider.dart';

class NotificationsView extends ConsumerWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    List<String> notificationsTypes = ['Reminders', 'System'];

    return HomeViewTemplate(
      padding: const EdgeInsets.all(0),
      title: 'Notifications',
      actions: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: SelectorButtonsGenerator(
                  text: notificationsTypes,
                  size: 160,
                  itemCount: 2,
                  isSelected: ref.watch(notificationsTypeProvider),
                  provider: notificationsTypeProvider,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Today',
                style: MyTextTheme.Poppins14.copyWith(color: secondaryColor),
              ),
              TodayNotifications(),
              Text(
                'Yesterday',
                style: MyTextTheme.Poppins14.copyWith(color: secondaryColor),
              ),
              YesterdayNotifications(),
              Text(
                'Last Week',
                style: MyTextTheme.Poppins14.copyWith(color: secondaryColor),
              ),
              LastWeekNotifications(),
            ],
          ),
        ),
      ),
    );
  }
}

class TodayNotifications extends StatelessWidget {
  const TodayNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NotificationContainer(
            notification: 'You have a workout at 5:00 PM',
            date: '5:00 PM',
            icon: FontAwesomeIcons.dumbbell,
          ),
          NotificationContainer(
            notification: 'Eat your meal, don\'t forget proteins!',
            date: '2:00 PM',
            icon: FontAwesomeIcons.utensils,
          ),
          NotificationContainer(
            notification: 'Sleep well, you have a workout tomorrow',
            date: '10:00 PM',
            icon: FontAwesomeIcons.bed,
          ),
        ],
      ),
    );
  }
}

class YesterdayNotifications extends StatelessWidget {
  const YesterdayNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NotificationContainer(
            notification: 'You have a workout at 5:00 PM',
            date: '5:00 PM',
            icon: FontAwesomeIcons.dumbbell,
          ),
          NotificationContainer(
            notification: 'Eat your meal, don\'t forget proteins!',
            date: '2:00 PM',
            icon: FontAwesomeIcons.utensils,
          ),
          NotificationContainer(
            notification: 'Sleep well, you have a workout tomorrow',
            date: '10:00 PM',
            icon: FontAwesomeIcons.bed,
          ),
        ],
      ),
    );
  }
}

class LastWeekNotifications extends StatelessWidget {
  const LastWeekNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NotificationContainer(
            notification: 'Welcome to the FitBody!',
            date: '2:00 PM',
            icon: FontAwesomeIcons.dumpsterFire,
          ),
        ],
      ),
    );
  }
}
