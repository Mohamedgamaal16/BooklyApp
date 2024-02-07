// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Faliure {
  final String errMsg;
  const Faliure(this.errMsg);
}

class ServerFaliure extends Faliure {
  ServerFaliure(super.errMsg);

  factory ServerFaliure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('connectionTimeout');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('sendTimeout');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('receiveTimeout');
      case DioExceptionType.badCertificate:
        return ServerFaliure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliure('cancel');

      case DioExceptionType.connectionError:
        return ServerFaliure('connectionError');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaliure('no internet connectiion');
        }
        return ServerFaliure('unexpected error , please try again ');
      }
  }

  factory ServerFaliure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 403 || statusCode == 401) {
      return ServerFaliure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure('method not found , please try again later !');
    } else if (statusCode == 500) {
      return ServerFaliure('internal server error ,please try again later');
    } else {
      return ServerFaliure('opps there was an error , please try again');
    }
  }
}
