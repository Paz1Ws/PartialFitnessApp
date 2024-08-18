import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';
import 'providers/scrollable_controller_provider.dart';

class WalkwayController extends ConsumerStatefulWidget {
  const WalkwayController({super.key});

  @override
  WalkwayControllerState createState() => WalkwayControllerState();
}

class WalkwayControllerState extends ConsumerState<WalkwayController> {
  final PageController pageController = PageController();
  bool isInitialPage = true;
  final List<Widget> widgets = [
    WelcomeSetupScreen(),
    SelectGender(),
    SelectAge(),
    SelectWeight(),
    SelectHeight(),
    SelectGoal(),
    SelectActivityLevel(),
    FillProfile(),
  ];

  void nextPage() {
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    setState(() {
      isInitialPage = false;
      // Here we are setting the scrollableControllerProvider to false
      // until the user fill information in the last page.
      // Remember control the value of the scrollableControllerProvider
      // in the another pages.
      ref.read(scrollableControllerProvider.notifier).state = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool allowScroll =
        ref.watch(scrollableControllerProvider.notifier).state;
    return Scaffold(
        body: PageView(
          // Here we are setting the physics to null if the user has not filled the information.
          physics: allowScroll ? null : AlwaysScrollableScrollPhysics(),
          controller: pageController,
          children: widgets,
        ),
        floatingActionButton: Transform(
          transform: Matrix4.translationValues(-70, -30, 0),
          child: NextButton(
              text: allowScroll == false
                  ? pageController.page == 6
                      ? 'Start'
                      : 'Continue'
                  : 'Next',
              // Add logic for control the change of pages
              onPressed: () {
                pageController.page == 7 ? context.go('/home') : nextPage();
              }),
        ));
  }
}
