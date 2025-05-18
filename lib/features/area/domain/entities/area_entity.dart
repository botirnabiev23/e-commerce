import 'package:market_place/features/home/domain/entities/meal_entity.dart';

class AreaEntity {
  final String name;
  final List<MealEntity> meals;

  AreaEntity({
    required this.name,
    required this.meals,
  });
}