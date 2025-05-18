import 'package:dartz/dartz.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/features/area/domain/entities/area_entity.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

abstract class AreaRepository {
  Future<Either<Failure, List<AreaEntity>>> getAreas();
  Future<Either<Failure, List<MealEntity>>> getMealsByArea(String area);
}