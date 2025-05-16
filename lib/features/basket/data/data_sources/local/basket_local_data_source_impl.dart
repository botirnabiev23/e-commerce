import 'package:injectable/injectable.dart';
import 'package:market_place/db/dao/meals_dao.dart';
import 'package:market_place/features/basket/data/data_sources/local/basket_local_data_source.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

@LazySingleton(as: BasketLocalDataSource)
class BasketLocalDataSourceImpl implements BasketLocalDataSource {
  final MealsDao _dao;

  const BasketLocalDataSourceImpl(this._dao);

  @override
  Future<void> saveMeal(MealEntity meal) => _dao.addMeal(meal);

  @override
  Future<void> deleteMeal(String id) => _dao.deleteMeal(id);

  @override
  Future<void> decrementOrDeleteMeal(String id) =>
      _dao.decrementOrDeleteMeal(id);

  @override
  Future<void> clearMeals() => _dao.clearAllMeals();

  @override
  Stream<List<BasketProduct>> watchAllMeals() => _dao.watchAllMeals();
}
