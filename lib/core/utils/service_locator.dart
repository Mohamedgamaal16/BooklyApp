import 'package:bookly_gemy/core/utils/api_service.dart';
import 'package:bookly_gemy/features/home_page/Data/repos/home_repo.dart';
import 'package:bookly_gemy/features/home_page/Data/repos/home_repo_implemntion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setup() {
getIt.registerSingleton<ApiService>(ApiService(
        Dio(),
      ),);

  getIt.registerSingleton<HomeRepoimplemntion>(
    HomeRepoimplemntion(
     getIt.get<ApiService>()
    ),
  );
}
