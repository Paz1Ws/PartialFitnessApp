import 'package:flutter/material.dart';
import '../../../../config/theme/app_fonts.dart';
import '../../../../config/theme/app_colors.dart';

class SelectSettingRow extends StatefulWidget {
  final String text;
  final void Function() onTap;
  const SelectSettingRow({super.key, required this.text, required this.onTap});

  @override
  State<SelectSettingRow> createState() => _SelectSettingRowState();
}

class _SelectSettingRowState extends State<SelectSettingRow> {
  @override
  Widget build(BuildContext context) {
    bool enabler = true;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              widget.text,
              style: MyTextTheme.LeagueSpartanMedium.copyWith(
                  color: accentColor, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(width: 10),
        Switch(
          onChanged: (value) {
            setState(() {
              enabler = value;
            });
            // print('Switched to $enabler');
          },
          value: enabler,
          activeColor: secondaryColor,
          inactiveTrackColor: primaryColor,
        ),
      ],
    );
  }
}
