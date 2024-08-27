import 'package:flutter_fitness_app/presentation/screens/home/screens/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';
import 'package:animate_do/animate_do.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/', builder: (context, state) => JelloIn(child: SplashScreen())),
    GoRoute(
      path: '/login',
      builder: (context, state) => FadeInRight(child: WelcomeLogin()),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => FadeInRight(child: SignUp()),
    ),
    GoRoute(
      path: '/passwordforgotten',
      builder: (context, state) => FadeInRight(child: ForgotPassword()),
    ),
    GoRoute(
      path: '/setpassword',
      builder: (context, state) => FadeInRight(child: SetPassword()),
    ),
    GoRoute(
      path: '/setUp',
      builder: (context, state) => FadeInRight(child: WalkwayController()),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => ElasticIn(child: HomeView()),
    ),
    // GoRoute(
    //   path: '/workout',
    //   builder: (context, state) => ElasticIn(child: WorkoutMainView()),
    // ),
    // GoRoute(
    //   path: '/profile',
    //   builder: (context, state) => FadeInRight(child: ProfileView()),
    // ),
    // GoRoute(
    //   path: '/favorites',
    //   builder: (context, state) => FadeInRight(child: UserFavoritesView()),
    // ),
    // GoRoute(
    //   path: '/notifications',
    //   builder: (context, state) => FadeInRight(child: NotificationsView()),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => FadeInRight(child: SearchView()),
    // ),
    // GoRoute(
    //   path: '/progress',
    //   builder: (context, state) => FadeInRight(child: ProgressTrackingView()),
    // ),
    // GoRoute(
    //   path: '/nutrition',
    //   builder: (context, state) => FadeInRight(child: NutritionMainView()),
    // ),
    // GoRoute(
    //   path: '/mealplans',
    //   builder: (context, state) => FadeInRight(child: MealPlansMainView()),
    // ),
    // GoRoute(
    //   path: '/resources',
    //   builder: (context, state) => FadeInRight(child: ResourcesMainView()),
    // ),
  ],
);
