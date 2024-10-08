import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/home/providers/page_name_provider.dart';
import 'package:flutter_fitness_app/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_fitness_app/config/theme/app_colors.dart';

import '../../../config/theme/app_fonts.dart';

class HomeViewTemplate extends ConsumerWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final String? title;
  final bool? actions;
  final bool? leading;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  const HomeViewTemplate(
      {super.key,
      this.padding,
      this.leading,
      this.title,
      required this.body,
      this.bottomNavigationBar,
      this.actions,
      this.onTap});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: lightdarkColor,
      bottomNavigationBar: bottomNavigationBar ?? MyBottomBarNavigator(),
      appBar: AppBar(
          backgroundColor: lightdarkColor,
          actions: actions == false
              ? []
              : [
                  AppBarIcons(
                    onTap: [
                      // Search
                      () {
                        context.push('/search');
                      },
                      // Notification
                      () {
                        context.push('/notifications');
                      },
                      // Profile
                      () {
                        context.push('/profile');
                      },
                    ],
                  ),
                ],
          leading: leading == false
              ? null
              : title != null
                  ? PushbackButton(
                      onTap: onTap,
                    )
                  : null,
          title: title == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ref.watch(userNameProvider),
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          )),
                      Text('It\'s time to challenge your limits.',
                          style: GoogleFonts.leagueSpartan(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: accentColor,
                          )),
                    ],
                  ),
                )
              : Text(
                  title!,
                  overflow: TextOverflow.visible,
                  style: MyTextTheme.Poppins20.copyWith(
                    color: primaryColor,
                  ),
                )),
      body: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 32.0),
        child: body,
      ),
    );
  }
}
