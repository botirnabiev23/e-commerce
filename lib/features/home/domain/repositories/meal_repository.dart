import 'package:dartz/dartz.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/home/domain/entities/category_entity.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

abstract interface class MealRepository {
  Future<Either<Failure, CategoriesResponseEntity>> getMealCategories();

  Future<Either<Failure, MealsResponseEntity>> getMealsByCategory(
    String categoryName,
  );

  Future<Either<Failure, MealsResponseEntity>> getMealInfoById(String mealId);
}
