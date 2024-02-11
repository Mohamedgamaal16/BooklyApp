import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class ErrMsg extends StatelessWidget {
  const ErrMsg({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMsg,
      style: Styles.textStyle18,
    );
  }
}
