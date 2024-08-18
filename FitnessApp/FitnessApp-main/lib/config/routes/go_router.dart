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
  ],
);
