import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/db/app_database.dart';

@module
abstract class RegisterModule {
  @preResolve
  @Singleton()
  Future<AppDatabase> get database async => AppDatabase();

  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.themealdb.com/api/json/v1/1/', // ✅ Указан базовый URL
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      requestHeader: false,
    ));

    return dio;
  }
}
