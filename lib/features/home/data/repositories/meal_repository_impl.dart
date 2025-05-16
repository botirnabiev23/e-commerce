import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/common_failures.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/home/data/data_sources/remote/meal_remote_data_source.dart';
import 'package:market_place/features/home/domain/entities/category_entity.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/home/domain/repositories/meal_repository.dart';

@LazySingleton(as: MealRepository)
class MealRepositoryImpl implements MealRepository {
  final MealRemoteDataSource _remoteDataSource;

  MealRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<Failure, CategoriesResponseEntity>> getMealCategories() async {
    try {
      final model = await _remoteDataSource.getMealCategories();
      return right(model.toEntity());
    } catch (_) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, MealsResponseEntity>> getMealsByCategory(
    String categoryName,
  ) async {
    try {
      final model = await _remoteDataSource.getMealsByCategory(categoryName);
      return right(model.toEntity());
    } catch (_) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, MealsResponseEntity>> getMealInfoById(
    String mealId,
  ) async {
    try {
      final model = await _remoteDataSource.getMealInfoById(mealId);
      return right(model.toEntity());
    } catch (_) {
      return left(ServerFailure());
    }
  }
}
