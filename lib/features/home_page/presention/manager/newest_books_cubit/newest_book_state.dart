part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

 class NewestBookInitial extends NewestBookState {}
 class NewestBookSucces extends NewestBookState {
final List<BookModel> books ;

const  NewestBookSucces(this.books);

 }
 class NewestBookLoading extends NewestBookState {}
 class NewestBookFailure extends NewestBookState {

   final String errMSg ;

 const  NewestBookFailure(this.errMSg);
 }
