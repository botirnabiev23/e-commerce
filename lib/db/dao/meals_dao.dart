import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

abstract interface class MealsDao {
  Stream<List<BasketProduct>> watchAllMeals();

  Future<void> addMeal(MealEntity meal);

  Future<void> decrementOrDeleteMeal(String id);

  Future<void> deleteMeal(String id);

  Future<void> clearAllMeals();
}
