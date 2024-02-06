
import 'package:bookly_gemy/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionsButton extends StatelessWidget {
  const BooksActionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(fontSize: 18,
              text: '19.99#',
              textColor: Colors.black,
              backGruondColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(fontSize: 14,
              text: 'free preview',
              textColor: Colors.white,
              backGruondColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12), topRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
