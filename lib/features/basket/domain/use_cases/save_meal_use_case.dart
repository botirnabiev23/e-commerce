import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';


@injectable
final class SaveMealUseCase implements UseCase<void, SaveMealParams> {
  const SaveMealUseCase(this._repository);

  final BasketRepository _repository;

  @override
  Future<Either<Failure, void>> call(SaveMealParams params) {
    return _repository.saveMeal(params.meal);
  }
}

final class SaveMealParams {
  final MealEntity meal;

  const SaveMealParams({required this.meal});
}
