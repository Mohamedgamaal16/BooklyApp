import 'package:bookly_gemy/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40 ,bottom:20 ,left:16 ,right:10 ),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 18,),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search,size: 24,),
          )
        ],
      ),
    );
  }
}
