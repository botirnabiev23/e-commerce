import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/features/home/data/models/response/category_response_model.dart';
import 'package:market_place/features/home/data/models/response/meal_response_model.dart';

import 'meal_remote_data_source.dart';

@LazySingleton(as: MealRemoteDataSource)
class MealRemoteDataSourceImpl implements MealRemoteDataSource {
  final Dio _dio;

  MealRemoteDataSourceImpl(this._dio);

  @override
  Future<CategoriesResponseModel> getMealCategories() async {
    final response = await _dio.get(
      'https://www.themealdb.com/api/json/v1/1/categories.php',
    );

    return CategoriesResponseModel.fromJson(response.data);
  }

  @override
  Future<MealsResponseModel> getMealsByCategory(String categoryName) async {
    final response = await _dio.get(
      'https://www.themealdb.com/api/json/v1/1/filter.php',
      queryParameters: {'c': categoryName},
    );

    return MealsResponseModel.fromJson(response.data);
  }

  @override
  Future<MealsResponseModel> getMealInfoById(String mealId) async {
    final response = await _dio.get(
      'https://www.themealdb.com/api/json/v1/1/lookup.php',
      queryParameters: {'i': mealId},
    );

    return MealsResponseModel.fromJson(response.data);
  }
}
