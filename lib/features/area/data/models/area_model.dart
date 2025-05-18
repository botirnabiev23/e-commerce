import 'package:market_place/features/area/domain/entities/area_entity.dart';
import 'package:market_place/features/home/data/models/response/meal_response_model.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

class AreaModel extends AreaEntity {
  AreaModel({
    required super.name,
    required super.meals,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
      name: json['strArea'],
      meals: (json['meals'] as List<dynamic>?)
              ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
              .cast<MealEntity>()
              .toList() ??
          [],
    );
  }
}
