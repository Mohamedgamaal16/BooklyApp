import 'package:bookly_gemy/features/home_page/presention/views/widgets/books_detailes_list_view.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class BookDetailesListviewSection extends StatelessWidget {
  const BookDetailesListviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you may also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 8,
        ),
        const BooksDetailesListView(),
      ],
    );
  }
}
