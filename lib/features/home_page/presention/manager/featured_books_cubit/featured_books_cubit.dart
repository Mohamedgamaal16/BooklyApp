import 'package:bloc/bloc.dart';
import 'package:bookly_gemy/features/home_page/Data/models/book_model/book_model.dart';
import 'package:bookly_gemy/features/home_page/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
final HomeRepo homeRepo ;
Future<void> fetchFeaturedBooks()async{
  emit(FeaturedBooksLoading());
  var result = await homeRepo.fetchFeaturedBooks() ;
  result.fold((failure) {
    emit(FeaturedBooksFailure(failure.errMsg));
  }, (books) {
    emit(FeaturedBooksSucces(books));
  });
}
}

