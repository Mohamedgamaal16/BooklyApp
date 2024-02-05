import 'package:bookly_gemy/constans.dart';
import 'package:bookly_gemy/core/utils/app_router.dart';
import 'package:bookly_gemy/features/home_page/presention/views/home_view.dart';
import 'package:bookly_gemy/features/splash/presention/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}



class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

