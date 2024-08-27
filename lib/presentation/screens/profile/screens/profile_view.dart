import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/widgets.dart';
import '../providers/is_edit_profile.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isEditProfile = ref.watch(isEditProfileProvider);
    List<Widget> utilities = [
      SelecterUtilityRow(
        icon: Icons.person,
        text: 'Profile',
        onTap: () {
          ref.read(isEditProfileProvider.notifier).state =
              ref.read(isEditProfileProvider.notifier).state ? false : true;
        },
      ),
      SelecterUtilityRow(
        icon: Icons.favorite,
        text: 'Favorites',
        onTap: () {
          context.go('/favorites');
        },
      ),
      SelecterUtilityRow(
        icon: Icons.privacy_tip,
        text: 'Privacy',
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return UserPrivacy();
            },
          );
        },
      ),
      SelecterUtilityRow(
        icon: Icons.settings,
        text: 'Settings',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SettingsView()));
        },
      ),
      SelecterUtilityRow(
        icon: Icons.help,
        text: 'Help & FAQs',
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HelpFaqView()));
        },
      ),
      SelecterUtilityRow(
        icon: Icons.logout,
        text: 'Logout',
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return LogOut();
            },
          );
        },
      )
    ];
    return HomeViewTemplate(
      title: 'My Profile',
      padding: EdgeInsets.all(0),
      body: Stack(children: [
        Column(children: [
          PurpleBar(
            height: MediaQuery.sizeOf(context).height / 3,
            child: HeaderInformationContainer(),
          ),
          Expanded(
              child: Padding(
            padding: isEditProfile == false
                ? const EdgeInsets.only(top: 50)
                : const EdgeInsets.only(top: 30),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 18),
              itemCount: isEditProfile == false ? utilities.length : 1,
              itemBuilder: (context, index) {
                return isEditProfile == false
                    ? Column(
                        children: [
                          utilities[index],
                          SizedBox(height: 10),
                        ],
                      )
                    : EditProfileWidget();
              },
            ),
          ))
        ]),
        Positioned(
          top: 250,
          left: 30,
          child: PurpleMeasuresContainer(),
        ),
      ]),
    );
  }
}
