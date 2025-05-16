import 'package:market_place/db/app_database.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

extension MealsEntityToMealsCompanionExtension on List<MealEntity> {
  List<MealsCompanion> get toMealsCompanionList {
    return map((item) => item.toSqlModel.toCompanion(false)).toList();
  }
}

extension MealEntityToMealSqlModelExtension on MealEntity {
  MealSqlModel get toSqlModel {
    return MealSqlModel(
      id: id,
      name: name,
      thumbnail: thumbnail,
      instructions: instructions,
      category: category,
      area: area,
      tags: tags,
      youtube: youtube,
      price: price.toDouble(),
      count: 1,
    );
  }
}

extension MealSqlModelToMealEntityExtension on MealSqlModel {
  MealEntity get fromSqlModel {
    return MealEntity(
      id: id,
      name: name,
      thumbnail: thumbnail,
      instructions: instructions,
      category: category,
      area: area,
      tags: tags,
      youtube: youtube,
      price: price.toInt(),
    );
  }
}
