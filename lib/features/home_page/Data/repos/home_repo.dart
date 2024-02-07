 import 'package:bookly_gemy/core/errors/faliure.dart';
import 'package:bookly_gemy/features/home_page/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future <Either<Faliure,BookModel>> fetchBestSellerBooks();
    Future <Either<Faliure,BookModel>> fetchFeaturedBooks();

}