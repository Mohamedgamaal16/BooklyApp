import 'package:bookly_gemy/core/widgets/err_text.dart';
import 'package:bookly_gemy/core/widgets/loading_indicator.dart';
import 'package:bookly_gemy/features/home_page/presention/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/custom_book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCustomListView extends StatelessWidget {
  const BookCustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
         if (state is FeaturedBooksSucces) {
         return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                );
              }),
        );
          
        } else if ( state is FeaturedBooksLoading){
          return const Center(child: LoadingIndicator());
        } else if (state is FeaturedBooksFailure){
          return ErrMsg(errMsg: state.errMsg);
        }else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
