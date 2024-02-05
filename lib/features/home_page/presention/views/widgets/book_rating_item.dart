import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStarHalfStroke,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.9',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2455)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
