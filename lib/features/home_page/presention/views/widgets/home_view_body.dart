import 'package:bookly_gemy/features/home_page/presention/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_custom_list_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/customAppBar.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookCustomListView(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    ));
  }
}

