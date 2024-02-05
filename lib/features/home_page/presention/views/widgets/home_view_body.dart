import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_custom_list_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(),
        BookCustomListView(),
      ],
    ));
  }
}
