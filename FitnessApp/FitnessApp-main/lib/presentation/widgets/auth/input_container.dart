import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/app_colors.dart';

class InputContainer extends StatelessWidget {
  final List<String> textFormFields;
  final int formFields;
  final bool islogin;
  final bool isFillProfile;
  InputContainer({
    super.key,
    required this.textFormFields,
    required this.formFields,
    required this.islogin,
    this.isFillProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          color: isFillProfile ? Colors.transparent : primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                textFormFields.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" ${textFormFields[index]}",
                          style: GoogleFonts.leagueSpartan(
                            color:
                                isFillProfile ? primaryColor : lightdarkColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        islogin
            ? Transform(
                transform: Matrix4.translationValues(-10, -40, 0),
                child: TextButton(
                    onPressed: () {
                      context.go('/passwordforgotten');
                    },
                    child: Text('Forgot Password?',
                        style: GoogleFonts.poppins(
                          color: lightdarkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
              )
            : SizedBox(),
      ],
    );
  }
}
