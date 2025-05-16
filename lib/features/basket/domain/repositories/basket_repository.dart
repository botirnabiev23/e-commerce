import 'package:dartz/dartz.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

abstract interface class BasketRepository {
  Future<Either<Failure, void>> saveMeal(MealEntity meal);

  Future<Either<Failure, void>> deleteMeal(String id);

  Future<Either<Failure, void>> decrementMeal(String id);

  Future<Either<Failure, void>> clearMeals();

  Stream<List<BasketProduct>> watchAllMeals();
}
