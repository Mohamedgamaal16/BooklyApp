import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_rating_item.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/books_action_buttons.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_Image.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: const CustomBookImage(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FImage&psig=AOvVaw084Mw6JYeN9h68qKpKp4ZL&ust=1707696399049000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCJDW3Pv-oYQDFQAAAAAdAAAAABAE',
          ),
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
        ),
        const SizedBox(
          height: 10,
        ),
        const BooksActionsButton(),
      ],
    );
  }
}
