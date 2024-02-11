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
              child: CustomBookImage(
                imageUrl:
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FImage&psig=AOvVaw084Mw6JYeN9h68qKpKp4ZL&ust=1707696399049000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCJDW3Pv-oYQDFQAAAAAdAAAAABAE',
              ),
            );
          }),
    );
  }
}
