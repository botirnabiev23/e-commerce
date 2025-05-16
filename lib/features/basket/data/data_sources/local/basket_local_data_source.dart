import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

abstract interface class BasketLocalDataSource {
  Future<void> saveMeal(MealEntity meal);

  Future<void> deleteMeal(String id);

  Future<void> decrementOrDeleteMeal(String id);

  Future<void> clearMeals();

  Stream<List<BasketProduct>> watchAllMeals();
}
