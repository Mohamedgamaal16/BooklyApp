import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({super.key,  this.mainAxisAlignment =  MainAxisAlignment.start});
final MainAxisAlignment mainAxisAlignment  ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.9',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          width: 5,
        ),
        const Opacity(opacity: .5,
          child: Text(
            '(2455)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
