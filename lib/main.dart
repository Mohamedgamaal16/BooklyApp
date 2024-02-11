import 'package:bookly_gemy/constans.dart';
import 'package:bookly_gemy/core/utils/api_service.dart';
import 'package:bookly_gemy/core/utils/app_router.dart';
import 'package:bookly_gemy/core/utils/service_locator.dart';
import 'package:bookly_gemy/features/home_page/Data/repos/home_repo_implemntion.dart';
import 'package:bookly_gemy/features/home_page/presention/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_gemy/features/home_page/presention/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(HomeRepoimplemntion(ApiService(Dio())))..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(getIt.get<HomeRepoimplemntion>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
