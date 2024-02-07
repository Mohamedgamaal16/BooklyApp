part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

 class FeaturedBooksInitial extends FeaturedBooksState {}
 class FeaturedBooksSucces extends FeaturedBooksState {
final List<BookModel> books ;

 const FeaturedBooksSucces(this.books);

 }
 class FeaturedBooksLoading extends FeaturedBooksState {}
 class FeaturedBooksFailure extends FeaturedBooksState {

  final String errMsg ;

 const FeaturedBooksFailure(this.errMsg); 
 }
 