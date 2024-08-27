import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';

class FitBodyCalendar extends StatelessWidget {
  const FitBodyCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<DateTime?>? dates = [
      DateTime.now(),
    ];
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2.5,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.single,
          selectedDayHighlightColor: primaryColor,
          weekdayLabels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
          dayTextStyle: TextStyle(
            color: primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          yearTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          monthTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          selectedDayTextStyle: MyTextTheme.Poppins12.copyWith(
            color: lightdarkColor,
          ),
          selectedMonthTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          selectedYearTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          weekdayLabelTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          todayTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
          controlsTextStyle: MyTextTheme.Poppins12.copyWith(
            color: primaryColor,
          ),
        ),
        value: dates,
        onValueChanged: (dates) => dates = dates,
      ),
    );
  }
}
