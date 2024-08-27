import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';
import 'package:flutter_fitness_app/config/theme/app_fonts.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordSettings extends StatefulWidget {
  const PasswordSettings({Key? key}) : super(key: key);

  @override
  State<PasswordSettings> createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  bool _isHidden = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeViewTemplate(
      title: 'Password Settings',
      body: Column(
        children: [
          SizedBox(height: 16),
          ChangePasswordInput(
              isHidden: _isHidden, onTap: _togglePasswordVisibility),
          SizedBox(height: 32),
          ChangePasswordInput(
              isHidden: _isHidden,
              onTap: _togglePasswordVisibility,
              title: 'New Password',
              forgotPassword: false),
          SizedBox(height: 16),
          ChangePasswordInput(
              isHidden: _isHidden,
              onTap: _togglePasswordVisibility,
              title: 'Confirm Password',
              forgotPassword: false),
          Transform(
            transform: Matrix4.translationValues(0, 240, 0),
            child: NextButton(
                buttonColor: secondaryColor,
                textColor: darkColor,
                text: 'Change Password',
                onPressed: () {
                  // print('Change Password');
                }),
          ),
        ],
      ),
    );
  }
}

class ChangePasswordInput extends StatelessWidget {
  const ChangePasswordInput({
    super.key,
    required bool isHidden,
    required this.onTap,
    this.title = 'Current Password',
    this.forgotPassword = true,
  }) : _isHidden = isHidden;
  final VoidCallback onTap;
  final bool _isHidden;
  final String title;
  final bool forgotPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.leagueSpartan(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: _isHidden,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(
                _isHidden ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        forgotPassword
            ? Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.center,
                    style: MyTextTheme.Poppins12.copyWith(
                      color: accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            : SizedBox(height: 0),
      ],
    );
  }
}
