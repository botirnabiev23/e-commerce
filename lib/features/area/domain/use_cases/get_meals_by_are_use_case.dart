import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/area/domain/repositories/area_repository.dart';

@injectable
final class GetMealsByAreaUseCase
    implements UseCase<List<MealEntity>, GetMealsByAreaParams> {
  const GetMealsByAreaUseCase(this._repository);

  final AreaRepository _repository;

  @override
  Future<Either<Failure, List<MealEntity>>> call(
      GetMealsByAreaParams params,
      ) {
    return _repository.getMealsByArea(params.area);
  }
}

final class GetMealsByAreaParams {
  final String area;

  const GetMealsByAreaParams({required this.area});
}
