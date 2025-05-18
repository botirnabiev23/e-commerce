import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/features/area/data/models/area_model.dart';
import 'package:market_place/features/home/data/models/response/meal_response_model.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

@lazySingleton
class RemoteAreaDataSource {
  final Dio dio;

  RemoteAreaDataSource(this.dio);

  Future<List<AreaModel>> getAreas() async {
    final response = await dio
        .get('https://www.themealdb.com/api/json/v1/1/list.php?a=list');
    final List<dynamic> list = response.data['meals'];
    return list.map((json) => AreaModel.fromJson(json)).toList();
  }

  Future<List<MealEntity>> getMealsByArea(String area) async {
    final response = await dio.get(
      'https://www.themealdb.com/api/json/v1/1/filter.php?a=$area',
    );
    final data = response.data;
    if (data == null || data['meals'] == null) {
      throw Exception('No meals found for area: $area');
    }
    final List<dynamic> list = data['meals'];
    return list.map((json) => MealModel.fromJson(json) as MealEntity).toList();
  }
}
