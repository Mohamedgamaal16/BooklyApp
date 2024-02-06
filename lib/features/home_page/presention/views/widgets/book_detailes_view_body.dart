import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_detailes_list_view_section.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/books_detailes_section.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_detailes_app_bar.dart.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailesAppBar(),
                BookDetailesSection(),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                BookDetailesListviewSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
