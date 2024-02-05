import 'package:bookly_gemy/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.amberAccent,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.logo,
                ))),
      ),
    );
  }
}
