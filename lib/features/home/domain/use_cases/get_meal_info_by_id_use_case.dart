import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/home/domain/repositories/meal_repository.dart';

@injectable
final class GetMealInfoByIdUseCase
    implements UseCase<MealsResponseEntity, GetMealInfoByIdParams> {
  const GetMealInfoByIdUseCase(this._repository);

  final MealRepository _repository;

  @override
  Future<Either<Failure, MealsResponseEntity>> call(
    GetMealInfoByIdParams params,
  ) {
    return _repository.getMealInfoById(params.id);
  }
}

final class GetMealInfoByIdParams {
  final String id;

  const GetMealInfoByIdParams({required this.id});
}
