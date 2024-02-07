import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_Image.dart';
import 'package:flutter/material.dart';

class BooksDetailesListView extends StatelessWidget {
  const BooksDetailesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
