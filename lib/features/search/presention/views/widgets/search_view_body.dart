import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_list_view_item.dart';
import 'package:bookly_gemy/features/search/presention/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          Expanded(child: SearhResultListView())
        ],
      ),
    );
  }
}

class SearhResultListView extends StatelessWidget {
  const SearhResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookListViewItem(),
          );
        }));
  }
}
