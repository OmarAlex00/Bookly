import 'package:bookly/features/home/presentation/views/screens/books_details_screen.dart';
import 'package:bookly/features/home/presentation/views/screens/home_screen.dart';
import 'package:bookly/features/splash/presentation/views/screens/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeScreenRouter = '/homeScreenRoute';
  static const String kBooksDetailsScreenRouter = '/bookDetailsScreenRoute';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeScreenRouter,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kBooksDetailsScreenRouter,
      builder: (context, state) => const BooksDetailsScreen(),
    ),
  ]);
}
