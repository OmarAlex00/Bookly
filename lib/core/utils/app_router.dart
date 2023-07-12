import 'package:bookly/features/home/presentation/views/screen/home_screen.dart';
import 'package:bookly/features/splash/presentation/views/screens/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeScreenRouter = '/homeScreenRoute';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeScreenRouter,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
