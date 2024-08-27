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
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
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

    final bool allowScroll =
        ref.watch(scrollableControllerProvider.notifier).state;

    return Scaffold(
      body: Stack(
        // Use Stack for positioning
        children: [
          PageView(
            physics: allowScroll ? null : AlwaysScrollableScrollPhysics(),
            controller: pageController,
            children: widgets,
          ),
          Positioned(
            // Position the button at bottom center
            bottom: MediaQuery.of(context).size.height * 0.05,
            left: 0,
            right: 0,
            child: Center(
              child: NextButton(
                text: allowScroll == false
                    ? (pageController.page == widgets.length - 2
                        ? 'Start'
                        : 'Continue')
                    : 'Next',
                onPressed: () {
                  if (pageController.page == widgets.length - 1) {
                    // Navigate to home using GoRouter
                    context.go('/home');
                  } else {
                    nextPage();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
