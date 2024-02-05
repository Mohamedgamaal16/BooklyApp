import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_Image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0),
      child: Column(
        children: [const CustomBookDetailesAppBar(),Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(),
        )],
      ),
    );
  }
}

class CustomBookDetailesAppBar extends StatelessWidget {
  const CustomBookDetailesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: ( ) {GoRouter.of(context).pop(); }, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
