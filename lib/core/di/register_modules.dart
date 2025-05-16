import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/db/app_database.dart';

@module
abstract class RegisterModule {
  @preResolve
  @Singleton()
  Future<AppDatabase> get database async => AppDatabase();

  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          contentType: 'application/json',
        ),
      );
}
