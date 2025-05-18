import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/common_failures.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/area/data/data_sources/remote_area_datasource.dart';
import 'package:market_place/features/area/domain/entities/area_entity.dart';
import 'package:market_place/features/area/domain/repositories/area_repository.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

@LazySingleton(as: AreaRepository)
class AreaRepositoryImpl implements AreaRepository {
  final RemoteAreaDataSource remote;

  AreaRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<AreaEntity>>> getAreas() async {
    try {
      final areas = await remote.getAreas();
      return Right(areas);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<MealEntity>>> getMealsByArea(String area) async {
    try {
      final meals = await remote.getMealsByArea(area);
      return Right(meals);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

}
