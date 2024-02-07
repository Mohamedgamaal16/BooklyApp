import 'package:bookly_gemy/core/errors/faliure.dart';
import 'package:bookly_gemy/core/utils/api_service.dart';
import 'package:bookly_gemy/features/home_page/Data/models/book_model/book_model.dart';
import 'package:bookly_gemy/features/home_page/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoimplemntion implements HomeRepo {
  final ApiService apiService;

  HomeRepoimplemntion(this.apiService);
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint: '/volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString())) ;
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() async{
 try {
      var data = await apiService.get(
          endPoint: '/volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString())) ;
    }  }
}
