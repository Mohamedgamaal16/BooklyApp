import 'package:bookly_gemy/core/widgets/custom_button.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_rating_item.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/books_action_buttons.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_Image.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_detailes_app_bar.dart.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailesAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .25),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
              opacity: .7,
              child: Text(
                'Rubyard kipling',
                style: Styles.textStyle20.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              )),
          const SizedBox(
            height: 14,
          ),
          const BookRatingItem(
            mainAxisAlignment: MainAxisAlignment.center,
          ),const SizedBox(
            height: 10,
          ),
          const BooksActionsButton(),
        ],
      ),
    );
  }
}
