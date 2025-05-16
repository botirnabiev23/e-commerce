import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/home/domain/repositories/meal_repository.dart';

@injectable
final class GetMealsByCategoryUseCase
    implements UseCase<MealsResponseEntity, GetMealsByCategoryParams> {
  const GetMealsByCategoryUseCase(this._repository);

  final MealRepository _repository;

  @override
  Future<Either<Failure, MealsResponseEntity>> call(
    GetMealsByCategoryParams params,
  ) => _repository.getMealsByCategory(params.category);
}

final class GetMealsByCategoryParams {
  final String category;

  const GetMealsByCategoryParams({required this.category});
}
