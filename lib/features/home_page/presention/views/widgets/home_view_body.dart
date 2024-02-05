import 'package:bookly_gemy/features/home_page/presention/views/widgets/best_seller_list_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_custom_list_view.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/customAppBar.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BookCustomListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:20.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    ));
  }
}
