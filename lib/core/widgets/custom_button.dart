import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textColor,
      required this.backGruondColor,
      this.borderRadius,
      required this.text,
      this.fontSize});
  final Color textColor;
  final Color backGruondColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backGruondColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                color: textColor,
                fontSize: fontSize),
          )),
    );
  }
}
