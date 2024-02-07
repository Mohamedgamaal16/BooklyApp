import 'package:bookly_gemy/features/home_page/presention/views/book_detailes_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/home_view.dart';
import 'package:bookly_gemy/features/search/presention/views/search_view.dart';
import 'package:bookly_gemy/features/splash/presention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailesView,
      builder: (context, state) => const BookDetailesView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
