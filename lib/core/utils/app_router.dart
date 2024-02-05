import 'package:bookly_gemy/features/home_page/presention/views/book_detailes_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/home_view.dart';
import 'package:bookly_gemy/features/splash/presention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
    static const kBookDetailesView = '/bookDetailesView';

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
]);
}