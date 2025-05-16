import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/common_failures.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/basket/data/data_sources/local/basket_local_data_source.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

@LazySingleton(as: BasketRepository)
class BasketRepositoryImpl implements BasketRepository {
  final BasketLocalDataSource _localDataSource;

  BasketRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, void>> saveMeal(MealEntity meal) async {
    try {
      await _localDataSource.saveMeal(meal);
      return const Right(null);
    } catch (_) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteMeal(String id) async {
    try {
      await _localDataSource.deleteMeal(id);
      return const Right(null);
    } catch (_) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> decrementMeal(String id) async {
    try {
      await _localDataSource.decrementOrDeleteMeal(id);
      return const Right(null);
    } catch (_) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> clearMeals() async {
    try {
      await _localDataSource.clearMeals();
      return const Right(null);
    } catch (_) {
      return Left(CacheFailure());
    }
  }

  @override
  Stream<List<BasketProduct>> watchAllMeals() {
    return _localDataSource.watchAllMeals();
  }
}
