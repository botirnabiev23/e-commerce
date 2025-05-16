import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/db/app_database.dart';
import 'package:market_place/db/dao/meals_dao.dart';
import 'package:market_place/db/extensions/product_extension.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

part 'meals_dao_impl.g.dart';

@Singleton(
  as: MealsDao,
)
@DriftAccessor(
  tables: [Meals],
)
class MealsDaoImpl extends DatabaseAccessor<AppDatabase>
    with _$MealsDaoImplMixin
    implements MealsDao {
  MealsDaoImpl(super.db);

  @override
  Stream<List<BasketProduct>> watchAllMeals() => select(meals).watch().map(
        (rows) => rows
            .map(
              (e) => BasketProduct(
                meal: e.fromSqlModel,
                count: e.count,
              ),
            )
            .toList(),
      );

  @override
  Future<void> addMeal(MealEntity meal) async {
    final existing = await (select(meals)
          ..where((tbl) => tbl.id.equals(meal.id)))
        .getSingleOrNull();

    if (existing == null) {
      await into(meals).insert(meal.toSqlModel.toCompanion(false));
    } else {
      await (update(meals)..where((tbl) => tbl.id.equals(meal.id))).write(
        MealsCompanion(count: Value(existing.count + 1)),
      );
    }
  }

  @override
  Future<void> decrementOrDeleteMeal(String id) async {
    final existing = await (select(meals)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();

    if (existing != null) {
      if (existing.count > 1) {
        await (update(meals)..where((tbl) => tbl.id.equals(id))).write(
          MealsCompanion(count: Value(existing.count - 1)),
        );
      } else {
        await deleteMeal(id);
      }
    }
  }

  @override
  Future<void> deleteMeal(String id) async {
    await (delete(meals)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<void> clearAllMeals() async {
    await delete(meals).go();
  }
}
