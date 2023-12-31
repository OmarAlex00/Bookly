import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/screens/books_details_screen.dart';
import 'package:bookly/features/home/presentation/views/screens/home_screen.dart';
import 'package:bookly/features/search/presentation/views/screens/search_view.dart';
import 'package:bookly/features/splash/presentation/views/screens/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/data/repos/search_repo_imp.dart';
import '../../features/search/presentation/view_model/cubit/search_cubit_cubit.dart';

abstract class AppRouter {
  static const String kHomeScreenRouter = '/homeScreenRoute';
  static const String kBooksDetailsScreenRouter = '/bookDetailsScreenRoute';
  static const String kSearchScreenRouter = '/SearchScreenRoute';

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
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BooksDetailsScreen(
          book: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchScreenRouter,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchCubitCubit(getIt.get<SearchRepoImp>()),
        child: const SearchView(),
      ),
    ),
  ]);
}
